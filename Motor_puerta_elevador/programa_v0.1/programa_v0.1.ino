/* MOTOR PUERTA ELEVADOR V0.1

Abre y cierra una puerta accionada por un motor DC.
Micrcontrolador ATMega3250.
Núcleo https://github.com/MCUdude/MegaCore
Se podría usar ATMega2560 y funcionar como Arduino Mega.
*/

// 3 pinouts (elegir uno)

// Pinout "Arduino Mega"
#define PIN_RPWM 15 // right PWM puente H
#define PIN_LPWM 16 // left PWM puente H
#define PIN_REN 20 // right enable puente H
#define PIN_LEN 21 // left enable puente H
#define PIN_RIS 22 // right alarm (indica error)
#define PIN_LIS 23 // left alarm (indica error)
//
#define PIN_D4 6 // LCD D4
#define PIN_D5 7 // LCD D5
#define PIN_D6 8 // LCD D6
#define PIN_D7 9 // LCD D7
#define PIN_RS 18 // LCD register select
#define PIN_EN 19 // LCD enable
#define PIN_BL 14 // LCD back light
//
#define PIN_KEYS A4 // keypad (analog input)
#define PIN_KEY A5 // extra key
//
#define PIN_INTA 4 // encoder interrupt A
#define PIN_INTB 5 // encoder interrupt B
//
#define PIN_IN1 24 // entrada 1
#define PIN_IN2 41 // entrada 2
#define PIN_IN3 42 // entrada 3
#define PIN_IN4 43 // entrada 4
#define PIN_IN5 44 // entrada 5
#define PIN_OPN PIN_IN1 // open button (se usa valor definido arriba)
#define PIN_SWC PIN_IN2 // switch closed (final de carrera)
#define PIN_SEN PIN_IN3 // sensor de obstáculo
//
#define PIN_LED 17 // LED opcional

// Pinout "ATMega2560 AVR"


// Pinout "ATMega3250 AVR"
/*
#define PIN_RPWM 15
#define PIN_LPWM 16
#define PIN_REN 20
#define PIN_LEN 21
#define PIN_RIS 22
#define PIN_LIS 23
//
#define PIN_D4 6
#define PIN_D5 7
#define PIN_D6 8
#define PIN_D7 9
#define PIN_RS 18
#define PIN_EN 19
#define PIN_BL 14
//
#define PIN_KEYS A4
#define PIN_KEY A5
//
#define PIN_INTA 4
#define PIN_INTB 5
//
#define PIN_IN1 24
#define PIN_IN2 41
#define PIN_IN3 42
#define PIN_IN4 43
#define PIN_IN5 44
#define PIN_OPN PIN_IN1
#define PIN_SWC PIN_IN2
#define PIN_SEN PIN_IN3
//
#define PIN_LED 17
*/

void setup() {
  // put your setup code here, to run once:

}

void loop() {
  // put your main code here, to run repeatedly:

}
