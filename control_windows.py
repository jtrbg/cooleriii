# for Python control of Arduino over wired serial connection
import keyboard, serial
ser=serial.Serial(port='COM10', baudrate=9600)# declare serial object
# main loop
while True:
    if keyboard.is_pressed(" "): #stops car
        ser.write(b's')
    elif keyboard.is_pressed('w') and keyboard.is_pressed('a'): # handling forward and left simultanious input (turns left)
        ser.write(b'q')
    elif keyboard.is_pressed('w') and keyboard.is_pressed('d'): # handling forward and right simultanious input (turns right)
        ser.write(b'e')
    elif keyboard.is_pressed('s') and keyboard.is_pressed('a'): # handling backward and left simultanious input (turns right)
        ser.write(b'z')
    elif keyboard.is_pressed('s') and keyboard.is_pressed('d'): # handling backward and right simultanious input (turns left)
        ser.write(b'c')
    elif keyboard.is_pressed('w'): # goes forward
        ser.write(b'f')
        print('Fuck you')
    elif keyboard.is_pressed("s"): # goes backward
        ser.write(b'b')
    elif keyboard.is_pressed("d"): # goes right
        ser.write(b'r')
    elif keyboard.is_pressed("a"): # left forward
        ser.write(b'l')
    else: # no
        ser.write(b's')
