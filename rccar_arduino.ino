#include <AFMotor.h>
//I will create a header file eventually to automate this stuff

String inputString;

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
		while((33 > inByte) || (inByte > 125))
		{
			inByte = Serial.read();
		}
		char byteChar = inByte;
                //Serial.println(inByte);
                //Serial.println(byteChar);
		inputString += byteChar;
		//if we have reached the final character
		if(byteChar == '#'){
			//check what the input string was
      
			isError = respondToInput(inputString);  
			inputString = "";
                 
		}
   }  
}


int respondToInput(String inString){
    if (inString.charAt(0) == 'b'){
       //Boot Response
       Serial.println("locomotion");
    }
    else if (inString.charAt(0) == 'i'){
       int endS = inString.indexOf("#");


    }


}

