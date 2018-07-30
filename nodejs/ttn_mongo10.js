#!/usr/bin/node
// version 10 - adding value debugging
//  - for new backend and authenticating queue setup with ttnctl

var mqtt=require('/usr/lib/node_modules/mqtt')
var mongodb=require('/usr/lib/node_modules/mongodb');
var request = require('/usr/lib/node_modules/request')

var mongodbClient=mongodb.MongoClient;
var mongodbURI='mongodb://mqtt:password@127.0.0.1:27017/data'
var wurl = 'https://api.forecast.io/forecast/your_darksky.net_api_key_here/37.8270,-122.4230'
var weather = new Object();
var client = new Object();

function showit(topic,payload) {
  var obj = JSON.parse(payload.toString());
  console.log(obj); 
  console.log(topic); }

function insertEvent(topic,payload) {
      mongodbClient.connect(mongodbURI, function(err,db) {
          if(err) { console.log(err); return; }
          else {
            // get the current humidity
            request({url:wurl,json:true}, function(error,response,body) {
              if (!error && response.statusCode === 200)
                 { weather=body }
              else
                 { return 1 }
              var obj = JSON.parse(payload.toString());
              console.log(obj['payload']);
              var coll = topic.split('/')[1]+'_'+topic.split('/')[2]+'_rh';
              collection = db.collection(coll);
              collection.insert(
                 { value:obj['payload_raw'], humidity:weather['currently']['humidity'], when:new Date() },
                 function(err,docs) {
                    if(err) { console.log("Insert fail" + err); } // Improve error handling
                    else { console.log("Update callback - closing db");
                           db.close() }
              });  // end of insert block
            });   // end of request block
          }      // end of mongo  connect else block
      });       // end of mongo connect block
    }          // end of insertEvent


// put this in a function we can call on event of going offline
function connectmq() {
   client=mqtt.connect('mqtt://eu.thethings.network',{username:"your_ttn_username_here",password:"your_ttn_password_here"});
}

connectmq();

client.on('connect',function() {
 client.subscribe('+/devices/+/up');
});

client.on('message',insertEvent);
//client.on('message',showit);

client.on('offline',connectmq);


