import 'package:app_food/constant/constants.dart';
import 'package:app_food/screens/details/detail-home-screen.dart';
import 'package:app_food/screens/home_screen/home-screen.dart';
import 'package:app_food/screens/home_screen/widget-home/bottom-nav-bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home:DefaultTabController(
        length: 4,
        child: Scaffold(
          bottomNavigationBar: BottomNaviagtionBar(),
          body: TabBarView(children: [
            HomeScreen(),
            DetailHomeScreen(),
            HomeScreen(),
            DetailHomeScreen()
          ],),
        ),),
    );
  }
}
