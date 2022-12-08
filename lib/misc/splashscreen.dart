import 'package:flutter/material.dart';
import 'dart:async';
import '../main/menu.dart';


//DEF SPLASHSCREEN - Delays app opening to load app (also looks cool lol)
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (context) => HomeScreen()
        )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade900,
      child: Center(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.grey.shade900,
          child: FlutterLogo(
            size: MediaQuery.of(context).size.height,
          ),
        ),
      ),
    );
  }
} //ENDDEF SPLASHSCREEN