import 'package:flutter/material.dart';
import 'dart:async';
import 'misc/splashscreen.dart';
import 'package:location/location.dart';



//DEF MAIN
Future<void> main() async {
  runApp(const MyApp());
}
//ENDDEF MAIN

//DEF MYAPP - underlying app
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CCC',
      darkTheme: MyThemes.darkTheme,
      themeMode: ThemeMode.dark,

      home: const SafeArea(
        child: SplashScreen(),
      ),
    );
  }
} // ENDDEF MYAPP

//DEF MYTHEMES - Theme data
class MyThemes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,
    primaryColor: Colors.black,
    colorScheme: const ColorScheme.dark(),
    iconTheme: const IconThemeData(color: Colors.grey, opacity: 0.8),
  );
} //ENDDEF THEMES

