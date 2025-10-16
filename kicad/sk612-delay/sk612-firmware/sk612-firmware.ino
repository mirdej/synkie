#include "DirectC.h"

#include <WiFi.h>
#include <ESPAsyncWebServer.h>
#include <ESPmDNS.h>
#include <AsyncElegantOTA.h>
#include "LITTLEFS.h"
#include <ArduinoJson.h>

#include "Timer.h"
#include "ADV7391.h"
#include "ADV7280.h"
#include <FastLED.h>
#include "Wire.h"


#define PIN_POT         36
#define PIN_PIX         23
#define PIN_RESET_IN    19
#define PIN_RESET_OUT   18
#define PIN_SSEL        14



#define PIN_MISO        13
#define PIN_MOSI        17
#define PIN_SCK         16
#define PIN_FPGA_RESET  04

#define PIN_SCL         22
#define PIN_SDA         21


#define NUM_LEDS    1

CRGB                            pixel[NUM_LEDS];
Timer                           t;

ADV7391             video_out   = ADV7391();
ADV7280             video_in    = ADV7280();
ADV7280             genlock_in  = ADV7280();


const char *ssid = "Anymair";
const char *password = "Mot de passe pas complique";

AsyncWebServer                  server(80);
AsyncWebSocket                  ws("/ws");
int do_flash;



//----------------------------------------------------------------------------------------

void handleWebSocketMessage(void *arg, uint8_t *data, size_t len) {
    AwsFrameInfo *info = (AwsFrameInfo*)arg;
    
    if (info->final && info->index == 0 && info->len == len && info->opcode == WS_TEXT) {
        StaticJsonDocument<256> input_JsonDoc;

        DeserializationError err = deserializeJson(input_JsonDoc, data);
        if (err) {
            Serial.print(F("deserializeJson() failed with code "));
            Serial.println(err.c_str());
            return;
        }
    
        if (input_JsonDoc["message"] == "program") {
            Action_code =     DP_PROGRAM_ACTION_CODE;
            do_flash = 1;
        } 
    }
}


//----------------------------------------------------------------------------------------

// handles uploads to the filserver
void handleUpload(      AsyncWebServerRequest *request, 
                        String filename, size_t index, 
                        uint8_t *data, size_t len, 
                        bool final) {
                        
    String logmessage = "Client:" + request->client()->remoteIP().toString() + " " + request->url();
    Serial.println(logmessage);

    if (!index) {
      logmessage = "Upload Start: " + String(filename);
      // open the file on first call and store the file handle in the request object
      request->_tempFile = LITTLEFS.open("/" + filename, "w");
      Serial.println(logmessage);
    }

    if (len) {
      // stream the incoming chunk to the opened file
      request->_tempFile.write(data, len);
      logmessage = "Writing file: " + String(filename) + " index=" + String(index) + " len=" + String(len);
      Serial.println(logmessage);
    }

    if (final) {
      logmessage = "Upload Complete: " + String(filename) + ",size: " + String(index + len);
      // close the file handle as the upload is now done
      request->_tempFile.close();
      Serial.println(logmessage);
      request->redirect("/");
    }
}




//----------------------------------------------------------------------------------------

void onEvent(AsyncWebSocket *server, AsyncWebSocketClient *client, AwsEventType type,
             void *arg, uint8_t *data, size_t len) {
  switch (type) {
    case WS_EVT_CONNECT:
        Serial.printf("WebSocket client #%u connected from %s\n", client->id(), client->remoteIP().toString().c_str());
      break;
    case WS_EVT_DISCONNECT:
      Serial.printf("WebSocket client #%u disconnected\n", client->id());
      break;
    case WS_EVT_DATA:
      handleWebSocketMessage(arg, data, len);
      break;
    case WS_EVT_PONG:
    case WS_EVT_ERROR:
      break;
  }
}


void notFound(AsyncWebServerRequest *request) {
    String logmessage = "Client:" + request->client()->remoteIP().toString() + " " + request->url();
    Serial.println(logmessage);
    request->send(404, "text/plain", "Not found");
}


//---------------------------------------------------------------------------------------

void scan_i2c(){  
        uint8_t error, address;
      int nDevices;
      Serial.println("Scanning...");
      nDevices = 0;
      for(address = 1; address < 127; address++ ) {
        Wire.beginTransmission(address);
        error = Wire.endTransmission();
        if (error == 0) {
          Serial.print("I2C device found at address 0x");
          if (address<16) {
            Serial.print("0");
          }
          Serial.println(address);//,HEX);
          nDevices++;
        }
        else if (error==4) {
          Serial.print("Unknow error at address 0x");
          if (address<16) {
            Serial.print("0");
          }
          Serial.println(address,HEX);
        }    
      }
      if (nDevices == 0) {
        Serial.println("No I2C devices found\n");
      }
      else {
        Serial.println("done\n");
      }
}

//---------------------------------------------------------------------------------------

void print_status(){
    Serial.println("------------");
    Serial.println("VIDEO IN");
    video_in.print_status();
    Serial.println(" ");
    Serial.println("------------");
    Serial.println("GENLOCK IN");
    genlock_in.print_status();
        
}

//========================================================================================
//---------------------------------------------------------------------------------------

void setup(){
    Serial.begin(115200);
    delay(1000);
    Serial.println("Hello");
    Serial.println("");
    
    pinMode(PIN_TDI,OUTPUT);
    pinMode(PIN_TCK,OUTPUT);
    pinMode(PIN_TMS,OUTPUT);
    pinMode(PIN_TRST,INPUT);
    pinMode(PIN_TDO,INPUT);
    pinMode(PIN_FPGA_RESET,OUTPUT);
    
    digitalWrite(PIN_FPGA_RESET,HIGH);
    delay(10);
    digitalWrite(PIN_FPGA_RESET,LOW);
    delay(10);
    digitalWrite(PIN_FPGA_RESET,HIGH);

    Wire.begin(PIN_SDA, PIN_SCL);
    video_in.begin(PIN_RESET_IN,0x20);
    genlock_in.begin(15 , 0x21);
    video_out.begin(PIN_RESET_OUT);

     video_out.external_sync(true);
//video_out.color_bars(true);
    scan_i2c();


    FastLED.addLeds<SK6812, PIN_PIX, GRB>(pixel, NUM_LEDS);
    pixel[0] = CRGB::Black;
    FastLED.show();

    LITTLEFS.begin();
    
    WiFi.mode(WIFI_STA);
	WiFi.begin(ssid, password);
     
    while (WiFi.status() != WL_CONNECTED) {
        delay(250);
        Serial.print(".");
    }
    Serial.println();
    Serial.print("Connected. IP address: ");
    Serial.println(WiFi.localIP());

    if (!MDNS.begin("sk612")) { Serial.println("Error setting up MDNS responder!"); }


    server.serveStatic("/", LITTLEFS, "/").setDefaultFile("index.html");
    server.onFileUpload(handleUpload);
    server.onNotFound(notFound);
    ws.onEvent(onEvent);
    server.addHandler(&ws);
    AsyncElegantOTA.begin(&server);
    server.begin();

    pixel[0] = CRGB::Green;
    FastLED.show();
    Serial.println();
    Serial.println("SETUP done");
    t.every(1000,print_status);
}

//========================================================================================
//----------------------------------------------------------------------------------------
//																				loop

void loop() {
    t.update();
    AsyncElegantOTA.loop();
    if (do_flash){ 
        do_flash = 0;
        pixel[0] = CRGB::Yellow;
        FastLED.show();
        Serial.print("Programm FPGA.");
        dp_debug(dp_top());
        pixel[0] = CRGB::Green;
        FastLED.show();
    }
}

