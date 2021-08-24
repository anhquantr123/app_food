import 'package:app_food/constant/constants.dart';
import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  final ValueChanged<String> onchanged;
  const SearchBox({
    Key? key,
    required this.onchanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
          border: Border.all(color: secondColor.withOpacity(0.3)),
          borderRadius: BorderRadius.circular(25)),
      child: TextField(
        onChanged: onchanged,
        decoration: InputDecoration(
            border: InputBorder.none,
            icon: Icon(
              Icons.search_outlined,
              size: 28,
              color: secondColor,
            ),
            hintText: "Search...",
            hintStyle: TextStyle(color: secondColor)),
      ),
    );
  }
}
