/*
  LiquidCrystal Library - Hello World
*/

// include the library code:
#include <LiquidCrystal.h>

// initialize the library by associating any needed LCD interface pin
// with the arduino pin number it is connected to
const int d4 = 4, d5 = 5, d6 = 6, d7 = 7, rs = 8, en = 9;
LiquidCrystal lcd(rs, en, d4, d5, d6, d7);

// Retroiluminación de la pantalla
// 0 apagado
// 255 brillo maximo
int luz = 100;
int delta = 1;

void setup() {
  // set up the LCD's number of columns and rows:
  lcd.begin(16, 2);
  // Print a message to the LCD.
  lcd.print("hello, world!");

  pinMode(10, OUTPUT);
}

void loop() {
  // set the cursor to column 0, line 1
  // (note: line 1 is the second row, since counting begins with 0):
  lcd.setCursor(0, 1);
  // print the number of seconds since reset:
  //lcd.print(millis() / 1000);
  lcd.print(analogRead(A0));
  lcd.print("   ");

  luz += delta;
  if (luz >= 255) delta *= -1;
  if (luz <= 100) delta *= -1;
  analogWrite(10, luz);

  //delay(500);
}
