import 'package:flutter/material.dart';
import 'package:food_mania/screens/items_details.dart';
import 'package:food_mania/screens/main_screen.dart';
import 'package:food_mania/screens/restaurant_details.dart';
import 'package:food_mania/util/const.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constants.appName,
      theme: Constants.lightTheme,
      darkTheme: Constants.darkTheme,
      home: MainScreen(),
      // home: RestaurantDetails(),
      // home:ItemsDetails(),
    );
  }
}
