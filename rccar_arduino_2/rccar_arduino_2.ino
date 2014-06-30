#include <AFMotor.h>
#define DATABUFFERSIZE  80

char dataBuffer[DATABUFFERSIZE + 1];
byte dataBufferIndex = 0;
char startChar = '!';
char endChar = '#';

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

boolean getSerialString(){
    dataBufferIndex = 0;
    while(Serial.available()>0){
        char incomingbyte = Serial.read();
        if(incomingbyte==startChar){
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
            if(incomingbyte==endChar){
                dataBuffer[dataBufferIndex] = 0; //null terminate the C string
                //Our data string is complete.  return true
                return true;
            }
            else{
                dataBuffer[dataBufferIndex++] = incomingbyte;
                dataBuffer[dataBufferIndex] = 0; //null terminate the C string
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
  int tIndex = 1;
  int vIndex = 0;
  //while we aren't at the end of the string
  while (dataBuffer[tIndex] != 0 ){
    
    
  }
  
  
}

void respondToSerial(){
  if(getSerial()){
    if(dataBuffer[0] == 'b'){
      sendBootResponse();
      
    }
    else if (dataBuffer[0] == 'i'){
      setMotors();
      
    }
  }
  
}
