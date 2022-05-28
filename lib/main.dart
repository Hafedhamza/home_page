import 'package:flutter/material.dart';
import 'package:home_page/colors.dart';
import 'package:home_page/main.dart';
import 'package:home_page/screens/home/home_screen.dart';
import 'colors.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Homepage',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: homescreen(),
      
    );
  }

}