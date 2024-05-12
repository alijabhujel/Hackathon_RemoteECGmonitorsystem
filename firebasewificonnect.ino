#include <Wire.h>
#include <WiFi.h>
#include <Firebase_ESP_Client.h>
#include <LiquidCrystal_I2C.h>
#include <ArduinoJson.h>
//Provide the token generation process info.
#include "addons/TokenHelper.h"
//Provide the RTDB payload printing info and other helper functions.
#include "addons/RTDBHelper.h"


#define WIFI_SSID "Ok"
#define WIFI_PASSWORD "88888888"
#define API_KEY "AIzaSyBDhn-pTbrD1oX4Yb2sHsquzAInhLn9jxY"
#define DATABASE_URL "ecg-monitoring-system-f71e3-default-rtdb.firebaseio.com"


LiquidCrystal_I2C lcd(0x27, 16, 2);  // Set the LCD address to 0x27 for a 16 chars and 2 line display

FirebaseData fbdo;
FirebaseAuth auth;
FirebaseConfig config;
FirebaseData firebaseData;

unsigned long sendDataPrevMillis = 0;
bool signupOK = false;
int pulseValue = 0;
StaticJsonDocument<200> doc;


byte Heart[] = {
  B00000,
  B01010,
  B11111,
  B11111,
  B01110,
  B00100,
  B00000,
  B00000
};

String convertJsonToString() {
  String jsonString;
  serializeJson(doc, jsonString);
  return jsonString;
}


void sendDataToFirebase() {
  String path = "/ecg_data"; // Assuming your database path is "ecg_data"
  String jsonData = convertJsonToString(); // Convert JSON document to string
  if (Firebase.setJSON(firebaseData, path, doc)) {
    Serial.println("Data sent to Firebase!");
  } else {
    Serial.println("Failed to send data to Firebase.");
    Serial.println("REASON: " + firebaseData.errorReason());
    Serial.println("------------------------------------");
  }
}



void setup() {
  // Initialize the serial communication:
  Serial.begin(9600);
  pinMode(18, INPUT); // Setup for leads off detection LO +
  pinMode(19, INPUT); // Setup for leads off detection LO -
  pinMode(5, INPUT);  // Setup for pulse sensor signal pin
  lcd.init();
  lcd.createChar(0, Heart);


 // Display " Team Electrona " for 5 seconds
    lcd.clear();
    lcd.setCursor(0,0);
    lcd.write(0);
    lcd.print("Team Electrona");
    lcd.write(0);
    delay(5000); // 5 second delay

    WiFi.begin(WIFI_SSID, WIFI_PASSWORD);
  Serial.print("Connecting to wifi...");
  while (WiFi.status() != WL_CONNECTED) {
    Serial.print(".");
    delay(300);
  }
  Serial.println();
  Serial.print("Connected to IP:");
  Serial.println(WiFi.localIP());
  Serial.println();

  config.api_key = API_KEY;
  config.database_url = DATABASE_URL;

/* Sign up */
if (Firebase.signUp(&config, &auth, "", "")){
    Serial.println("ok");
    signupOK = true;
  } 
  else{
    Serial.printf("%s\n", config.signer.signupError.message.c_str());
  } 
    /* Assign the callback function for the long running token generation task */
  config.token_status_callback = tokenStatusCallback; //see addons/TokenHelper.h
  
  Firebase.begin(&config, &auth);
  Firebase.reconnectWiFi(true);



}

void loop() {
  // Check for leads off detection
  lcd.backlight();
  if ((digitalRead(18) == 1) || (digitalRead(19) == 1)) {
    Serial.println('!');
    lcd.clear();
    lcd.setCursor(0, 0);
    lcd.print("Lead off");
  } else {
    // Read the analog values of both sensors
    int ecgValue = analogRead(A0);
    int pulseValue = digitalRead(5);
    

    // Display the pulse sensor value on the LCD
    lcd.clear();
    lcd.setCursor(0, 0);
    // lcd.print("Sensorval: ");
    lcd.print(pulseValue);

    delay(1);
  }
  
if (Firebase.ready() && signupOK && (millis() - sendDataPrevMillis > 15000 || sendDataPrevMillis == 0)){
    sendDataPrevMillis = millis();
    // Write an Int number on the database path test/int  for ecg



    if (Firebase.RTDB.setInt(&fbdo, "sensor/pulseValue", pulseValue)){
      Serial.println("PASSED");
      Serial.println("PATH: " + fbdo.dataPath());
      Serial.println("TYPE: " + fbdo.dataType());
    }
    else {
      Serial.println("FAILED");
      Serial.println("REASON: " + fbdo.errorReason());
    }

}

     // Read sensor data and timestamp
  long timestamp = millis(); // Example timestamp
  int sensorValue = analogRead(A0); // Example sensor value

  // // Add data to JSON
  doc["timestamp"] = timestamp;
  doc["sensorValue"] = sensorValue;
  sendDataToFirebase(); 
 
  



}