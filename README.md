# cooler iii

An application that is used to control the CoolerCoolerCooler

## GUIDE TO USE
## Main Application

The main app features two screens which the user can swipe between 
- Automatic Screen
  - This screen features a map that pins both the user's location and the cooler's location 
  - When viewing this screen, control mode will be set to automatic, allowing the cooler to follow the user
- Manual Screen
  - This screen features a controller UI that is customizable in settings
  - When viewing this screen, control mode will be set to manual, allowing the user to control the cooler
If the app has not been bonded, the user will be prompted to scan and connect to a 
CoolerCoolerCooler BT module   (OnStartup)

## Bluetooth Connectivity

To connect to the BT module of the cooler, the user will be directed to the Bluetooth Screen which
allows the user to scan, connect, and bond the cooler's BT module to the app
- Bluetooth Screen
  - This screen contains the information of the currently bonded device and an expandable menu that scans for devices
  - If a device is not connected, the app will automatically scan for new devices
  - To connect to a device, the user will simply tap on a desired device's label

## Automatic pathfinding

When a user is on the Automatic Screen and the 'Follow-Me' toggle is switched on, the cooler follows
the user's GPS signal using a determined pathfinding algorithm to navigate unseen obstacles

## Controller UI

To manually control the cooler, the user can swipe or tap to the Manual Screen and use the
wheel and slider buttons to control the coolers direction and speed

## Settings - Customizations/Modifications

Any customizations/modifications to the app or controls will be found through the settings button
at the top right of the Main Screen
- Theme
- Controller
- GPS
- Bluetooth
- Cooler

### Dependencies

- flutter_blue_plus ^1.3.1
  - startLeScan(UUID[],LeScanCallback) has been deprecated
  - stopLeScan(LeScanCallback) has been deprecated
- location ^4.4.0
  - isFromMockProvider() has been deprecated
- settings_ui ^2.0.2      (PLAN TO REMOVE)

### Permissions

- Bluetooth
- Location
- Read and Write