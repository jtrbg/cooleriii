import 'package:flutter/material.dart';
import 'auto.dart';
import 'manual.dart';


//DEF HOMESCREEN - The main screen of the app
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  final tabs = TabBar(
    tabs: const <Widget>[
      Tab(text: 'Automatic',),
      Tab(text: 'Manual',),
    ],
    labelColor: Colors.lightBlue.shade900,
    indicator: UnderlineTabIndicator(
      borderSide: BorderSide(color: Colors.lightBlue.shade900,width: 4.0),
      insets: const EdgeInsets.only(bottom: 45),
    ),
    unselectedLabelColor: Colors.grey,
  );
  //build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DefaultTabController(
            length: 2,
            child: Stack(
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                ),
                Scaffold(
                    bottomNavigationBar: Padding(
                      padding: const EdgeInsets.only(bottom:0),
                      child: tabs,
                    ),
                    body: TabBarView(
                      physics: NeverScrollableScrollPhysics(),
                      children: <Widget>[
                        AutoScreen(),
                        ManualScreen(),
                      ],
                    )
                ),
              ],
            )
        )
    );
  }
} //ENDDEF HOMESCREEN

