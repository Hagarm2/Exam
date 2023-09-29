import 'package:exam/firstscreen.dart';
import 'package:exam/secondscreen.dart';
import 'package:exam/thirdscreen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:FirstScreen.routename,
      routes: {
        FirstScreen.routename:(context) => FirstScreen(),
        SecondScreen.routename:(context) => SecondScreen(),
        ThirdScreen.routename:(context) => ThirdScreen(),
      },
    );
  }
}
