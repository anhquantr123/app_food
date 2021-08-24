import 'package:app_food/constant/constants.dart';
import 'package:flutter/material.dart';

AppBar AppBarHome(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: Icon(
        Icons.menu_open_rounded,
        size: iconSize,
      ),
      onPressed: () {},
    ),
    centerTitle: true,
    title: Text(
      "AnhquanFood",
      style: TextStyle(color: primaryColor),
    ),
    actions: [
      IconButton(onPressed: () {}, icon: Icon(Icons.notifications_on_outlined))
    ],
  );
}
