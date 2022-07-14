/* MOTOR PUERTA ELEVADOR V0.1

  Abre y cierra una puerta accionada por un motor DC.
  Micrcontrolador ATMega3250.
  Núcleo https://github.com/MCUdude/MegaCore
  Se podría usar ATMega2560 y funcionar como Arduino Mega.
*/

// 3 pinouts (elegir uno)

// Pinout "Arduino Mega"
#define PIN_RPWM 11 // right PWM puente H
#define PIN_LPWM 12 // left PWM puente H
#define PIN_REN 14 // right enable puente H
#define PIN_LEN 15 // left enable puente H
#define PIN_RIS 16 // right alarm (indica error, opcional)
#define PIN_LIS 17 // left alarm (indica error, opcional)
//
#define PIN_D4 4 // LCD D4
#define PIN_D5 5 // LCD D5
#define PIN_D6 6 // LCD D6
#define PIN_D7 7 // LCD D7
#define PIN_RS 8 // LCD register select
#define PIN_EN 9 // LCD enable
#define PIN_BL 10 // LCD back light (se puede regular brillo con PWM)
//
#define PIN_KEYS A0 // keypad (analog input)
#define PIN_KEY A1 // extra key
//
#define PIN_INTA 2 // encoder interrupt A
#define PIN_INTB 3 // encoder interrupt B
//
#define PIN_IN1 18 // entrada 1
#define PIN_IN2 19 // entrada 2
#define PIN_IN3 20 // entrada 3
#define PIN_IN4 21 // entrada 4
#define PIN_IN5 22 // entrada 5
#define PIN_OPN PIN_IN1 // open button (se usa valor definido arriba)
#define PIN_SWC PIN_IN2 // switch closed (final de carrera)
#define PIN_SEN PIN_IN3 // sensor de obstáculo
//
#define PIN_LED 13 // LED opcional

// Pinout "ATMega2560 AVR"
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

// PID
float kp = 1;
float ki = 0;
float kd = 0;
// los valores se podrían cambiar en el menu

// Valores ajustables durante la ejecución del programa

// Posicion de puerta abierta
// medida con numero de pulsos del encoder
int32_t open_pos = 1000;
// idealmente la posición debe cambiar entre 0 y open_pos

// Ancho de pulso maximo
// En el menu se llama velodiad maxima
// Valores entre 0 y 255. Siempre mayor a min_v
uint8_t max_v;

// Ancho de pulso minimo
// En el menu se llama velocidad minima
// Valores entre 0 y 255. Siempre menor a max_v
// Se necesitan al menos 3V para mover el motor
// Si la fuente es de 24V, min_v >= 32
uint8_t min_v;

// Tiempo abierta
// Cuanto tiempo permanece la puerta abierta una vez que alcanza la open_pos
float open_t = 3; //segundos

// LCD
#include <LiquidCrystal.h>
LiquidCrystal lcd(PIN_RS, PIN_EN, PIN_D4, PIN_D5, PIN_D6, PIN_D7);

void setup() {
  // Configurar pines
  pinMode(PIN_RPWM, OUTPUT);
  pinMode(PIN_LPWM, OUTPUT);
  pinMode(PIN_REN, OUTPUT);
  pinMode(PIN_LEN, OUTPUT);
  pinMode(PIN_RIS, INPUT);
  pinMode(PIN_LIS, INPUT);
  //
  pinMode(PIN_BL, OUTPUT); // LCD back light
  //
  analogRead(PIN_KEYS); //pinMode(PIN_KEYS, INPUT);
  analogRead(PIN_KEY); //pinMode(PIN_KEY, INPUT);
  //
  pinMode(PIN_INTA, INPUT);
  pinMode(PIN_INTB, INPUT);
  //
  pinMode(PIN_IN1, INPUT);
  pinMode(PIN_IN2, INPUT);
  pinMode(PIN_IN3, INPUT);
  pinMode(PIN_IN4, INPUT);
  pinMode(PIN_IN5, INPUT);
  //
  pinMode(PIN_LED, OUTPUT);

  // Mensaje inicial
  lcd.begin(16, 2);
  lcd.print("hello, world!");
}

void loop() {
  // put your main code here, to run repeatedly:

}
