import 'package:app_food/constant/constants.dart';
import 'package:app_food/getx/controller-category-item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'category-item.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({
    Key? key,
  }) : super(key: key);

  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      child: TabBar(
          indicatorSize: TabBarIndicatorSize.label,
          indicatorWeight: 2,
          labelPadding: EdgeInsets.symmetric(horizontal: 30),
          automaticIndicatorColorAdjustment: true,
          indicatorColor: primaryColor,
          labelColor: textColor,
          unselectedLabelColor: textLightColor.withOpacity(0.5),
          unselectedLabelStyle:
              TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
          labelStyle: TextStyle(fontSize: 18, fontWeight: fontBold),
          // indicator: BoxDecoration(
          //   borderRadius: BorderRadius.circular(10),
          //   color: Colors.yellow,
          //   border: BorderDirectional(bottom: BorderSide.none),
          // ),
          isScrollable: true,
          tabs: [
            Tab(
              child: Text("Món Tây"),
            ),
            Tab(
              child: Text("Món Việt"),
            ),
            Tab(
              child: Text("Món Tráng Miệng"),
            ),
            Tab(
              child: Text("Nước Ép"),
            )
          ]),
    );
  }
}
