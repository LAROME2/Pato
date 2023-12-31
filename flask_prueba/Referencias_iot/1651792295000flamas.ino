
#include <ESP8266WiFi.h>
#include <PubSubClient.h>
#include <NTPClient.h>
#include <WiFiUdp.h>
#include "DHT.h"

//#define DHTTYPE DHT11
//#define DHTPIN D1
//#define SWITCH D0 


//DHT dht(DHTPIN, DHTTYPE);

#define NTP_OFFSET   0 //-21600            // In seconds
#define NTP_INTERVAL 60 * 1000    // In miliseconds
#define NTP_ADDRESS  "cronos.cenam.mx" //europe.pool.ntp.org
WiFiUDP ntpUDP;
NTPClient timeClient(ntpUDP, NTP_ADDRESS, NTP_OFFSET, NTP_INTERVAL);



// Update these with values suitable for your network.

const char* ssid = "LaRome";
const char* password = "luisalbertorodriguez";
const char* mqtt_server = "broker.mqtt-dashboard.com";
const char* topico_salida = "equipo1_IoT_PLF";
const char* topico_entrada = "equipo1_IoT_PLF";


WiFiClient espClient;
PubSubClient client(espClient);
unsigned long lastMsg = 0;
#define MSG_BUFFER_SIZE  (80)
char msg[MSG_BUFFER_SIZE];
int value = 0;

unsigned long ciclo1 = 0;
unsigned long ciclo2 = 0;
unsigned long ciclo3 = 0;
unsigned long ciclo4 = 0;
unsigned long ciclo5 = 0;



// We start by connecting to a WiFi network
void setup_wifi() {

  delay(10);
  Serial.println();
  Serial.print("Connecting to ");
  Serial.println(ssid);

  WiFi.mode(WIFI_STA);
  WiFi.begin(ssid, password);

  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }

  randomSeed(micros());
  Serial.println("");
  Serial.println("WiFi connected");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());
}

void callback(char* topic, byte* payload, unsigned int length) {
  Serial.print("Message arrived [");
  Serial.print(topic);
  Serial.print("] ");
  for (int i = 0; i < length; i++) {
    Serial.print((char)payload[i]);
  }
  Serial.println();
  digitalWrite(D0, HIGH);
  delay(100);
  digitalWrite(D0, LOW);

                              // Switch on the LED if an 1 was received as first character
//  if ((char)payload[0] == '1') {
//    digitalWrite(D6, HIGH);   // Turn the LED on (Note that LOW is the voltage level
                              // but actually the LED is on; this is because
                              // it is active low on the ESP-01). No es cierto en D6.
//  } else {
//    digitalWrite(D6, LOW);    // Turn the LED off by making the voltage HIGH
//  }

}


//Aquí conecta o reconecta.
void reconnect() {
  // Loop until we're reconnected
  while (!client.connected()) {
    Serial.print("Attempting MQTT connection...");
    // Create a random client ID
    String clientId = "ESP8266Client-";
    clientId += String(random(0xffff), HEX);
    // Attempt to connect
    if (client.connect(clientId.c_str())) {
      Serial.println("connected");
      // Once connected, publish an announcement...
      //client.publish("outTopic", "hello world");
      client.subscribe(topico_entrada);
      client.subscribe(topico_salida);
      client.publish(topico_salida, "hello world");      
      // ... and resubscribe
      //client.subscribe("inTopic");
     
    } else {
      Serial.print("failed, rc=");
      Serial.print(client.state());
      Serial.println(" try again in 5 seconds");
      // Wait 5 seconds before retrying
      delay(5000);
    }
  }
}

void setup() {
  pinMode(D0, OUTPUT);
  pinMode(D3, INPUT);
  pinMode(D4, OUTPUT);
  pinMode (D2, INPUT);     
  
  digitalWrite(D0, HIGH);
  digitalWrite(D4, HIGH);
  Serial.begin(115200);
  //dht.begin();
  timeClient.begin();
  //timeClient.setTimeOffset(-21600);
  
  setup_wifi();
  client.setServer(mqtt_server, 1883);
  client.setCallback(callback);
  if (!client.connected()) {
    reconnect();
  }
  digitalWrite(D0, LOW);
  digitalWrite(D4, LOW);  
}


void proceso1() {
  // CODIGO DE FLAMAS
  //Este código fue realizado por victruino con fines educativos.
  //pin Salida digital del sensor
  
  //pin Salida Analoga del sensor
  const int AO=A0;
  // Variable Analoga
  int VAO;
  
  VAO=analogRead(AO);
  
  
  //OTRO
  //float t = dht.readTemperature();
  //Serial.print("Temperatura: "); 
  //Serial.println(t);
  snprintf (msg, MSG_BUFFER_SIZE, "{\"dispositivo\":\"FNodeL\",\"tipo\":\"Detección_Flama_Analogo\",\"dato\":%.2f}", VAO*1.0);
  //Serial.print("Publish message: ");
  //Serial.println(msg);
  //client.publish(topico_salida, msg);
  client.publish(topico_entrada, msg);   
}

void proceso2() {
  const int DO=D2;
  // Variable Digital
  int VDO;
  VDO=digitalRead(DO);

  //OTRO
  //bool s = digitalRead(D0);
  //Serial.print("Switch: "); 
  //Serial.println(s);
  snprintf (msg, MSG_BUFFER_SIZE, "{\"dispositivo\":\"FNodeL\",\"tipo\":\"Detección_Flama_Digital\",\"dato\":%.2f}", VDO*1.0);
  //Serial.print("Publish message: ");
  //Serial.println(msg);
  //client.publish(topico_salida, msg);
  client.publish(topico_entrada, msg);   
  //const int analog_p = A0;
  //unsigned int analog_in = analogRead(analog_p);
  //analogWrite(D1, analog_in/4);
  //snprintf (msg, MSG_BUFFER_SIZE, "{\"dispositivo\":\"nodeL\",\"tipo\":\"lumi\",\"dato\":%d}", ((1024-analog_in)*100)/(1024-50));
//  Serial.print("Publish message: ");
//  Serial.println(msg);
  //client.publish(topico_salida, msg);
  //client.publish(topico_entrada, msg); 
}

  
void loop() {

  if (!client.connected()) {
    reconnect();
  }
  client.loop();

  unsigned long now = millis();
  if (now - ciclo1 > 5000) {ciclo1 = now;proceso1();}
  if (now - ciclo2 > 6300) {ciclo2 = now;proceso2();}
  //if (now - ciclo3 > 2000) {ciclo3 = now;proceso3();}
  //if (now - ciclo4 > 4300) {ciclo4 = now;proceso4();}
  //if (now - ciclo5 > 10000) {ciclo5 = now;proceso5();}

}

// CODIGO DE FLAMAS
//Este código fue realizado por victruino con fines educativos.
//pin Salida digital del sensor
//const int DO=D0;
//pin Salida Analoga del sensor
//const int AO=A0;

// Variable Analoga
//int VAO;
// Variable Digital
//int VDO;

//void setup() {
  //inicia el puerto serial
  //Serial.begin(9600);
  
  //Configuracion de pin de entrada
  //pinMode (DO, INPUT);
//}

//void loop() {
  
  //delay (1000);
  
  //VAO=analogRead (AO);
  //VDO=digitalRead (DO);
  //Serial.print("Valor Analogo: ");
  //Serial.print (VAO);
  //Serial.print(" Valor Digital: ");
  //Serial.println (VDO);
//}
