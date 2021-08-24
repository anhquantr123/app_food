import 'package:app_food/widget/search-box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'card-item-list.dart';
import 'category-list.dart';
import 'discount-card.dart';

class BodyHome extends StatefulWidget {
  BodyHome({Key? key}) : super(key: key);

  @override
  _BodyHomeState createState() => _BodyHomeState();
}

class _BodyHomeState extends State<BodyHome> {
  // method display
  void displayMess(String? text) {
    ScaffoldMessenger.of(context)
        .showSnackBar(new SnackBar(content: Text(text!)));
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchBox(
            onchanged: (value) {},
          ),
          CategoryList(),
          ListCardItem(),
          DiscountCard()
        ],
      ),
    );
  }
}
