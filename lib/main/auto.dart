import 'dart:async';
import 'package:flutter/material.dart';
import '../settings/settings.dart';
import '../location/location.dart';
import '../bluetooth/bluetooth.dart';

//DEF AUTOSCREEN - TabView screen for Automatic controlling
class AutoScreen extends StatefulWidget {
  const AutoScreen({super.key});
  @override
  State<AutoScreen> createState() => _AutoScreenState();
}

class _AutoScreenState extends State<AutoScreen> {
  late MyLocation loc = MyLocation();
  late Timer timer;

  @override
  void initState() {

    timer = Timer.periodic(const Duration(milliseconds: 100), (_) {
      loc.getLocation();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose(){
    timer?.cancel();
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
              builder: (context) => const Settings(),
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
            Text(
              loc.userLocation != null
                  ? 'Current location: \nlat: ${loc.userLocation?.latitude}\n  long: ${loc.userLocation?.longitude} '
                  : 'Error getting coordinates \n',
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.pink,fontSize: 20),),
          ],
        ),
      ),
    );
  }
} //ENDEF AUTOSCREEN - TabView screen for Manual controlling