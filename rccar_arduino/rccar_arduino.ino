#include <AFMotor.h>
//I will create a header file eventually to automate this stuff

String inputString;

int isError;
int inByte;

AF_DCMotor motor1(1);
AF_DCMotor motor2(2);
AF_DCMotor motor4(4);

void setup() {

  Serial.begin(9600);

  motor1.setSpeed(200);
  motor1.run(RELEASE);
  
  motor2.setSpeed(200);
  motor2.run(RELEASE);
    
  motor4.setSpeed(200);
  motor4.run(RELEASE);

}


void loop() {

   if(Serial.available() > 0) {
		//add new input bytes
		inByte = Serial.read();
		//while((33 > inByte) || (inByte > 125))
		//{
		//	inByte = Serial.read();
		//}
		char byteChar = inByte;
                //Serial.print(byteChar);
                //Serial.println(inByte);
                //Serial.println(byteChar);
		inputString += byteChar;
		//if we have reached the final character
		if(byteChar == '#'){
			//check what the input string was
                        //Serial.println(inputString);
			isError = respondToInput(inputString);  
			if (isError){
			  Serial.print("#ERROR#");
                          
			}
                        else {
                          //String outputString = "#complete#";
                          //Serial.print("#this is it#");
                          Serial.flush();
                         
                        }
			inputString = "";
                 
		}
   } 
   
}


int respondToInput(String inString){
    if (inString.charAt(0) == 'b'){
       //Boot Response
       Serial.println("#locomotion#");
       
    }
    else if (inString.charAt(0) == 'i'){
       //Break this out into a separate function at some point
       //This recreates a twist, eventually
       int endS = inString.indexOf("#");
       int firstSlash = inString.indexOf('/');
       int secondSlash = inString.indexOf('/',firstSlash + 1);

       String linear = inString.substring(firstSlash + 1,secondSlash);
       String angular = inString.substring(secondSlash + 1, endS);

       int firstComma = linear.indexOf(',');
       int secondComma = linear.indexOf(',', firstComma+1);
       
       String lxS = linear.substring(0, firstComma);
       String lyS = linear.substring(firstComma + 1, secondComma);
       String lzS = linear.substring(secondComma + 1);

       
       firstComma = angular.indexOf(',');
       secondComma = angular.indexOf(',', firstComma+1);
       
       String axS = angular.substring(0, firstComma);
       String ayS = angular.substring(firstComma + 1, secondComma);
       String azS = angular.substring(secondComma + 1);

       int lx = lxS.substring(3).toInt();
       int ly = lyS.substring(3).toInt();
       int lz = lzS.substring(3).toInt();

       int ax = axS.substring(3).toInt(); 
       int ay = ayS.substring(3).toInt();
       int az = azS.substring(3).toInt();

       //only uses two values, linear.x and angular.z
 
       //turn the wheel before changing speed
       if(az > 0){
          motor4.setSpeed(az);
          motor4.run(FORWARD);
	  
       }
      
       else if(az < 0){
	  motor4.setSpeed(az*-1);
          motor4.run(BACKWARD);
       }
       else {
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
       else {
          motor1.setSpeed(0);
          motor1.run(RELEASE);
  
          motor2.setSpeed(0);
          motor2.run(RELEASE);
 
       }
    Serial.print("#");
    Serial.print(lx);
    Serial.print("#");
    Serial.println(az);
    }
  
  return 0;
}


