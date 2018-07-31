/*******************************************************************************
 * 
 * MAX32620FTHR_LoRa_Chirp_ttn 
 *
 * 
 * Copyright (c) 2015 Thomas Telkamp and Matthijs Kooijman
 *
 * Permission is hereby granted, free of charge, to anyone
 * obtaining a copy of this document and accompanying files,
 * to do whatever they want with them without any restriction,
 * including, but not limited to, copying, modification and redistribution.
 * NO WARRANTY OF ANY KIND IS PROVIDED.
 *
 *
 * Note: LoRaWAN per sub-band duty-cycle limitation is enforced (1% in g1,
 *  0.1% in g2).
 *
 *
 * Do not forget to define the radio type correctly in config.h.
 *
 *******************************************************************************/

/*  
 *  MAX32620FTHR with  LMiC
 */ 

// do this in lmic/src/lmic/config.h file
//#define CFG_us915 1

#include <lmic.h>
#include <hal/hal.h>
#include <SPI.h>
#include <Wire.h>

#include <MAX77650-Arduino-Library.h>     // pmic library
#include <MAX17055.h>                     // my version of the fuel gauge library changed to use 0.05 Rsense instead of 0.01
#include "Adafruit_HTU21DF.h"             // i2c temperature humidity sensor

//Definitions
#define MAX77650_debug true
#define MAX77650_PHLD P2_2   //Pin 18 -> connected to MAX77650 power hold input pin (A1)
#define MAX77650_IRQpin P2_3 //Pin 19 -> connected to MAX77650 IRQ output pin (C2)

// instantiate objects
MAX17055 sensor;
Adafruit_HTU21DF htu = Adafruit_HTU21DF();

/* registered with web console    https://console.thethingsnetwork.org/applications

From the console:
Device EUI:  0123456789ABCDEF
App EUI:  0123456789ABCDEF
Device address:  01234567          
Network session key:  00112233445566778899AABBCCDDEEFF
Application session key:  FFEEDDCCBBAA99887766554433221100

 LoRaWAN NwkSKey, network session key
    UPDATE WITH YOUR TTN KEY!!
 */ 
static const PROGMEM u1_t NWKSKEY[16] = { 0x00, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88, 0x99, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF };

// LoRaWAN AppSKey, application session key  -- UPDATE WITH YOUR TTN KEY!!
static const u1_t PROGMEM APPSKEY[16] = { 0xFF, 0xEE, 0xDD, 0xCC, 0xBB, 0xAA, 0x99, 0x88, 0x77, 0x66, 0x55, 0x44, 0x33, 0x22, 0x11, 0x00 };

// LoRaWAN end-device address (DevAddr)   -- UPDATE WITH YOUR TTN DEVICE ADDRESS!! 
static const u4_t DEVADDR = 0x01234567 ; 

// These callbacks are only used in over-the-air activation, so they are
// left empty here (we cannot leave them out completely unless
// DISABLE_JOIN is set in config.h, otherwise the linker will complain).
void os_getArtEui (u1_t* buf) { }
void os_getDevEui (u1_t* buf) { }
void os_getDevKey (u1_t* buf) { }

char mydata[8];
static osjob_t sendjob;
unsigned long lastMilli = 0;


// Schedule TX every this many seconds (might become longer due to duty
// cycle limitations).
// For the latest 7 byte sensor data pack and the airtime calc spreadsheet, we are only using 1/2 the 30 second allotment
// so this could actually be reduced to 20 or 15 minutes and still fit
const unsigned TX_INTERVAL =  1800;  // 30 minute

// Pin mapping MAX32620FTHR  - see ~/.arduino15/packages/Maxim/hardware/arm/1.1.1/variants/max32620_fthr/variant.cpp
const lmic_pinmap lmic_pins = {    // original lmic lib
    .nss = 43,
    .rxtx = LMIC_UNUSED_PIN,
    .rst = 32,
    .dio = {26, 27, LMIC_UNUSED_PIN}    // like at http://forum.thethingsnetwork.org/t/node-with-esp8266-and-rfm95w/1002/45
                                    // pin 6 is needed for transmit complete signal back to lmic
};

// for Chirp i2c
void writeI2CRegister8bit(int addr, int value) {
  Wire.beginTransmission(addr);
  Wire.write(value);
  Wire.endTransmission();
}

unsigned int readI2CRegister16bit(int addr, int reg) {
  Wire.beginTransmission(addr);
  Wire.write(reg);
  Wire.endTransmission();
  delay(20);
  Wire.requestFrom(addr, 2);
  unsigned int t = Wire.read() << 8;
  t = t | Wire.read();
  return t;
}

void onEvent (ev_t ev) {
    Serial.print(os_getTime());
    Serial.print(": ");
    switch(ev) {
        case EV_TXCOMPLETE:
            Serial.println(F("EV_TXCOMPLETE (includes waiting for RX windows)"));
            if(LMIC.dataLen) {
                // data received in rx slot after tx
                Serial.print(F("Data Received: "));
                Serial.write(LMIC.frame+LMIC.dataBeg, LMIC.dataLen);
                Serial.println();
            }
            // Schedule next transmission
            os_setTimedCallback(&sendjob, os_getTime()+sec2osticks(TX_INTERVAL), do_send);
            break;
        case EV_RESET:
            Serial.println(F("EV_RESET"));
            break;
         default:
            Serial.println(F("Unknown event"));
            break;
    }
}

void do_send(osjob_t* j){
    // Check if there is not a current TX/RX job running
    if (LMIC.opmode & OP_TXRXPEND) {
        Serial.println(F("OP_TXRXPEND, not sending"));
    } else {
        // Prepare upstream data transmission at the next possible time.
        uint16_t val = readI2CRegister16bit(0x20, 0);  // readings range from 242 dry to 495 wet
        memcpy(mydata,&val,sizeof(val));        // put Chirp! 1 in bytes 0,1
        val = readI2CRegister16bit(0x21, 0);  // read 2nd Chirp!
        memcpy(mydata+2,&val,sizeof(val));     // put it in bytes 2,3
        uint8_t soc = (uint8_t)(sensor.getSOC()+0.5);  // get 1 byte of state of charge percent, add 1/2 to get rounded out of truncate in cast float to int
        memcpy(mydata+4,&soc,sizeof(soc));      // put it in byte 4
        uint8_t temp = (uint8_t)(htu.readTemperature()+0.5);   // get 1 byte of temperature, rounded
        memcpy(mydata+5,&temp,sizeof(temp));          // put it in byte 5
        uint8_t hum = (uint8_t)(htu.readHumidity()+0.5);   // get 1 byte of humidity, rounded
        memcpy(mydata+6,&hum,sizeof(hum));             // put it in byte 6
        LMIC_setTxData2(1, (uint8_t*)mydata, 7, 0);  //  write 7 bytes over LoRaWAN
        Serial.println(F("Packet queued"));
    }
    // Next TX is scheduled after TX_COMPLETE event.
}

void setup() {
    //Configure the Power-Management (Power-Hold)
    pinMode(MAX77650_PHLD, OUTPUT);          //configure pin as output
    digitalWrite(MAX77650_PHLD, HIGH);       //set output to HIGH to hold the power-on state

    Serial.begin(115200);
    MAX77650_init();      // sets i2c port to the pmic
    MAX77650_setCHG_CC(0x3f);  // set 300mA CHG_CC - also need CHG_CV and CHG_EN set - p.26 of 77650 pgm guide
    MAX77650_setCHG_CV(0x14);  // set 4.1V CHG_CV - p29 of 77650 pgm guide
    MAX77650_setCHG_EN(true);  // enable charging

    sensor.setCapacity(1800);   // sensor reports capacity 1800mAH OK
    
    // Wire.begin();     // included in HTU library
    htu.begin();
    // init Chirp! Altho this actually does nothing
    writeI2CRegister8bit(0x20, 6); //  reset


    // LMIC init
    os_init();
    // Reset the MAC state. Session and pending data transfers will be discarded.
    LMIC_reset();

    // Set static session parameters. Instead of dynamically establishing a session
    // by joining the network, precomputed session parameters are be provided.
    #ifdef PROGMEM
    // On AVR, these values are stored in flash and only copied to RAM
    // once. Copy them to a temporary buffer here, LMIC_setSession will
    // copy them into a buffer of its own again.
    uint8_t appskey[sizeof(APPSKEY)];
    uint8_t nwkskey[sizeof(NWKSKEY)];
    memcpy_P(appskey, APPSKEY, sizeof(APPSKEY));
    memcpy_P(nwkskey, NWKSKEY, sizeof(NWKSKEY));
    LMIC_setSession (0x1, DEVADDR, nwkskey, appskey);
    #else
    // If not running an AVR with PROGMEM, just use the arrays directly 
    LMIC_setSession (0x1, DEVADDR, NWKSKEY, APPSKEY);
    #endif


    // Disable link check validation
    LMIC_setLinkCheckMode(0);

    // Set data rate and transmit power (note: txpow seems to be ignored by the library)
    LMIC_setDrTxpow(DR_SF10,14);

    // disable ALL channels except the one used by the single channel gateway, chnl 51, 912.5
    // This works now that I discovered you put #define CFG_us915 in lmic/config/h  and not here
    for (u1_t chl=0; chl<64; chl++) {
      if (chl != 57) {      // this was chl 51 for the Hologram usb cell module contest, changed back to 57 for the esp8266 ttn gw
        LMIC_disableChannel(chl);
      }
    }

 
    // Start job
    do_send(&sendjob);
}

void loop() {
    os_runloop_once();
     // only use for debugging
     /*    
     if ( millis() > (lastMilli + 5000)) {
      // Serial.println(MAX77650_getCHG_CC(),HEX);    // verify max CHG_CC
      float capacity = sensor.getCapacity();
      Serial.print("Capacity of plugged in battery is: ");
      Serial.print(capacity, 4);
      Serial.println(" mAH");
      float SOC = sensor.getSOC();
      Serial.print("State of Charge value is: %");
      Serial.println(SOC, 4);
      float voltage = sensor.getInstantaneousVoltage();
      Serial.print("Instantaneous Voltage is: ");
      Serial.print(voltage, 4);
      Serial.println(" V");
      float current = sensor.getInstantaneousCurrent();
      Serial.print("Instantaneous Current is: ");
      Serial.print(current, 4);
      Serial.println(" mA");
      Serial.println();
      Serial.print("Temp: "); Serial.print(htu.readTemperature());
      Serial.print("\t\tHum: "); Serial.println(htu.readHumidity());
      lastMilli = millis();
    }
    */
}


  
