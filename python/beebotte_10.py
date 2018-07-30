#!/usr/bin/python

from pymongo import MongoClient, DESCENDING
from beebotte import *
import urllib
import base64

password = urllib.quote_plus('password')
client = MongoClient('mongodb://mqtt:' + password + '@127.0.0.1/data')
db = client.data
# get soil moisture readings, state of charge, temperature and humidity
coll = db.devices_maxmultichrp1_rh
cur=coll.find(sort=[('when', DESCENDING)], limit=1)
event = cur.next()
val = base64.b64decode(event["value"])
chirp1 = ord(val[0])+256*ord(val[1])
chirp2 = ord(val[2])+256*ord(val[3])
soc = ord(val[4])
temp = ord(val[5])
hum = ord(val[6])

bclient = BBT("your_beebotte_api_key_here","your_beebotte_secret_key_here")

reschirp1 = Resource(bclient, 'maxmultichirp','chirp1')
reschirp1.write(chirp1)

reschirp2 = Resource(bclient, 'maxmultichirp','chirp2')
reschirp2.write(chirp2)

ressoc = Resource(bclient, 'maxmultichirp','SOC')
ressoc.write(soc)

resTemp = Resource(bclient, 'maxmultichirp','Temperature')
resTemp.write(temp)

resHum = Resource(bclient, 'maxmultichirp','Humidity')
resHum.write(hum)


