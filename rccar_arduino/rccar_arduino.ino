#include <AFMotor.h>
//I will create a header file eventually to automate this stuff

String inputString;

int isError;
int inByte;
char byteChar;
char byteCharOne;
char byteCharTwo;

int initial;
int final;

int ax = 0;
int ay = 0;
int az = 0;
int lx = 0;
int ly = 0;
int lz = 0;


AF_DCMotor motor1(1);
AF_DCMotor motor2(2);
AF_DCMotor motor4(4);

void setup() {

  Serial.begin(57600);

  motor1.setSpeed(200);
  motor1.run(RELEASE);
  
  motor2.setSpeed(200);
  motor2.run(RELEASE);
    
  motor4.setSpeed(200);
  motor4.run(RELEASE);
 

}


void loop() {
  
  respondToSerial();
  /*
    if(Serial.available() > 0) {
		//add new input bytes
		inByte = Serial.read();
                while(33 > inByte || inByte > 125){
                 inByte = Serial.read();
                }
                */
                /*
                char* inputB;
                int readinto = Serial.readBytesUntil('#',inputB, 30);
                Serial.println(inputB);
		inputString = String(inputB);
                Serial.println(inputString);
                */
                /*
                byteChar = inByte; 
                inputString += byteChar;
                //if we have reached the final character
		 if(byteChar == '#'){
			//check what the input string was
                        //Serial.println(inputString);
                        if (Serial.available() < 10){
			isError = respondToInput(inputString); 
                       
			if (isError){
			  Serial.print("-");
                          
			}
                        else {
                          //String outputString = "#complete#";
                          //Serial.print("#this is it#");
                          Serial.print("+");
                         
                        }
			}
                       inputString = "";
		  }  //part of that if

                
		
   } 
*/   
   //Keep motors running
   //resetMotors();
   
   
}

void respondToSerial(){
   initial = 0;
   final = 0;
  
  if (Serial.available() > 0){
    byteChar = Serial.read();
    
    if(byteChar == 'b') { //if the request is for a boot and
     initial = micros(); 
      delay(10);
       if (Serial.read() == '#') { //if the next character is the end char
         Serial.println('l'); //Print the boot response
         final = micros();
         Serial.println(final-initial);
       }
    } 
    else if (byteChar == 'i'){
      initial = micros();
      delay(10);
    if (Serial.read() == '/'){ //it is an input
      byteChar = Serial.read();
      int temp;
      int value;
      
      while(byteChar != ','){
        temp = byteChar - '0';
        value = 10*value + temp;
        byteChar = Serial.read();
      }
      
      lx = value;
      temp = 0;
      value = 0;
      byteChar = Serial.read();
      
      while(byteChar != ','){
        temp = byteChar - '0';
        value = 10*value + temp;
        byteChar = Serial.read();
      }
      ly = value;
      temp = 0;
      value = 0;
       byteChar = Serial.read();
      
      while(byteChar != '/'){
        temp = byteChar - '0';
        value = 10*value + temp;
        byteChar = Serial.read();
      }
      lz = value;
      temp = 0;
      value = 0;
       byteChar = Serial.read();
      
      while(byteChar != ','){
        temp = byteChar - '0';
        value = 10*value + temp;
        byteChar = Serial.read();
      }
      ax = value;
      temp = 0;
      value = 0;
       byteChar = Serial.read();
      
      while(byteChar != ','){
        temp = byteChar - '0';
        value = 10*value + temp;
        byteChar = Serial.read();
      }
      ay = value;
      temp = 0;
      value = 0;
       byteChar = Serial.read();
      
      while(byteChar != '#'){
        temp = byteChar - '0';
        value = 10*value + temp;
        byteChar = Serial.read();
      }
      az = value;
      temp = 0;
      value = 0;
      // byteChar = Serial.read();
       
       resetMotors();
         final = micros();
         Serial.println(final-initial);
         delay(100);
         Serial.println("");
         Serial.println(lx);
         Serial.println(ly);
         Serial.println(lz);
         Serial.println(ax);
         Serial.println(ay);
         Serial.println(az);
         
            
            
    }
    }   
  }
  
  
}

void resetMotors(){
   if(az > 0){
          motor4.setSpeed(az);
          motor4.run(FORWARD);
	  
       }
      
       else if(az < 0){
	  motor4.setSpeed(az*-1);
          motor4.run(BACKWARD);
       }
       else if (az == 0){
          motor4.setSpeed(0);
          motor4.run(RELEASE);
       }

       //change the speed
   
       if(lx > 0){
          motor1.setSpeed(lx);
          motor1.run(FORWARD);
  
          motor2.setSpeed(lx);
          motor2.run(FORWARD);
       }
      
       else if(lx < 0){
	  motor1.setSpeed(lx*-1);
          motor1.run(BACKWARD);
  
          motor2.setSpeed(lx*-1);
          motor2.run(BACKWARD);
       }
       else if (lx == 0) {
          motor1.setSpeed(0);
          motor1.run(RELEASE);
  
          motor2.setSpeed(0);
          motor2.run(RELEASE);
 
       }
  
}

int respondToInput(String inString){
    int initial = micros();
    if (inString.charAt(0) == 'b'){ 
       //Boot Response
       Serial.print("l");
       
    }
    else if (inString.charAt(0) == 'i'){
       //Break this out into a separate function at some point
       //This recreates a twist, eventually
       
       int endS = inString.indexOf("#");
       int firstComma = inString.indexOf(',');
       lx = inString.substring(2,firstComma).toInt();
       az = inString.substring(firstComma + 1, endS).toInt();
       
       
       
       /*
       int endS = inString.indexOf("#");
       int firstSlash = inString.indexOf('/');
       int secondSlash = inString.indexOf('/',firstSlash + 1);

       String linear = inString.substring(firstSlash + 1,secondSlash);
       String angular = inString.substring(secondSlash + 1, endS);

       int firstComma = linear.indexOf(',');
       int secondComma = linear.indexOf(',', firstComma+1);
       
       lx = linear.substring(0, firstComma).toInt();
       ly = linear.substring(firstComma + 1, secondComma).toInt();
       lz = linear.substring(secondComma + 1).toInt();

       
       firstComma = angular.indexOf(',');
       secondComma = angular.indexOf(',', firstComma+1);
       
       ax = angular.substring(0, firstComma).toInt();
       ay = angular.substring(firstComma + 1, secondComma).toInt();
       az = angular.substring(secondComma + 1).toInt();
       */
	/*
       int lx = lxS.toInt();
       int ly = lyS.toInt();
       int lz = lzS.toInt();

       int ax = axS.toInt(); 
       int ay = ayS.toInt();
       int az = azS.toInt();
	*/
       //only uses two values, linear.x and angular.z
 
       //turn the wheel before changing speed
      
    //Serial.print("#x-");
    //Serial.print(lx);
    //Serial.print("z-");
    //Serial.print(az);
    //Serial.print("#");
   
    }
  else{
    return 1;
  }
  resetMotors();
  int final = micros();
  Serial.print(" ");
  Serial.println(final-initial);
  return 0;
}


