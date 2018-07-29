    class LedFlash {
      
      
      String led;
      int from;
      int to;
      int X;
      int Y;
      
      float x_param;
      float y_param;
      
      float posx;
      float posy;
      
      
    LedFlash () {  //class constructor
     
    }
    
     void findLed() {
      X = mouseX ;
      Y = mouseY ;
      led = "oo" ;
       //<>//
      x_param = width / 5 ; //<>//
      y_param = height / 6 ; //<>//
      
     posx = X / x_param; //<>//
     posy = Y / y_param;
       
     
     if (X==0) {
       println ("move mouse inside the interface"); //<>//
       }
       
     else if (X > 0) {   // def led name
  
  // column 1
      if ( posx <= 1) {  // inside first column
        if ( posy <= 1) { // inside first row
            led = "A1";
        }
        else if ( posy <= 2) {
           led = "B1" ;
        }
        else if ( posy <= 3) {
           led = "C1" ;
        }
        else if ( posy <= 4) {
           led = "D1" ;
        }
        else if ( posy <= 5) {
           led = "E1" ;
        }
        else if ( posy <= 6) {
           led = "F1" ;
        }
      }
      
   // column 2  
      else if ( posx <= 2) {  //<>//
        if ( posy <= 1) { 
            led = "A2";
        }
        else if ( posy <= 2) {
           led = "B2" ;
        }
        else if ( posy <= 3) {
           led = "C2" ;
        }
        else if ( posy <= 4) {
           led = "D2" ;
        }
        else if ( posy <= 5) {
           led = "E2" ;
        }
        else if ( posy <= 6) {
           led = "F2" ;
        }
      }
        
   // column 3
       else if ( posx <= 3) {  // inside first column
        if ( posy <= 1) { // inside first row
            led = "A3";
        }
        else if ( posy <= 2) {
           led = "B3" ;
        }
        else if ( posy <= 3) {
           led = "C3" ;
        }
        else if ( posy <= 4) {
           led = "D3" ;
        }
        else if ( posy <= 5) {
           led = "E3" ;
        }
        else if ( posy <= 6) {
           led = "F3" ;
        }
       }
      
    // column 4 
       else if ( posx <= 4) {  // inside first column
        if ( posy <= 1) { // inside first row
            led = "A4";
        }
        else if ( posy <= 2) {
           led = "B4" ;
        }
        else if ( posy <= 3) {
           led = "C4" ;
        }
        else if ( posy <= 4) {
           led = "D4" ;
        }
        else if ( posy <= 5) {
           led = "E4" ;
        }
        else if ( posy <= 6) {
           led = "F4" ;
        }
       }
      
    // column 5
       else if ( posx <= 5) {  // inside first column
        if ( posy <= 1) { // inside first row
            led = "A5";
        }
        else if ( posy <= 2) {
           led = "B5" ;
        }
        else if ( posy <= 3) {
           led = "C5" ;
        }
        else if ( posy <= 4) {
           led = "D5" ;
        }
        else if ( posy <= 5) {
           led = "E5" ;
        }
        else if ( posy <= 6) {
           led = "F5" ;
        }
        
       } 
       
     }
     // end if
       
       
       println(led) ;
       
     } 
     // end findLed
     
  // set pins
  
  void ledOn() {
    
    //row 1
    if (led == "A1") {
      from = p2;
      to = p1;
    }
    else if (led == "A2") {
      from = p3;
      to = p1;
    }
    else if (led == "A3") {
      from = p4;
      to = p1;
    }
    else if (led == "A4") {
      from = p5;
      to = p1;
    }
    else if (led == "A5") {
      from = p6;
      to = p1;
    }
    
   //row 2 
    if (led == "B1") {
      from = p1;
      to = p2;
    }
    else if (led == "B2") {
      from = p3;
      to = p2;
    }
    else if (led == "B3") {
      from = p4;
      to = p2;
    }
    else if (led == "B4") {
      from = p5;
      to = p2;
    }
    else if (led == "B5") {
      from = p6;
      to = p2;
    }
    
    //row 3
    else if (led == "C1") {
      from = p1;
      to = p3;
    }
    else if (led == "C2") {
      from = p2;
      to = p3;
    }
    else if (led == "C3") {
      from = p4;
      to = p3;
    }
    else if (led == "C4") {
      from = p5;
      to = p3;
    }
    else if (led == "C5") {
      from = p6;
      to = p3;
    }

    
    //row 4
    else if (led == "D1") {
      from = p1;
      to = p4;
    }
    else if (led == "D2") {
      from = p2;
      to = p4;
    }
    else if (led == "D3") {
      from = p3;
      to = p4;
    }
    else if (led == "D4") {
      from = p5;
      to = p4;
    }
    else if (led == "D5") {
      from = p6;
      to = p4;
    }
    
    //row 5
    else if (led == "E1") {
      from = p1;
      to = p5;
    }
    else if (led == "E2") {
      from = p2;
      to = p5;
    }
    else if (led == "E3") {
      from = p3;
      to = p5;
    }
    else if (led == "E4") {
      from = p4;
      to = p5;
    }
    else if (led == "E5") {
      from = p6;
      to = p5;
    }
    
    //row 6
    else if (led == "F1") {
      from = p1;
      to = p6;
    }
    else if (led == "F2") {
      from = p2;
      to = p6;
    }
    else if (led == "F3") {
      from = p3;
      to = p6;
    }
    else if (led == "F4") {
      from = p4;
      to = p6;
    }
    else if (led == "F5") {
      from = p5;
      to = p6;
    }
    
    arduino.pinMode(from , Arduino.OUTPUT);
    arduino.digitalWrite (from, Arduino.HIGH);
    arduino.pinMode(to, Arduino.OUTPUT);
    arduino.digitalWrite (to, Arduino.LOW);
  }
  
  void ledOff() {
   arduino.pinMode(from, Arduino.INPUT);
   arduino.pinMode(to, Arduino.INPUT);
  }
     
  
     
    } 