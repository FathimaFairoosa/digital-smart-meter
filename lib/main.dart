import 'package:flutter/material.dart';
import 'package:iot/screens/bottomnavBar.dart';
import 'package:iot/screens/deviseControlscreen.dart';
import 'package:iot/screens/homescreen.dart';
import 'package:iot/screens/loginScreen.dart';
import 'package:iot/screens/profile.dart';
import 'package:iot/screen1.dart';
import 'package:iot/screens/userregstration.dart';
import 'package:iot/viewconsumer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage()
        //HomeScreen()
        //ProfileThreePage()
        //ViewConsumer(),
        //LoginScreen(),
        //userregstration(),
        //userregstration()
        //Screen1(),
        //ControlDevice()
        );
  }
}
