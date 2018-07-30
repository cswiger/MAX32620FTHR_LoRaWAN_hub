# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
# 1 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/inttypes.h" 1 3
# 37 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/inttypes.h" 3
# 1 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/lib/gcc/avr/4.9.2/include/stdint.h" 1 3 4
# 9 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/lib/gcc/avr/4.9.2/include/stdint.h" 3 4
# 1 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/stdint.h" 1 3 4
# 121 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/stdint.h" 3 4
typedef signed int int8_t __attribute__((__mode__(__QI__)));
typedef unsigned int uint8_t __attribute__((__mode__(__QI__)));
typedef signed int int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int uint16_t __attribute__ ((__mode__ (__HI__)));
typedef signed int int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int uint32_t __attribute__ ((__mode__ (__SI__)));

typedef signed int int64_t __attribute__((__mode__(__DI__)));
typedef unsigned int uint64_t __attribute__((__mode__(__DI__)));
# 142 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/stdint.h" 3 4
typedef int16_t intptr_t;




typedef uint16_t uintptr_t;
# 159 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/stdint.h" 3 4
typedef int8_t int_least8_t;




typedef uint8_t uint_least8_t;




typedef int16_t int_least16_t;




typedef uint16_t uint_least16_t;




typedef int32_t int_least32_t;




typedef uint32_t uint_least32_t;







typedef int64_t int_least64_t;






typedef uint64_t uint_least64_t;
# 213 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/stdint.h" 3 4
typedef int8_t int_fast8_t;




typedef uint8_t uint_fast8_t;




typedef int16_t int_fast16_t;




typedef uint16_t uint_fast16_t;




typedef int32_t int_fast32_t;




typedef uint32_t uint_fast32_t;







typedef int64_t int_fast64_t;






typedef uint64_t uint_fast64_t;
# 273 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/stdint.h" 3 4
typedef int64_t intmax_t;




typedef uint64_t uintmax_t;
# 10 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/lib/gcc/avr/4.9.2/include/stdint.h" 2 3 4
# 38 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/inttypes.h" 2 3
# 77 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/inttypes.h" 3
typedef int32_t int_farptr_t;



typedef uint32_t uint_farptr_t;
# 2 "main.c" 2
# 1 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/avr/io.h" 1 3
# 99 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/avr/io.h" 3
# 1 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/avr/sfr_defs.h" 1 3
# 100 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/avr/io.h" 2 3
# 434 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/avr/io.h" 3
# 1 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/avr/iotn44.h" 1 3
# 38 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/avr/iotn44.h" 3
# 1 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/avr/iotnx4.h" 1 3
# 39 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/avr/iotn44.h" 2 3
# 435 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/avr/io.h" 2 3
# 627 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/avr/io.h" 3
# 1 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/avr/portpins.h" 1 3
# 628 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/avr/io.h" 2 3

# 1 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/avr/common.h" 1 3
# 630 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/avr/io.h" 2 3

# 1 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/avr/version.h" 1 3
# 632 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/avr/io.h" 2 3






# 1 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/avr/fuse.h" 1 3
# 239 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/avr/fuse.h" 3
typedef struct
{
    unsigned char low;
    unsigned char high;
    unsigned char extended;
} __fuse_t;
# 639 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/avr/io.h" 2 3


# 1 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/avr/lock.h" 1 3
# 642 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/avr/io.h" 2 3
# 3 "main.c" 2
# 1 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/util/delay.h" 1 3
# 43 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/util/delay.h" 3
# 1 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/util/delay_basic.h" 1 3
# 40 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/util/delay_basic.h" 3
static inline void _delay_loop_1(uint8_t __count) __attribute__((always_inline));
static inline void _delay_loop_2(uint16_t __count) __attribute__((always_inline));
# 80 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/util/delay_basic.h" 3
void
_delay_loop_1(uint8_t __count)
{
 __asm__ volatile (
  "1: dec %0" "\n\t"
  "brne 1b"
  : "=r" (__count)
  : "0" (__count)
 );
}
# 102 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/util/delay_basic.h" 3
void
_delay_loop_2(uint16_t __count)
{
 __asm__ volatile (
  "1: sbiw %0,1" "\n\t"
  "brne 1b"
  : "=w" (__count)
  : "0" (__count)
 );
}
# 44 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/util/delay.h" 2 3
# 1 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/math.h" 1 3
# 127 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/math.h" 3
extern double cos(double __x) __attribute__((__const__));





extern double sin(double __x) __attribute__((__const__));





extern double tan(double __x) __attribute__((__const__));






extern double fabs(double __x) __attribute__((__const__));






extern double fmod(double __x, double __y) __attribute__((__const__));
# 168 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/math.h" 3
extern double modf(double __x, double *__iptr);



extern float modff (float __x, float *__iptr);




extern double sqrt(double __x) __attribute__((__const__));
extern float sqrtf (float) __attribute__((__const__));




extern double cbrt(double __x) __attribute__((__const__));
# 194 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/math.h" 3
extern double hypot (double __x, double __y) __attribute__((__const__));







extern double square(double __x) __attribute__((__const__));






extern double floor(double __x) __attribute__((__const__));






extern double ceil(double __x) __attribute__((__const__));
# 234 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/math.h" 3
extern double frexp(double __x, int *__pexp);







extern double ldexp(double __x, int __exp) __attribute__((__const__));





extern double exp(double __x) __attribute__((__const__));





extern double cosh(double __x) __attribute__((__const__));





extern double sinh(double __x) __attribute__((__const__));





extern double tanh(double __x) __attribute__((__const__));







extern double acos(double __x) __attribute__((__const__));







extern double asin(double __x) __attribute__((__const__));






extern double atan(double __x) __attribute__((__const__));
# 298 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/math.h" 3
extern double atan2(double __y, double __x) __attribute__((__const__));





extern double log(double __x) __attribute__((__const__));





extern double log10(double __x) __attribute__((__const__));





extern double pow(double __x, double __y) __attribute__((__const__));






extern int isnan(double __x) __attribute__((__const__));
# 333 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/math.h" 3
extern int isinf(double __x) __attribute__((__const__));






__attribute__((__const__)) static inline int isfinite (double __x)
{
    unsigned char __exp;
    __asm__ (
 "mov	%0, %C1		\n\t"
 "lsl	%0		\n\t"
 "mov	%0, %D1		\n\t"
 "rol	%0		"
 : "=r" (__exp)
 : "r" (__x) );
    return __exp != 0xff;
}






__attribute__((__const__)) static inline double copysign (double __x, double __y)
{
    __asm__ (
 "bst	%D2, 7	\n\t"
 "bld	%D0, 7	"
 : "=r" (__x)
 : "0" (__x), "r" (__y) );
    return __x;
}
# 376 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/math.h" 3
extern int signbit (double __x) __attribute__((__const__));






extern double fdim (double __x, double __y) __attribute__((__const__));
# 392 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/math.h" 3
extern double fma (double __x, double __y, double __z) __attribute__((__const__));







extern double fmax (double __x, double __y) __attribute__((__const__));







extern double fmin (double __x, double __y) __attribute__((__const__));






extern double trunc (double __x) __attribute__((__const__));
# 426 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/math.h" 3
extern double round (double __x) __attribute__((__const__));
# 439 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/math.h" 3
extern long lround (double __x) __attribute__((__const__));
# 453 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/math.h" 3
extern long lrint (double __x) __attribute__((__const__));
# 45 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/util/delay.h" 2 3
# 84 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/util/delay.h" 3
static inline void _delay_us(double __us) __attribute__((always_inline));
static inline void _delay_ms(double __ms) __attribute__((always_inline));
# 141 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/util/delay.h" 3
void
_delay_ms(double __ms)
{
 double __tmp ;



 uint32_t __ticks_dc;
 extern void __builtin_avr_delay_cycles(unsigned long);
 __tmp = ((1000000) / 1e3) * __ms;
# 160 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/util/delay.h" 3
  __ticks_dc = (uint32_t)(ceil(fabs(__tmp)));


 __builtin_avr_delay_cycles(__ticks_dc);
# 186 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/util/delay.h" 3
}
# 223 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/util/delay.h" 3
void
_delay_us(double __us)
{
 double __tmp ;



 uint32_t __ticks_dc;
 extern void __builtin_avr_delay_cycles(unsigned long);
 __tmp = ((1000000) / 1e6) * __us;
# 242 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/util/delay.h" 3
  __ticks_dc = (uint32_t)(ceil(fabs(__tmp)));


 __builtin_avr_delay_cycles(__ticks_dc);
# 268 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/util/delay.h" 3
}
# 4 "main.c" 2
# 1 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/avr/interrupt.h" 1 3
# 5 "main.c" 2
# 1 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/avr/wdt.h" 1 3
# 447 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/avr/wdt.h" 3
static __inline__
__attribute__ ((__always_inline__))
void wdt_enable (const uint8_t value)
{
 if ((((uint16_t) &((*(volatile uint8_t *)((0x21) + 0x20)))) < 0x40 + 0x20))
 {
  __asm__ __volatile__ (
    "in __tmp_reg__,__SREG__" "\n\t"
    "cli" "\n\t"
    "wdr" "\n\t"
    "out %0, %1" "\n\t"
    "out __SREG__,__tmp_reg__" "\n\t"
    "out %0, %2" "\n \t"
    :
    : "I" ((((uint16_t) &((*(volatile uint8_t *)((0x21) + 0x20)))) - 0x20)),
    "r" ((uint8_t)((1 << (4)) | (1 << (3)))),
    "r" ((uint8_t) ((value & 0x08 ? (1 << (5)) : 0x00) |
      (1 << (3)) | (value & 0x07)) )
    : "r0"
  );
 }
 else
 {
  __asm__ __volatile__ (
    "in __tmp_reg__,__SREG__" "\n\t"
    "cli" "\n\t"
    "wdr" "\n\t"
    "sts %0, %1" "\n\t"
    "out __SREG__,__tmp_reg__" "\n\t"
    "sts %0, %2" "\n \t"
    :
    : "n" (((uint16_t) &((*(volatile uint8_t *)((0x21) + 0x20))))),
    "r" ((uint8_t)((1 << (4)) | (1 << (3)))),
    "r" ((uint8_t) ((value & 0x08 ? (1 << (5)) : 0x00) |
      (1 << (3)) | (value & 0x07)) )
    : "r0"
  );
 }
}

static __inline__
__attribute__ ((__always_inline__))
void wdt_disable (void)
{
 if ((((uint16_t) &((*(volatile uint8_t *)((0x21) + 0x20)))) < 0x40 + 0x20))
 {
        uint8_t register temp_reg;
  __asm__ __volatile__ (
    "in __tmp_reg__,__SREG__" "\n\t"
    "cli" "\n\t"
    "wdr" "\n\t"
    "in  %[TEMPREG],%[WDTREG]" "\n\t"
    "ori %[TEMPREG],%[WDCE_WDE]" "\n\t"
    "out %[WDTREG],%[TEMPREG]" "\n\t"
    "out %[WDTREG],__zero_reg__" "\n\t"
    "out __SREG__,__tmp_reg__" "\n\t"
    : [TEMPREG] "=d" (temp_reg)
    : [WDTREG] "I" ((((uint16_t) &((*(volatile uint8_t *)((0x21) + 0x20)))) - 0x20)),
    [WDCE_WDE] "n" ((uint8_t)((1 << (4)) | (1 << (3))))
    : "r0"
  );
 }
 else
 {
        uint8_t register temp_reg;
  __asm__ __volatile__ (
    "in __tmp_reg__,__SREG__" "\n\t"
    "cli" "\n\t"
    "wdr" "\n\t"
    "lds %[TEMPREG],%[WDTREG]" "\n\t"
    "ori %[TEMPREG],%[WDCE_WDE]" "\n\t"
    "sts %[WDTREG],%[TEMPREG]" "\n\t"
    "sts %[WDTREG],__zero_reg__" "\n\t"
    "out __SREG__,__tmp_reg__" "\n\t"
    : [TEMPREG] "=d" (temp_reg)
    : [WDTREG] "n" (((uint16_t) &((*(volatile uint8_t *)((0x21) + 0x20))))),
    [WDCE_WDE] "n" ((uint8_t)((1 << (4)) | (1 << (3))))
    : "r0"
  );
 }
}
# 6 "main.c" 2
# 1 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/avr/sleep.h" 1 3
# 7 "main.c" 2
# 1 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/avr/eeprom.h" 1 3
# 50 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/avr/eeprom.h" 3
# 1 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/lib/gcc/avr/4.9.2/include/stddef.h" 1 3 4
# 147 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/lib/gcc/avr/4.9.2/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 212 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/lib/gcc/avr/4.9.2/include/stddef.h" 3 4
typedef unsigned int size_t;
# 324 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/lib/gcc/avr/4.9.2/include/stddef.h" 3 4
typedef int wchar_t;
# 51 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/avr/eeprom.h" 2 3
# 137 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/avr/include/avr/eeprom.h" 3
uint8_t eeprom_read_byte (const uint8_t *__p) __attribute__((__pure__));




uint16_t eeprom_read_word (const uint16_t *__p) __attribute__((__pure__));




uint32_t eeprom_read_dword (const uint32_t *__p) __attribute__((__pure__));




float eeprom_read_float (const float *__p) __attribute__((__pure__));





void eeprom_read_block (void *__dst, const void *__src, size_t __n);





void eeprom_write_byte (uint8_t *__p, uint8_t __value);




void eeprom_write_word (uint16_t *__p, uint16_t __value);




void eeprom_write_dword (uint32_t *__p, uint32_t __value);




void eeprom_write_float (float *__p, float __value);





void eeprom_write_block (const void *__src, void *__dst, size_t __n);





void eeprom_update_byte (uint8_t *__p, uint8_t __value);




void eeprom_update_word (uint16_t *__p, uint16_t __value);




void eeprom_update_dword (uint32_t *__p, uint32_t __value);




void eeprom_update_float (float *__p, float __value);





void eeprom_update_block (const void *__src, void *__dst, size_t __n);
# 8 "main.c" 2
# 1 "usiTwiSlave.h" 1
# 46 "usiTwiSlave.h"
# 1 "/home/chuck/Downloads/avr8-gnu-toolchain-linux_x86/lib/gcc/avr/4.9.2/include/stdbool.h" 1 3 4
# 47 "usiTwiSlave.h" 2
# 56 "usiTwiSlave.h"
void usiTwiSlaveInit( uint8_t );
void usiTwiTransmitByte( uint8_t );
uint8_t usiTwiReceiveByte( void );
_Bool usiTwiDataInReceiveBuffer( void );
void usiTwiOnStart( void (*function) () );
void usiTwiOnStop( void (*function) () );
# 9 "main.c" 2
# 20 "main.c"
void inline initBuzzer() {
    (*(volatile uint8_t *)((0x30) + 0x20)) = 0;
    (*(volatile uint8_t *)((0x33) + 0x20)) = 0;

    (*(volatile uint8_t *)((0x30) + 0x20)) |= (1 << (5));
    (*(volatile uint8_t *)((0x30) + 0x20)) |= (1 << (0));
    (*(volatile uint8_t *)((0x33) + 0x20)) |= (1 << (0));
}

void inline beep() {
    initBuzzer();
    (*(volatile uint8_t *)((0x3C) + 0x20)) = 48;
    _delay_ms(42);
    (*(volatile uint8_t *)((0x33) + 0x20)) = 0;
    (*(volatile uint8_t *)((0x1B) + 0x20)) &= ~(1 << (7));
}

void inline ledOn() {
  (*(volatile uint8_t *)((0x17) + 0x20)) |= (1 << (1)) | (1 << (0));
  (*(volatile uint8_t *)((0x18) + 0x20)) &= ~(1 << (0));
  (*(volatile uint8_t *)((0x18) + 0x20)) |= (1 << (1));
}

void inline ledOff() {
  (*(volatile uint8_t *)((0x17) + 0x20)) &= ~((1 << (1)) | (1 << (0)));
  (*(volatile uint8_t *)((0x18) + 0x20)) &= ~((1 << (1)) | (1 << (0)));
}

void chirp(uint8_t times) {
    (*(volatile uint8_t *)((0x00) + 0x20)) &= ~(1 << (2));
    while (times-- > 0) {
        beep();
        _delay_ms(40);
    }
    (*(volatile uint8_t *)((0x00) + 0x20)) |= (1 << (2));
}



void inline setupGPIO() {
    (*(volatile uint8_t *)((0x1B) + 0x20)) |= (1 << (0));
    (*(volatile uint8_t *)((0x1B) + 0x20)) &= ~(1 << (0));
    (*(volatile uint8_t *)((0x1B) + 0x20)) |= (1 << (2));
    (*(volatile uint8_t *)((0x1B) + 0x20)) &= ~(1 << (2));
    (*(volatile uint8_t *)((0x1B) + 0x20)) |= (1 << (3));
    (*(volatile uint8_t *)((0x1B) + 0x20)) &= ~(1 << (3));
    (*(volatile uint8_t *)((0x1A) + 0x20)) |= (1 << (7));
    (*(volatile uint8_t *)((0x1B) + 0x20)) &= ~(1 << (7));

    (*(volatile uint8_t *)((0x17) + 0x20)) |= (1 << (0));
    (*(volatile uint8_t *)((0x18) + 0x20)) &= ~(1 << (0));
    (*(volatile uint8_t *)((0x17) + 0x20)) |= (1 << (1));
    (*(volatile uint8_t *)((0x18) + 0x20)) &= ~(1 << (1));
    (*(volatile uint8_t *)((0x17) + 0x20)) |= (1 << (2));
    (*(volatile uint8_t *)((0x18) + 0x20)) &= ~(1 << (2));
}

void inline setupPowerSaving() {
    (*(volatile uint8_t *)((0x01) + 0x20)) |= (1 << (1));
    (*(volatile uint8_t *)((0x00) + 0x20)) |= (1 << (3));
    (*(volatile uint8_t *)((0x00) + 0x20)) |= (1 << (2));
    (*(volatile uint8_t *)((0x06) + 0x20)) &=~ (1 << (7));
    (*(volatile uint8_t *)((0x00) + 0x20)) |= (1 << (0));
    (*(volatile uint8_t *)((0x00) + 0x20)) |= (1 << (1));
}



void inline initWatchdog() {
    (*(volatile uint8_t *)((0x21) + 0x20)) |= (1 << (4));
    (*(volatile uint8_t *)((0x21) + 0x20)) &= ~(1 << (3));
    (*(volatile uint8_t *)((0x21) + 0x20)) |= (1 << (6));
    (*(volatile uint8_t *)((0x21) + 0x20)) |= (1 << (1)) | (1 << (2));
}

void __vector_4 (void) __attribute__ ((signal,used, externally_visible)) ; void __vector_4 (void) {

}

void inline sleep() {
    do { (*(volatile uint8_t *)((0x35) + 0x20)) = (((*(volatile uint8_t *)((0x35) + 0x20)) & ~((1 << (3)) | (1 << (4)))) | ((0x02<<3))); } while(0);
    do { (*(volatile uint8_t *)((0x35) + 0x20)) |= (uint8_t)(1 << (5)); } while(0);
    (*(volatile uint8_t *)((0x35) + 0x20)) |= (1 << (7)) | (1 << (2));
    (*(volatile uint8_t *)((0x35) + 0x20)) &=~ (1 << (2));
    do { __asm__ __volatile__ ( "sleep" "\n\t" :: ); } while(0);
    do { (*(volatile uint8_t *)((0x35) + 0x20)) &= (uint8_t)(~(1 << (5))); } while(0);
}

void inline sleepWhileADC() {
    do { (*(volatile uint8_t *)((0x35) + 0x20)) = (((*(volatile uint8_t *)((0x35) + 0x20)) & ~((1 << (3)) | (1 << (4)))) | ((0x01<<3))); } while(0);
    do { do { (*(volatile uint8_t *)((0x35) + 0x20)) |= (uint8_t)(1 << (5)); } while(0); do { __asm__ __volatile__ ( "sleep" "\n\t" :: ); } while(0); do { (*(volatile uint8_t *)((0x35) + 0x20)) &= (uint8_t)(~(1 << (5))); } while(0); } while (0);
}

void __vector_13 (void) __attribute__ ((signal,used, externally_visible)) ; void __vector_13 (void) {

}



void startExcitationSignal() {
 (*(volatile uint8_t *)((0x36) + 0x20)) = 0;
 (*(volatile uint8_t *)((0x30) + 0x20)) = (1 << (6)) |
   (1 << (1));
 (*(volatile uint8_t *)((0x33) + 0x20)) = (1 << (0));
}

void stopExcitationSignal() {
 (*(volatile uint8_t *)((0x33) + 0x20)) = 0;
 (*(volatile uint8_t *)((0x30) + 0x20)) = 0;
}

uint16_t getADC1() {
    (*(volatile uint8_t *)((0x06) + 0x20)) |= (1 << (2));
    (*(volatile uint8_t *)((0x06) + 0x20)) |= (1 << (3));
    (*(volatile uint8_t *)((0x07) + 0x20)) |= (1 << (0));

    (*(volatile uint8_t *)((0x06) + 0x20)) |= (1 << (6));

    sleepWhileADC();

    uint16_t result = (*(volatile uint8_t *)((0x04) + 0x20));
    result |= (*(volatile uint8_t *)((0x05) + 0x20)) << 8;

    return 1023 - result;
}

uint16_t getCapacitance() {
    (*(volatile uint8_t *)((0x00) + 0x20)) &= ~(1 << (0));
    (*(volatile uint8_t *)((0x06) + 0x20)) |= (1 << (7));

    (*(volatile uint8_t *)((0x00) + 0x20)) &= ~(1 << (2));
 startExcitationSignal();

    _delay_ms(1);
    getADC1();
    _delay_ms(1000);
    uint16_t result = getADC1();

    stopExcitationSignal();
    (*(volatile uint8_t *)((0x18) + 0x20)) &= ~(1 << (2));
    (*(volatile uint8_t *)((0x00) + 0x20)) |= (1 << (2));

    (*(volatile uint8_t *)((0x06) + 0x20)) &=~ (1 << (7));
    (*(volatile uint8_t *)((0x00) + 0x20)) |= (1 << (0));

    return result;
}



volatile uint16_t lightCounter = 0;
volatile uint8_t lightCycleOver = 0;

void __vector_3 (void) __attribute__ ((signal,used, externally_visible)) ; void __vector_3 (void) {
    (*(volatile uint8_t *)((0x3B) + 0x20)) &= ~(1 << (5));
    (*(volatile uint8_t *)((0x2E) + 0x20)) = 0;
    lightCounter = (*(volatile uint16_t *)((0x2C) + 0x20));
    lightCycleOver = 1;
}

void __vector_8 (void) __attribute__ ((signal,used, externally_visible)) ; void __vector_8 (void) {
    lightCounter = 65535;
    lightCycleOver = 1;
}

uint16_t getLight() {
    (*(volatile uint8_t *)((0x00) + 0x20)) &= ~(1 << (3));
    (*(volatile uint8_t *)((0x0C) + 0x20)) |= (1 << (0));

    (*(volatile uint8_t *)((0x17) + 0x20)) |= (1 << (1)) | (1 << (0));
    (*(volatile uint8_t *)((0x18) + 0x20)) &= ~(1 << (0));
    (*(volatile uint8_t *)((0x18) + 0x20)) |= (1 << (1));

    (*(volatile uint8_t *)((0x18) + 0x20)) |= (1 << (0));
    (*(volatile uint8_t *)((0x18) + 0x20)) &= ~(1 << (1));

    (*(volatile uint8_t *)((0x17) + 0x20)) &= ~(1 << (0));
    (*(volatile uint8_t *)((0x18) + 0x20)) &= ~((1 << (1)) | (1 << (0)));

    (*(volatile uint16_t *)((0x2C) + 0x20)) = 0;
    (*(volatile uint8_t *)((0x2F) + 0x20)) = 0;
    (*(volatile uint8_t *)((0x2E) + 0x20)) = (1 << (2));

    (*(volatile uint8_t *)((0x20) + 0x20)) |= (1 << (0));
    (*(volatile uint8_t *)((0x3B) + 0x20)) |= (1 << (5));
    lightCycleOver = 0;
    while(!lightCycleOver) {
      do { (*(volatile uint8_t *)((0x35) + 0x20)) = (((*(volatile uint8_t *)((0x35) + 0x20)) & ~((1 << (3)) | (1 << (4)))) | ((0x00<<3))); } while(0);
      do { do { (*(volatile uint8_t *)((0x35) + 0x20)) |= (uint8_t)(1 << (5)); } while(0); do { __asm__ __volatile__ ( "sleep" "\n\t" :: ); } while(0); do { (*(volatile uint8_t *)((0x35) + 0x20)) &= (uint8_t)(~(1 << (5))); } while(0); } while (0);
    }

    (*(volatile uint8_t *)((0x2E) + 0x20)) = 0;

    (*(volatile uint8_t *)((0x3B) + 0x20)) &= ~(1 << (5));
    (*(volatile uint8_t *)((0x20) + 0x20)) &= ~(1 << (0));
    (*(volatile uint8_t *)((0x0C) + 0x20)) &= ~(1 << (0));
    (*(volatile uint8_t *)((0x00) + 0x20)) |= (1 << (3));
    return lightCounter;
}



void loopSensorMode() {
    (*(volatile uint8_t *)((0x00) + 0x20)) &= ~(1 << (0));
    (*(volatile uint8_t *)((0x06) + 0x20)) = (1 << (7)) | (1 << (2));
    (*(volatile uint8_t *)((0x07) + 0x20)) |= (1 << (0));
    (*(volatile uint8_t *)((0x00) + 0x20)) &= ~(1 << (2));

 startExcitationSignal();
 _delay_ms(500);
 uint16_t currCapacitance = 0;
 uint16_t light = 0;

 while(1) {
     if(usiTwiDataInReceiveBuffer()) {
   uint8_t usiRx = usiTwiReceiveByte();
   if(0 == usiRx) {
    ledOn();
    currCapacitance = getCapacitance();
       usiTwiTransmitByte(currCapacitance >> 8);
    usiTwiTransmitByte(currCapacitance &0x00FF);
    ledOff();
   } else if(0x01 == usiRx) {
    uint8_t newAddress = usiTwiReceiveByte();
    if(newAddress > 0 && newAddress < 255) {
     eeprom_write_byte((uint8_t*)0x01, newAddress);
    }
   } else if(0x02 == usiRx) {
    uint8_t newAddress = eeprom_read_byte((uint8_t*) 0x01);
    usiTwiTransmitByte(newAddress);
   } else if(0x03 == usiRx) {
    light = getLight();
   } else if(0x04 == usiRx) {
    usiTwiTransmitByte(light >> 8);
    usiTwiTransmitByte(light & 0x00FF);
   } else {



   }
  }
 }
}
# 280 "main.c"
uint8_t mode;
uint8_t sleepSeconds = 0;
uint32_t secondsAfterWatering = 0;




void inline wakeUpInterval8s() {
    (*(volatile uint8_t *)((0x21) + 0x20)) &= ~(1 << (1));
    (*(volatile uint8_t *)((0x21) + 0x20)) &= ~(1 << (2));
    (*(volatile uint8_t *)((0x21) + 0x20)) |= (1 << (5)) | (1 << (0));
    sleepSeconds = 8;
}




void inline wakeUpInterval1s() {
    (*(volatile uint8_t *)((0x21) + 0x20)) &= ~(1 << (5));
    (*(volatile uint8_t *)((0x21) + 0x20)) &= ~(1 << (0));
    (*(volatile uint8_t *)((0x21) + 0x20)) |= (1 << (1)) | (1 << (2));
    sleepSeconds = 1;
}

uint16_t lightThreshold = 65530;

void inline chirpIfLight() {
    getLight();
    if(lightCounter < lightThreshold) {
        chirp(3);
    } else {
        ledOn();
        _delay_ms(10);
        ledOff();
    }
}



int main (void) {
 setupGPIO();

 uint8_t address = eeprom_read_byte((uint8_t*)0x01);
    if(0 == address || 255 == address) {
     address = 0x20;
    }

    usiTwiSlaveInit(address);

    lightThreshold = eeprom_read_word((uint16_t*)0x02);

    (*(volatile uint8_t *)((0x26) + 0x20)) = (1 << (7));
    (*(volatile uint8_t *)((0x26) + 0x20)) = (1 << (1));

    __asm__ __volatile__ ("sei" ::: "memory");

    chirp(2);
    ledOn();
    _delay_ms(10);
    ledOff();
    _delay_ms(500);

    getLight();
    if(65535 == lightThreshold) {

        lightThreshold = lightCounter - lightCounter / 10;
        eeprom_write_word((uint16_t*)0x02, lightThreshold);
        chirp(1);
        _delay_ms(300);
    }
    chirp(2);

    if(usiTwiDataInReceiveBuffer()){
  loopSensorMode();
 }

 uint16_t referenceCapacitance = getCapacitance();

    (*(volatile uint8_t *)((0x0D) + 0x20)) = 0;

    setupPowerSaving();

    initWatchdog();

    uint8_t wakeUpCount = 0;
    uint8_t playedHappy = 0;

    uint8_t state = 4;
    int16_t capacitanceDiff = 0;
    uint8_t maxSleepTimes = 0;
    uint16_t currCapacitance = 0;
    uint16_t lastCapacitance = 0;

    while(1) {
        if(wakeUpCount < maxSleepTimes) {
            sleep();
            wakeUpCount++;
        } else {
         secondsAfterWatering = maxSleepTimes * sleepSeconds;

            wakeUpCount = 0;
            lastCapacitance = currCapacitance;
            currCapacitance = getCapacitance();
            capacitanceDiff = referenceCapacitance - currCapacitance;

            if (!playedHappy && ((int16_t)lastCapacitance - (int16_t)currCapacitance) < -5 && lastCapacitance !=0) {
                chirp(9);
                _delay_ms(350);
                chirp(1);
                _delay_ms(50);
                chirp(1);
                playedHappy = 1;
            }

            if(capacitanceDiff <= -5) {
                if(1 != state) {
                    wakeUpInterval8s();
                }
                maxSleepTimes = 225;
                state = 1;
            } else {
                if(capacitanceDiff >= -5) {
                    chirpIfLight();
                    playedHappy = 0;
                }
                if(capacitanceDiff > -5 && capacitanceDiff < -2) {
                    if(2 != state) {
                        wakeUpInterval8s();
                    }
                    maxSleepTimes = 37;
                    state = 2;
                } else if(capacitanceDiff >= -2 && capacitanceDiff < 0) {
                    if(3 != state) {
                        wakeUpInterval8s();
                    }
                    state = 3;
                    maxSleepTimes = 1;
                } else if(capacitanceDiff >= 0) {
                    if(4 != state) {
                        wakeUpInterval1s();
                    }
                    state = 4;
                    maxSleepTimes = 1;
                }
            }
        }
    }
}
