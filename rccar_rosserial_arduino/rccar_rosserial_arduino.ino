#include <ros.h>
#include <AFMotor.h>
#include <geometry_msgs/Twist.h>
#include <std_msgs/String.h>
//#include <robot_rosserial/Request.h>
//#include <robot_rosserial/BootResponse.h>

AF_DCMotor motor1(1);
AF_DCMotor motor2(2);
AF_DCMotor motor4(4);

ros::NodeHandle nh;

std_msgs::String boot_msg;
ros::Publisher bootPub("boot", &boot_msg);

char bootchar[11] = "locomotion";
const char* const bootword = "boot";

void runMotors( const geometry_msgs::Twist& input_msg){
   int forwardvel = input_msg.linear.x;
   int turn = input_msg.angular.z;
   
   //motor4.setSpeed(200);
   //motor4.run(FORWARD);
   //delay(1000);
   //motor4.run(RELEASE);

   if (turn > 0) {
     motor4.setSpeed(200);
     motor4.run(FORWARD);
   }
   else if (turn < 0) {
     motor4.setSpeed(turn*-1);
     motor4.run(BACKWARD);
   }
   else{
     motor4.setSpeed(0);
     motor4.run(RELEASE);
   }   
   
   if (forwardvel > 0) {
     motor1.setSpeed(forwardvel);
     motor1.run(FORWARD);
     motor2.setSpeed(forwardvel);
     motor2.run(FORWARD);
   }
   else if (forwardvel < 0) {
     motor1.setSpeed(forwardvel*-1);
     motor1.run(BACKWARD);
     motor2.setSpeed(forwardvel*-1);
     motor2.run(BACKWARD);
   }
   else {
     motor1.setSpeed(0);
     motor1.run(RELEASE);
     motor2.setSpeed(0);
     motor2.run(RELEASE);
   }  
 }

void requests( const std_msgs::String& req_msg){
if(req_msg.data[0] == bootword[0]){
   boot_msg.data = "locomotion";
   //boot_msg.modulenumber = 1;
   bootPub.publish( &boot_msg );
}

}

ros::Subscriber<geometry_msgs::Twist> in_sub("locomotionInputs", &runMotors );
ros::Subscriber<std_msgs::String> req_sub("reqs", &requests );


void setup()
{
  
  motor1.setSpeed(200);
  motor1.run(RELEASE);
   
  motor2.setSpeed(200);
  motor2.run(RELEASE);
  
  motor4.setSpeed(200);
  motor4.run(FORWARD);
  delay(1000);
  motor4.run(RELEASE);
  
  nh.initNode();
  nh.advertise(bootPub);
  nh.subscribe(in_sub);
  nh.subscribe(req_sub);

}

void loop()
{
  
  nh.spinOnce();
 // delay(100);
}
