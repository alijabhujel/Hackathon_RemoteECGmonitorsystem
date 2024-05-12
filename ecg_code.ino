#include <Wire.h>
#include <LiquidCrystal_I2C.h>

LiquidCrystal_I2C lcd(0x3F, 16, 2);  // Set the LCD address to 0x27 for a 16 chars and 2 line display

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


}



void loop() {
  static unsigned long displayStartTime = 0;
  static bool displayMessage = true;

  // Check for leads off detection
  lcd.backlight();
  if ((digitalRead(18) == 1) || (digitalRead(19) == 1)) {
    Serial.println('!');
    lcd.clear();
    lcd.setCursor(0, 0);
    lcd.print("Lead off");
    displayMessage = false; // Don't display the message
  } else {
    if (displayMessage) {
      // Display the message for 5 seconds
      if (millis() - displayStartTime < 5000) {
        lcd.clear();
        lcd.setCursor(0, 0);
        lcd.write(0);
        lcd.print("Team Electrona");
        lcd.write(0);
      } else {
        // After 5 seconds, switch to displaying the pulse sensor value
        displayStartTime = millis();
        displayMessage = false;
      }
    } else {
      // Read the analog values of both sensors
      int ecgValue = analogRead(A0);
      int pulseValue = digitalRead(5);

      // Display the pulse sensor value on the LCD
      lcd.clear();
      lcd.setCursor(0, 0);
      lcd.print("Sensorval: ");
      lcd.print(pulseValue);

      // Wait for a bit to keep serial data from saturating
      delay(1);
    }
  }
}
