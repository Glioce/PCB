/* MOTOR PUERTA ELEVADOR V0.1

  Abre y cierra una puerta accionada por un motor DC.
  Micrcontrolador ATMega3250.
  Núcleo https://github.com/MCUdude/MegaCore
  Se podría usar ATMega2560 y funcionar como Arduino Mega.
*/

// 3 pinouts (elegir uno)

// Pinout "Arduino Mega"
/*#define PIN_RPWM 2 // right PWM puente H
#define PIN_LPWM 3 // left PWM puente H
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
#define PIN_INTA 20 // encoder interrupt A
#define PIN_INTB 21 // encoder interrupt B
//
#define PIN_IN1 18 // entrada 1
#define PIN_IN2 19 // entrada 2
#define PIN_IN3 23 // entrada 3
#define PIN_IN4 24 // entrada 4
#define PIN_IN5 25 // entrada 5
#define PIN_OPN PIN_IN1 // open button (se usa valor definido arriba)
#define PIN_SWC PIN_IN2 // switch closed (final de carrera)
#define PIN_SEN PIN_IN3 // sensor de obstáculo (cortina)
//
#define PIN_LED 13 // LED opcional
*/

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
  #define PIN_INTA 26
  #define PIN_INTB 5
  //
  #define PIN_IN1 44 //24
  #define PIN_IN2 43 //41
  #define PIN_IN3 42 //42
  #define PIN_IN4 41 //43
  //#define PIN_IN5 26 //44
  #define PIN_OPN PIN_IN1
  #define PIN_SWC PIN_IN2
  #define PIN_SEN PIN_IN3
  //
  #define PIN_LED 17


// PID
float kp = 0.1;
float ki = 0;
float kd = 0;
float ramp = 0.5;
int error;
int pwmOut;
int pwmRamp;
float pwmAcel;
int oldOut;
// los valores se podrían cambiar en el menu

// Valores ajustables durante la ejecución del programa

// Posicion de puerta abierta
// medida con numero de pulsos del encoder
int32_t open_pos = 3000;
long act_pos;
long prev_pos;
// idealmente la posición debe cambiar entre 0 y open_pos

// Ancho de pulso maximo
// En el menu se llama velodiad maxima
// Valores entre 0 y 255. Siempre mayor a min_v
uint8_t max_v = 128;

// Ancho de pulso minimo
// En el menu se llama velocidad minima
// Valores entre 0 y 255. Siempre menor a max_v
// Se necesitan al menos 3V para mover el motor
// Si la fuente es de 24V, min_v >= 32
uint8_t min_v = 50;

// Tiempo abierta
// Cuanto tiempo permanece la puerta abierta una vez que alcanza la open_pos
float open_t = 3.0; //segundos

// EEPROM
#include <EEPROM.h>
int addr_open_pos = 0; //direccion para guardar valor de open_pos
int addr_max_v = sizeof(open_pos); //direccion para max_v
int addr_min_v = addr_max_v + sizeof(max_v); //direccion para min_v
int addr_open_t = addr_min_v + sizeof(min_v); //direccion para open_t
int addr_kp = addr_open_t + sizeof(open_t); //direccion para open_t
int addr_ramp = addr_kp + sizeof(kp); //direccion para open_t
bool saved = false; // inidica si se han guardado valores en EEPROM

// LCD
//int adc_key_in  = 0;
int lcd_key     = 0;
// Botones (keypad)
#define B_RIGHT  0
#define B_UP     1
#define B_DOWN   2
#define B_LEFT   3
#define B_SELECT 4
#define B_NONE   5
int key; // tecla presionada
int key_prev; // tecla presionada anteriormente
int key_cont = 0; // contador para activar cambio rapido de valores
int key_cont_max = 25; // valor maximo del contador

// Menu
// Existe una "pagina" para cada valor configurable
int8_t menu = 0;
int8_t max_menu = 6; // numero de valores configurables -1

// Frecuencia de eventos
// Las acciones se realizand con diferente frecuencia para ahorrar tiempo de procesamiento
// Los botones se leen 50 veces por segundo (cada 20 ms)
#define INTERVAL_KEYS 20
uint64_t t_keys = 0; // guarda los millis cuando ocurrio la lectura
// La LCD se actualiza cuando hay un cambio de valor, pero no más de 10 veces por segundo
#define INTERVAL_LCD 100
uint64_t t_lcd = 0; // guarda los millis cuando ocurrio la actualizacion
bool update_lcd = true; //indica si se debe actualizar
bool update_lcd2 = false; //actualizar solo linea 2
uint64_t t; // para guardar valor devuelto por millis()

#include <LiquidCrystal.h>
LiquidCrystal lcd(PIN_RS, PIN_EN, PIN_D4, PIN_D5, PIN_D6, PIN_D7);

// Maquina de estados
#define   sWait   0
#define   sOpen   1
#define   sClose  2
#define   sPause  3
#define   sMenu   4
#define   sHome   5
unsigned short state = sWait;

bool flagObst = false;
bool flagClosed = false;
bool flagWait = false;
bool flagTop = false;


uint64_t t_wait = 0; // guarda los millis para volver a cerrrar
float t_open; // para guardar valor devuelto por millis()

// ------------------------------------------------------------------- setup
void setup() 
{
  //eeprom_put(); // guardar valores en EEPROM
  eeprom_get(); // obtener valores guardados en EEPROM
  
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
  pinMode(PIN_OPN, INPUT);
  pinMode(PIN_SWC, INPUT);
  pinMode(PIN_SEN, INPUT);
  pinMode(PIN_IN4, INPUT);
  //pinMode(PIN_IN5, INPUT);
  //
  pinMode(PIN_LED, OUTPUT);

  // Mensaje inicial
  analogWrite(PIN_BL, 255);
  lcd.begin(16, 2);
  lcd.clear();
  lcd.print("Iniciando...");

  //motor stop
  digitalWrite(PIN_LPWM,LOW);
  digitalWrite(PIN_RPWM,LOW);
  digitalWrite(PIN_LEN,HIGH);
  digitalWrite(PIN_REN,HIGH);

  //Encoder
  attachInterrupt(0, iPos, RISING);

  // Primera lectura de botones
  key = read_buttons();
  key_prev = key;

  state = sWait;
}


// ----------------------------------------------------------------- loop
void loop() 
{
  //lcd.setCursor(0, 1);
  //lcd.print("Pos: ");
  //lcd.print(act_pos);
  //lcd.print("      ");
  //delay(100);
  
  flagObst = digitalRead(PIN_SEN);
  flagClosed = digitalRead(PIN_SWC);
  
  // --------------- Funcion normal
  if((digitalRead(PIN_OPN) == LOW) && ((state == sWait)||(state == sClose) || (state == sOpen) ))  // Señal de abrir
  {
    if(state != sOpen)
    {
      t_lcd = 0;
      flagTop = false;
      pwmRamp = 0;
      pwmAcel = 0;
    }
    state = sOpen;
    flagWait = true;
    t_wait = 0;
  } 


  // -------------- Ejecucion de estados
  //----------------- goHome
  if(state == sHome)
  {
    //lcd.setCursor(0, 0);
    //lcd.print("Buscando sensor ");
    if(flagObst == true) // No hay obstaculo
    {
      lcd.setCursor(12, 1);
      lcd.print("    ");
      goHome();  // Busca sensor
    }
    else
    {
      lcd.setCursor(12, 1);
      lcd.print("OBST");
      waitStop(); // Pausa
    }
  }

  // ------------- Wait
  if(state == sWait)
  {
    if(flagClosed == true)// Si se detecta que la puerta se abre
    {
      lcd.setCursor(12, 1);
      lcd.print("ABT");
      state = sHome;
    }
    else   // Puerta cerrada
    {
      waitStop();
      // --------------- funciones de config
      menu_conf();
      flagTop = false;
    }
  }

  // ------------- Open
  if((state == sOpen))
  {
    opening();
  }

  // ------------- Close
  if((state == sClose))
  { 
    if(flagObst == true) // No hay obstaculo
    {
      lcd.setCursor(12, 1);
      lcd.print("    ");
      closing();
    }
    else // hay obstaculo
    {
      waitStop();
      lcd.setCursor(12, 1);
      lcd.print("OBST");
      state = sOpen;
      flagWait = true;  //realizar la espera
      //t_wait = millis();
    }
  }

  // ------------- Menu
  if(state == sMenu)
  {
    menu_conf();
  }
  
}

// -------------------------------------------------------------------- read_buttons
// Leer botones
// Se puede hacer 50 veces por segundo (cada 20 ms)
int read_buttons()
{
  int adc_key_in = analogRead(PIN_KEYS);
  // Mis botones dan:  0, 145, 329, 507, 743
  // Mis botones dan:  0, 144, 343, 513, 732, 1023
  // Comparar con un margen comodo
  if (adc_key_in > 900) return B_NONE;
  if (adc_key_in < 50)  return B_RIGHT;
  if (adc_key_in < 250) return B_UP;
  if (adc_key_in < 450) return B_DOWN;
  if (adc_key_in < 650) return B_LEFT;
  if (adc_key_in < 850) return B_SELECT;

  return B_NONE;  // Por si todo falla
}

// ------------------------------------------------------------ goHome
void goHome()
{
  lcd.setCursor(0, 0);
  lcd.print("Buscando sensor ");
  //lcd.setCursor(0, 1);

  //while(digitalRead(PIN_SWC) == 1)
  if(flagClosed == true)  // Mientras se encuentre abierto
  {
    if(act_pos > (open_pos * -2))// Se ha movido el doble que el  maximo de apertura
    {
      lcd.setCursor(0, 1);
      lcd.print("........      ");
      analogWrite(PIN_RPWM,min_v); // Cerrar con la minima velocidad
      digitalWrite(PIN_LPWM,LOW);
      //delay(100);
    }
    else
    {
      lcd.setCursor(0, 1);
      lcd.print("Sensor error");
      waitStop();
    }
    
  }
  
  else // Detecto cierre
  {
    waitStop();
    lcd.setCursor(0, 1);
    lcd.print("Encontrado  ");
    lcd.print("   ");
    act_pos = 0;
    state = sWait;
    //lcd.setCursor(0, 1);
    //lcd.print("Pos: ");
    //lcd.print(act_pos);
    //lcd.print("      ");
  }
}


// -------------------------------------------------------------- opening
void opening()
{
  if(act_pos <= open_pos) // Abriendo por posicion
  {
    control(open_pos);
    lcd.setCursor(0, 0);
    lcd.print("Abriendo           ");
    analogWrite(PIN_LPWM,pwmOut); // Abrir
    digitalWrite(PIN_RPWM,LOW);
  }
  else // Abierto, tiempo de espera
  {
    waitStop(); //Detener movimiento
    lcd.setCursor(0, 0);
    lcd.print("Abierto          ");
    
    if(flagWait == true)
    {
      if(t_wait == 0)
      {
        t_wait = millis(); //inicio conteo
      }
      t_open = (millis() - t_wait);
    
      if((open_t) > t_open/1000) // tiempo en espera
      {
        lcd.setCursor(13, 0);
        lcd.print(float (open_t - (float(t_open/1000))));   
      }
      else  // fin de la espera
      {
        state = sClose; 
        t_wait = 0;
      }
    }
    else
    {
      state = sClose; 
      t_wait = 0;
    }
    
  }

  
  lcd.setCursor(0, 1);
  lcd.print("Pos: ");
  lcd.print(act_pos);
  lcd.print("   ");
}

// --------------------------------------------------------------- closing
void closing()
{
  if(flagClosed == true) // No se detecta cierre
  {
    if(act_pos > (open_pos * -2))// Se ha movido el doble que el  maximo de apertura
    {
      digitalWrite(PIN_LPWM,LOW);
      control(0);
      if(act_pos > 0)
        analogWrite(PIN_RPWM,pwmOut); // Cerrar con PID
      else
        analogWrite(PIN_RPWM,min_v); // Cerrar con minima
        
        
      lcd.setCursor(0, 0);
      lcd.print("Cerrando            ");
    }
    else
    {
      lcd.setCursor(0, 0);
      lcd.print("Error Cerrando");
      state = sWait;
    }
    
  }
  else // Cerrado
  {
    lcd.setCursor(0, 0);
    lcd.print("Cerrado            ");
    //waitStop();
    //delay(1000);
    state=sWait;
    act_pos = 0;
  }
  
  lcd.setCursor(0, 1);
  lcd.print("Pos: ");
  lcd.print(act_pos);
  lcd.print("    ");
}

// ---------------------------------------------------------------- waitStop
void waitStop()
{
  //analogWrite(PIN_RPWM,0);
  digitalWrite(PIN_RPWM,LOW);
  digitalWrite(PIN_LPWM,LOW);
  flagTop = false;
  pwmRamp = 0;
  pwmAcel = 0;
  
}


// ------------------------------------------------------------ iPos
void iPos()
{
  if (digitalRead(PIN_INTB) == HIGH) // if ENCODER_B is high increase the count
    act_pos++; // increment the count
  else // else decrease the count
    act_pos--;  // decrement the count

    //lcd.setCursor(0, 0);
    //lcd.print("INT");
}


// --------------------------------------------------------------  eeprom_put()
// Funcion para escribir valores en EEPROM
void eeprom_put() {
  EEPROM.put(addr_open_pos, open_pos);
  EEPROM.put(addr_max_v, max_v);
  EEPROM.put(addr_min_v, min_v);
  EEPROM.put(addr_open_t, open_t);
  EEPROM.put(addr_kp, kp);
  EEPROM.put(addr_ramp, ramp);
}


// --------------------------------------------------------------  eeprom_get()
// Funcion para leer valores de EEPROM
void eeprom_get() {
  EEPROM.get(addr_open_pos, open_pos);
  EEPROM.get(addr_max_v, max_v);
  EEPROM.get(addr_min_v, min_v);
  EEPROM.get(addr_open_t, open_t);
  EEPROM.get(addr_kp, kp);
  EEPROM.get(addr_ramp, ramp);
}

// -------------------------------------------------------------- menu
void menu_conf()
{
  t = millis(); // tiempo actual

  if (t - t_keys >= INTERVAL_KEYS) {
    t_keys = t; // guardar tiempo
    key_prev = key; // guardar boton anterior
    key = read_buttons(); // leer boton actual
    int delta = 0; // cambio de valor
    bool sel = false; // select presionado

    if (key != B_NONE) 
    { //-----------------------    // si boton presionado
      state = sMenu;
      key_cont ++; // incrementar contador
      if (key != key_prev) {//si se acaba de presionar
        key_cont = 1; // primer incremento
        update_lcd = true; // LCD se va a actualizar

        switch (key) { // realizar accion que depende del boton presionado
          case B_LEFT: // izquierda, pagina anterior
            menu--;
            if (menu < 0) menu = max_menu;
            if (menu > max_menu) menu = 0;
            break;
          case B_RIGHT: // derecha, pagina siguiente
            menu++;
            if (menu < 0) menu = max_menu;
            if (menu > max_menu) menu = 0;
            break;
          case B_UP: // arriba, incrementar valor
            delta = 1;
            break;
          case B_DOWN: // abajo, decrementar valor
            delta = -1;
            break;
          case B_SELECT:
            sel = true;
            break;
        }//switch
      }//if
      else { //si el boton se ha mantenido presionado, incrementar valor rapido
        if (key_cont > key_cont_max) {
          key_cont = key_cont_max;
          if (key == B_UP) {
            delta = 1;
            update_lcd = true;
          }
          if (key == B_DOWN) {
            delta = -1;
            update_lcd = true;
          }
        }

      }

      // Cambiar valor, dependiendo del menú
      switch (menu) {
        case 0: //open_pos
          open_pos += delta * 10;
          if (open_pos < 10) open_pos = 10; // no debe llegar a cero
          break;
        case 1: //max_v
          max_v += delta;
          if (max_v > 255) max_v = 255; // no debe ser mayor a 255
          if (max_v <= min_v) max_v = min_v + 1; // no debe ser menor a min_v
          break;
        case 2: //min_v
          min_v += delta;
          if (min_v < 0) min_v = 0; // no debe ser menor a cero
          if (min_v >= max_v) min_v = max_v - 1;
          break;
        case 3: //open_t
          open_t  += float(delta) * 0.1;
          if (open_t < 0.0) open_t = 0.0;
          break;
        case 4: //kp
          kp  += float(delta) * 0.1;
          if (kp < 0.0) kp = 0.0;
          break;
        case 5: //ramp
          ramp  += float(delta) * 0.1;
          if (ramp < 0.0) ramp = 0.0;
          break;
        case 6: //save
          if (sel) {
            eeprom_put();
            saved = true;
          }
          break;
      }//switch

    }//if
    else {
      key_cont = 0; // reiniciar contador
      state = sWait;
    }

  }

  if (t - t_lcd >= INTERVAL_LCD) {
    t_lcd = t;
    if (update_lcd) {
      update_lcd = false;
      lcd.clear();

      switch (menu) {
        case 0: //open_pos
          lcd.print("1. POS ABIERTO");
          //         12345678901234
          lcd.setCursor(0, 1);
          lcd.print(open_pos);
          break;
        case 1: //max_v
          lcd.print("2. VELOCIDAD MAX");
          //         1234567890123456
          lcd.setCursor(0, 1);
          lcd.print(max_v);
          break;
        case 2: //min_v
          lcd.print("3. VELOCIDAD MIN");
          //         1234567890123456
          lcd.setCursor(0, 1);
          lcd.print(min_v);
          break;
        case 3: //open_t
          lcd.print("4. T ABIERTO");
          //         1234567890123456
          lcd.setCursor(0, 1);
          lcd.print(open_t);
          break;
        case 4: //kp
          lcd.print("4. CONST Kp");
          //         1234567890123456
          lcd.setCursor(0, 1);
          lcd.print(kp);
          break;
        case 5: //ramp
          lcd.print("4. ACELERACION");
          //         1234567890123456
          lcd.setCursor(0, 1);
          lcd.print(ramp);
          break;
        case 6: //guardar
          lcd.print("6. GUARDAR CONF");
          //         1234567890123456
          if (saved) {
            saved = false;
            lcd.setCursor(0, 1);
            lcd.print("GUARDADO");
          }
          break;
      }
    }
  }
}


// ------------------------------------------------------------------- ControP
void control(long p_des)
{
  error = abs(p_des - act_pos); // Pos actual menos la deseada
  pwmOut = error * kp;

  // Verificar topes
  if(pwmOut > max_v)
  {
     pwmOut = max_v;
  }
  else if(pwmOut < min_v)
  {
     pwmOut = min_v;
  }

  pwmRamp = pwmOut;

  // Generar rampa
  if(flagTop == false) // Se alcanzo la vel tope
  {
    pwmOut = min_v + pwmAcel;
    if(pwmOut >= pwmRamp)
    {
      flagTop = true;
      pwmAcel=0;
    }
    pwmAcel = pwmAcel + ramp;
  }  
    
}
