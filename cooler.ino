#include <HMC5883L.h>
#include <Arduino.h>
#include <Wire.h>

// gemoetric constants
#define GPSERROR = 0.1;
//#define DECLINATION = -0.19926; //rad
//#define RADTODEG 57.2958;
//#define DEGTORAD = 0.017453;
//#define address 0x1E //0011110b, I2C 7bit address of HMC5883

// Motor A connections
int enA = 10;
int in1 = 8;
int in2 = 7;
// Motor B connections
int enB = 11;
int in3 = 6;
int in4 = 9;

// movement functions
void driveForward();
void driveReverse();
void turnLeft();
void turnRight();

/*
//calculate needed turning angle 
float calcTurnAngle(float dLat, float dLong, float currOrientation);

// adjust orientation of the robot to face new point
void adjustOrientation(float currOrientation, float newOrientation);

// temp function so the code will compile
float getOrientation();

HMC5883L compass;
*/
int error = 0;

void setup() {
  /*
  // set up HMC388L (axis module)
  Serial.begin(9600);
  Wire.begin();
  Wire.beginTransmission(address);
  //Wire.write(0x02);
  //Wire.write(0x00);
  Wire.endTransmission();
*/

  // set up the motor driver
	// Set all the motor control pins to outputs
	pinMode(enA, OUTPUT);
	pinMode(enB, OUTPUT);
	pinMode(in1, OUTPUT);
	pinMode(in2, OUTPUT);
	pinMode(in3, OUTPUT);
	pinMode(in4, OUTPUT);
	
  // works for moving both motors forward
	digitalWrite(in1, LOW);
	digitalWrite(in2, LOW);
	digitalWrite(in3, LOW);
	digitalWrite(in4, LOW);
   
  // get the motors going
  analogWrite(enA, 255);
  analogWrite(enB, 255);
}

// main loop
void loop() {

  driveForward();
  delay(10000);
  turnLeft();
  delay(10000);
  turnRight();
  delay(10000);
  driveReverse();
  delay(10000);
  /*
  if(input == 'f'){
    driveForward();
  }
  else if(input == 'l'){
    turnLeft();
  }
  else if(input == 'r'){
    turnRight();
  }
  else if(input == 'b'){
    driveReverse();
  }
  */
/*
  int x, y, z;
  //int xmin, xmax, ymin, ymax, zmin, zmax;
  //xmin =0; xmax=0; ymin=0; ymax=0; zmin=0; zmax=0;
  Wire.write(0x03);
  Wire.endTransmission();

  Wire.requestFrom(address, 6);
  if (6 <= Wire.available()){
    x = Wire.read()<<8;
    x |= Wire.read();
    z = Wire.read()<<8;
    z |= Wire.read();
    y = Wire.read();
    y |= Wire.read();
  }
  Serial.print(" x: ");
  Serial.print(x);
  Serial.print(" y: ");
  Serial.print(y);
  Serial.print(" z: ");
  Serial.print(z);
  Serial.println();

  //driveForward();
  delay(1000);
  */
}

// sets the motors to drive forward
void driveForward() {
	digitalWrite(in1, LOW);
	digitalWrite(in2, HIGH);
	digitalWrite(in3, LOW);
	digitalWrite(in4, HIGH);
}

void driveReverse(){
  digitalWrite(in1, HIGH);
	digitalWrite(in2, LOW);
	digitalWrite(in3, HIGH);
	digitalWrite(in4, LOW);
}

// sets the motors to turn to the left
void turnLeft() {
  digitalWrite(in1, HIGH);
  digitalWrite(in2, LOW);
  digitalWrite(in3, LOW);
  digitalWrite(in4, HIGH);
}

// sets the motors to turn to the right
void turnRight() {
  digitalWrite(in1, LOW);
  digitalWrite(in2, HIGH);
  digitalWrite(in3, HIGH);
  digitalWrite(in4, LOW);
}
/*
// calculate the required turning angle
float calculateTurnAngle(float dLat, float dLong, float currOrientation) {
  float thetaP = 0.0;

  // calculate the new turning angle
  if (currOrientation >= 0 && currOrientation <= 180) {
    // base formula for calculating theta prime
    thetaP = atan(dLat / dLong - currOrientation);

    // subtract 180 from theta prime is delta latitude is < 0
    if (dLat < 0)
      thetaP -= 180;
  }
  // calculate theta prime if vehicle is facing different orientation
  else if(currOrientation > 180 && currOrientation <= 360) {
    thetaP = atan((dLat / dLong) - currOrientation  + 360);
  }
  return thetaP;
}

/*
// this function might need to swap turn left/right
void adjustOrientation(float currOrientation, float newOrientation) {
  while (currOrientation != newOrientation) {
    if (currOrientation < newOrientation) {
      turnLeft();
    }
    else if (currOrientation > newOrientation) {
      turnRight();
    }
    currOrientation = getOrientation();
  }
}

// get orientation in terms of degrees from North
float getOrientation(){
  int x, y, z;
  int xmin, xmax, ymin, ymax, zmin, zmax;
  xmin=0;xmax=0;ymax=0;ymin=0;zmin=0;zmax=0;

  Wire.requestFrom(address, 6);
  if (6 <= Wire.available()){
    x = Wire.read()<<8;
    x |= Wire.read();
    z = Wire.read()<<8;
    z |= Wire.read();
    y = Wire.read();
    y |= Wire.read();
  }
}
*/
