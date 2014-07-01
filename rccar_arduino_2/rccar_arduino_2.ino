#include <AFMotor.h>
#define DATABUFFERSIZE  80

void(* resetFunc)(void)=0;

char dataBuffer[DATABUFFERSIZE + 1];
byte dataBufferIndex = 0;
char startChar = '!';
char endChar = '#';
boolean storeString = false;

int initial = 0;
int final = 0;

int ax = 0;
int ay = 0;
int az = 0;
int lx = 0;
int ly = 0;
int lz = 0;

int vectorArray[6];

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
}

void resetDataBuffer(){
  dataBufferIndex = 0;
}

boolean getSerial(){
   
    
    while(Serial.available()>0){
        char incomingbyte = Serial.read();
        if(incomingbyte==startChar){
          //Serial.println("got incoming");
          //Serial.println(endChar);
            dataBufferIndex = 0;  //Initialize our dataBufferIndex variable
            storeString = true;
        }
        if(storeString){
            //Let's check our index here, and abort if we're outside our buffer size
            //We use our define here so our buffer size can be easily modified
            if(dataBufferIndex==DATABUFFERSIZE){
                //Oops, our index is pointing to an array element outside our buffer.
                dataBufferIndex = 0;
                break;
            }
            
            if( incomingbyte == endChar ){
                //Serial.println("got end");
                dataBuffer[dataBufferIndex] = incomingbyte; //null terminate the C string
                dataBuffer[dataBufferIndex + 1] = 0;
                //Our data string is complete.  return true
                storeString = false;
                return true;
            }
            else{
                dataBuffer[dataBufferIndex++] = incomingbyte;
                dataBuffer[dataBufferIndex] = 0; //null terminate the C string
                //Serial.println(dataBuffer);
             }
        }
        else{
        }
    }
   
    //We've read in all the available Serial data, and don't have a valid string yet, so return false
    return false;
}

void sendBootResponse(){
  Serial.print('l');
  
}

void setMotors(){
  //Serial.println("SETMOTORS");
  int tIndex = 3;
  int vIndex = 0;
  int temp = 0;
  int value = 0;
  byte wChar = dataBuffer[tIndex];
  boolean neg = false;
  boolean beginning = true;
  //while we aren't at the end of the string
  while (wChar != 0 ){
    //Serial.println(wChar);
    if (wChar > 47 && wChar < 58) {
      //it is a number
      char tChar = wChar;
      temp = tChar - '0';
      value = 10*value + temp;
      beginning = false;
      tIndex = tIndex + 1;
      wChar = dataBuffer[tIndex];
      
    }
    else if (wChar == 45 && beginning)
    {
      neg = true;
      tIndex = tIndex + 1;
      wChar = dataBuffer[tIndex];
      
    }
    else if (wChar == 47 || wChar == 44 || wChar == 35)
    {
      if (neg){
        value = value * -1;
      }
      
      vectorArray[vIndex] = value;
      vIndex = vIndex + 1;
      value = 0;
      beginning = true;
      tIndex = tIndex + 1;
      wChar = dataBuffer[tIndex];
    }
    
  }
  
  //Serial.println(vectorArray[0]);
  //Serial.println(vectorArray[5]);
 
  if (vectorArray[5] > 0){
  motor4.setSpeed(vectorArray[5]);
  motor4.run(FORWARD);
  }
  
  else if (vectorArray[5] < 0){
  motor4.setSpeed(vectorArray[5]*-1);
  motor4.run(BACKWARD);
  }
  else if (vectorArray[5] == 0){
  motor4.setSpeed(vectorArray[5]);
  motor4.run(RELEASE);
  }
  
  if (vectorArray[0] > 0){
  motor1.setSpeed(vectorArray[0]);
  motor1.run(FORWARD);
  motor2.setSpeed(vectorArray[0]);
  motor2.run(FORWARD);
  }
  
  else if (vectorArray[0] < 0){
  motor1.setSpeed(vectorArray[0]*-1);
  motor1.run(BACKWARD);
  motor2.setSpeed(vectorArray[0]*-1);
  motor2.run(BACKWARD);
  }
  
  else if (vectorArray[0] == 0){
  motor1.setSpeed(vectorArray[0]);
  motor1.run(RELEASE);
  motor2.setSpeed(vectorArray[0]);
  motor2.run(RELEASE);
  }
  
 Serial.print('+');
 final = micros();
 Serial.print(final - initial);
  
}

void respondToSerial(){
  if(getSerial()){
    //Serial.println("TRUE");
    if(dataBuffer[1] == 'b'){
      sendBootResponse();
      
    }
    else if (dataBuffer[1] == 'i'){
      initial = micros();
      setMotors();
      
    }
    else if (dataBuffer[1] == 'r'){
      resetFunc();
    }
  }
  
}



