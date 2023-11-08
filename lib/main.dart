import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/screens/home_screen.dart';


void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      theme: ThemeData(textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    home:HomeScreen()
    );
  }
}