```markdown
# Cooler Cooler Cooler Documentation

### Matthew Demchuk, Joshua Brull, Jovanni Rodriguez, Kai Xu
#### Dr. Franchi
#### COSC 451
#### Fall 2022

## Original Concept
**FollowMeCooler**  
We wanted to expand upon their idea and make it more successful in two areas: responsiveness and being able to drive the cooler on the beach (offroading).

## Chassis Design

### Materials
- ½ in x 2 ft x 4 ft Sanded Plywood
- 1-½ in x ⅝ in Inside Corner Braces
- 8 x 1-½ in Wood Screws
- 9 in Balloon Beach Wheels
- 12V 12 rpm DC Worm Gear Motor
- 8 in Caster Wheel
- ⅜ in x 1-½ in Bolts
- ⅜ in Lock Nuts
- ⅜ in Washers
- M4 x 15mm Steel Bolts
- Tupperware
- Cooler

### Dimensions
- Main Body: 14-⅛ in x 10-⅞ in x 4 in
- Caster Wheel Plate: 9-½ in x 9-⅛ in x ½ in
- Motor Mount Plates: 2-¼ in x 2 in x ½ in

### Details
- Corner Braces used on both the Motor Mount and Caster Wheel plates to help secure them to the Main Body. Though one of the Motor Mount plates corner braces screws are stripped causing it to tilt when placed on the ground.
- M4 Bolts are used to attach the Motor to the Motor Mount Plate.
- ⅜ in Bolts, Lock Nuts, and Washers used to mount the Caster Wheel to the Caster Wheel Mount Plate.
- Corner Brace Screws are sticking out in the Main Body will need to sanded down or cut off to prevent user injury.
- Both Plates will need to be redesigned if the motor or caster wheel is changed in the future.

## 3-D Motor Mount

With the current motor and wheels for the robot, the 3-D model does need to be modified. Both the bolt’s and motor shaft do not fit the holes on the mount and have required us to drill them out a bit to fit properly. These will need to be adjusted to fit both the wheel and motor properly.

## Wire Diagram

This is how the robot is currently wired up and allows the ArduinoBlue app to connect to the device. This does need to be improved as it is currently believed that there is too much power running into the Breadboard overloading the HM-10 if it is the only thing that is plugged into the board. From our understanding resistors were needed to prevent this from happening but were unable to figure out how to properly accomplish that in the device.

## Parts List
- 2 - 9” Beach Wheels
  - Works for the current iteration of the robot but moves at slow speed due to power of the motor
- 2 - 12V 12 rpm DC Worm Gear Motor
  - These need to be improved upon as the speed is very slow and the amount of power it produces is not enough to go on rugged terrain
- 1 - 8” Caster Wheel
  - Needs to be improved upon as due to the size of the wheel it would have trouble going across terrain such as sand due to its narrow design and weight causing it to sink in the sand
- 1 - Bluetooth Module HC-05 / HM-10
  - The bluetooth module connecting to the application on the phone was a time sink as searching through poorly documented libraries stopped progress at all ends. Code related to the module needs to be improved and synced with the serial or BLE services on the phone application
- 1 - GPS Module
  - The GPS module code is good to go.
- 1 - HMC5883L Axis Module
  - We aren't sure of the future 'direction'(ha) on the module. Whether it was an issue specific to the module, our code, or our applied application - this module stopped at nothing to provide inaccurate readings
- 1 - L298N Motor Driver
  - LGTM

## Application
The main issue in the app was the Bluetooth connection to the module; it stole all the time away from GUI development. Solid research on Android and iOS Bluetooth data transmission and the embedded libraries on each of these devices will likely solve any errors in this section.

## Code
Can be found on the public GitHub repository, along with the zip file submitted to Dr. Franchi.

Within the repository, you will find the application we planned to use originally but was scrapped due to issues with sending data to the HC-05 and HM-10 Bluetooth modules. Along with the Arduino code uploaded onto the Arduino Uno currently and code used to test the various modules and motors attached to the device.
```
<!-- @import "[TOC]" {cmd="toc" depthFrom=1 depthTo=6 orderedList=false} -->
