import 'package:app_food/screens/home_screen/widget-home/app-bar.dart';
import 'package:app_food/screens/home_screen/widget-home/body-home.dart';
import 'package:app_food/screens/home_screen/widget-home/bottom-nav-bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        bottomNavigationBar: BottomNaviagtionBar(),
        appBar: AppBarHome(context),
        body: BodyHome(),
      ),
    );
  }
}
