import 'dart:async';
import 'package:flutter/material.dart';
import '../settings/settings.dart';
import '../location/location.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

//DEF MANUALSCREEN - TabView screen for Automatic controlling
class ManualScreen extends StatefulWidget {
  const ManualScreen({super.key});
  @override
  State<ManualScreen> createState() => _ManualScreenState();
}

class _ManualScreenState extends State<ManualScreen> {
  late MyLocation loc = MyLocation();

  double speedA = 0;
  double speedB = 0;
  bool pin1M1 = false;
  bool pin1M2 = false;
  bool pin2M1 = false;
  bool pin2M2 = false;


  @override
  void initState() {
    Timer.periodic(const Duration(milliseconds: 250), (Timer timer) {
      loc.getLocation();

    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final settingsButton = Material(
      elevation: 0.0,
      color: Colors.grey.shade900,
      child: IconButton(
        icon: const Icon(Icons.settings),
        color: Colors.grey,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Settings(),
            ),
          );
        },
      ),
    );
    final buttons = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: settingsButton,
        ),
      ],
    );
    return Scaffold (
      body: Padding(
        padding: const EdgeInsets.only(top:8),
        child: Column(
          children: <Widget>[
            buttons,


          ],
        ),
      ),
    );
  }
} //ENDEF AUTOSCREEN - TabView screen for Manual controlling