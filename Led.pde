//[ Arduino 
import processing.serial.*;
import cc.arduino.*;
Arduino arduino; //class name , class obj

int p1=10;
int p2=9;
int p3=8;
int p4=6;
int p5=12;
int p6=4;

int timer=1000; //ms
//]

LedFlash myled;  //create class obj

void pinReset() {
  arduino.pinMode(p1, Arduino.INPUT);
  arduino.pinMode(p2, Arduino.INPUT);
  arduino.pinMode(p3, Arduino.INPUT);
  arduino.pinMode(p4, Arduino.INPUT);
  arduino.pinMode(p5, Arduino.INPUT);
  arduino.pinMode(p6, Arduino.INPUT);
}

void setup(){
  size (900,900);
   for (int i=0; i<width/5; i++) {
    for (int j=0; j<height/6; j++){
     int y=j*(height/6);
    int x=i*(width/5);
    rect (x, y, width/5, height/6);
    }
  }
  
  myled = new LedFlash();
  
  println(Arduino.list());
  arduino = new Arduino(this, Arduino.list()[2], 57600);
  pinReset();
  
}

//LEDon

void draw(){
  pinReset();
  myled.findLed(); //<>//
  myled.ledOn();
  delay(timer);
  myled.ledOff();
  
  //ledFlash();
   
}