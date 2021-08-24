import 'package:flutter/material.dart';

class BottomNaviagtionBar extends StatelessWidget {
  const BottomNaviagtionBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      width: double.infinity,
      //double.infinity lấy toàn bộ chiều dài hiện có
      height: 60,

      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, -7), blurRadius: 33, color: Color(0xFF6DAED9))
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.home)),
          IconButton(onPressed: () {}, icon: Icon(Icons.ac_unit)),
          IconButton(onPressed: () {}, icon: Icon(Icons.add_box)),
          IconButton(onPressed: () {}, icon: Icon(Icons.account_balance))
        ],
      ),
    );
  }
}
