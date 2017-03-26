#define BLYNK_PRINT Serial    // Comment this out to disable prints and save space
#include <ESP8266WiFi.h>
#include <BlynkSimpleEsp8266.h>

//needed for library
#include <ESP8266WebServer.h>
#include <DNSServer.h>
#include <WiFiManager.h>          //https://github.com/tzapu/WiFiManager
#include "Arduino.h"

// Constante e Variaveis do Botão 01:
const int botao_01 = 0;        // Pino do botão 01
const int ledBotao_01 = 2;    // Pino fisico do led referente ao botão 01

int ledStateBotao_01 = HIGH;    // Estado atual o pino de saida
int stateBotao_01_saida = 0;    // Estado da saida do botão 01
int stateBotao_01;              // Atual estado do reading botao_01 no pino de entrada
int lastStateBotao_01 = LOW;    // Estado anterior do readingbotao_01 

int stateVirtualBotao_01;
int lastStateVirtualBotao_01 = LOW;
int readingVirtualBotao_01;



//Constante dos Pinos de saida para os acionamentos
const int saida_01 = 99;



// the following variables are unsigned long's because the time, measured in miliseconds,
// will quickly become a bigger number than can't be stored in an int.
unsigned long lastDebounceTime = 0;  // the last time the output pin was toggled
unsigned long debounceDelay = 5;    // the debounce time; increase if the output flickers
unsigned long selectionValue = 0;


//Protótipo das funções
void checkbutton();
void connectToBlinkServer();

// select wich pin will trigger the configuraton portal when set to LOW
// ESP-01 users please note: the only pins available (0 and 2), are shared 
// with the bootloader, so always set them HIGH at power-up
#define TRIGGER_PIN 99

// read eeprom for ssid and pass
//char auth[] = "put your code Here"; //coloque o código do blynk dentro das aspas.



BLYNK_WRITE(V1)
{
  // Get the state of the VButton
  readingVirtualBotao_01 = param.asInt();

  if(readingVirtualBotao_01 == 0){
    ledStateBotao_01 = 0;
  }
    if(readingVirtualBotao_01 == 1){
    ledStateBotao_01 = 1;
  }

}


void setup() {
 
  // put your setup code here, to run once:
  Serial.begin(115200);
  Serial.println("\n Starting");

 //Serial.println("\n por aqui passou");
    
  pinMode(TRIGGER_PIN, INPUT);
  
  pinMode(botao_01, INPUT);
  pinMode(ledBotao_01, OUTPUT);
     
  
  // set initial LED state
    digitalWrite(ledBotao_01, HIGH);
    delay(500);
    digitalWrite(ledBotao_01, LOW);
  //Serial.println("\n por aqui passou2");
    connectToBlinkServer();
  
}


void loop() {
  
    checkbutton();
  
  digitalWrite(saida_01, ledStateBotao_01);
  digitalWrite(ledBotao_01, ledStateBotao_01);


  // put your main code here, to run repeatedly:
  Blynk.run();



}


void checkbutton(){
  //Serial.println("entrou na rotina de checar Botao");
  
 // read the state of the switch into a local variable:
  int readingbotao_01 = digitalRead(botao_01);


  // check to see if you just pressed the button
  // (i.e. the input went from LOW to HIGH),  and you've waited
  // long enough since the last press to ignore any noise:

  // If the switch changed, due to noise or pressing:
  if (readingbotao_01 != lastStateBotao_01) {
    // reset the debouncing timer
    lastDebounceTime = millis();
  }

  
  if ((millis() - lastDebounceTime) > debounceDelay) {
    // whatever the readingbotao_01 is at, it's been there for longer
    // than the debounce delay, so take it as the actual current state:

  
    // if the button state has changed:
    if (readingbotao_01!= stateBotao_01) {
      stateBotao_01 = readingbotao_01;
    

    while(stateBotao_01 == LOW){
      Serial.println("entrou no loop ");
      selectionValue++;
      delay(1);
      stateBotao_01 = digitalRead(botao_01);
      Serial.println(selectionValue);
      }

      
      // only toggle the LED if the new button state is HIGH
      if (stateBotao_01 == HIGH) {

        if(selectionValue > 5000){
          //WiFiManager
          //Local intialization. Once its business is done, there is no need to keep it around
          WiFiManager wifiManager;
      
          //WITHOUT THIS THE AP DOES NOT SEEM TO WORK PROPERLY WITH SDK 1.5 , update to at least 1.5.1
          //WiFi.mode(WIFI_STA);
      
          
          if (!wifiManager.startConfigPortal("Your_SSID_name_HERE")) {
            Serial.println("failed to connect and hit timeout");
            delay(3000);
            //reset and try again, or maybe put it to deep sleep
            ESP.reset();
            delay(5000);
          }
      
          connectToBlinkServer();
            
          //if you get here you have connected to the WiFi
          Serial.println("connected...yeey :)");
          selectionValue = 0;
        }
        else{
          ledStateBotao_01 = !ledStateBotao_01;
          Blynk.virtualWrite(V1, ledStateBotao_01);
          selectionValue = 0;
        }
      }
    }



  }
  



  // save the readingbotao_01.  Next time through the loop,
  // it'll be the lastStateBotao_01:
  lastStateBotao_01 = readingbotao_01;

  
}


void connectToBlinkServer(){
      // Pega o Valor da String do SSID e passa para Char
    
    String ssidString=WiFi.SSID();
    int tamanhoString_ssid=ssidString.length();
    char ssid[tamanhoString_ssid];
    for (int a=0;a<=tamanhoString_ssid;a++)
            {
                ssid[a]=ssidString[a];
            }
          
    //Serial.println(ssid);
    
    // Pega o Valor da String do SSID e passa para Char
    
    String passString=WiFi.psk();
    int tamanhoString_pass=passString.length();
    char pass[tamanhoString_pass];
    for (int a=0;a<=tamanhoString_pass;a++)
            {
                pass[a]=passString[a];
            }
                


      //Serial.println(pass);
      Blynk.begin(auth, ssid, pass); 
}

