import 'package:flutter/material.dart';

import 'card-item.dart';

class ListCardItem extends StatelessWidget {
  const ListCardItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ItemCard(
                image: "assets/images/mon_tay1.jpg",
                title: "Thịt nướng kiểu pháp",
                price: "250.000"),
            ItemCard(
                image: "assets/images/mon_tay1.jpg",
                title: "Thịt nướng kiểu pháp",
                price: "250.000"),
            ItemCard(
                image: "assets/images/mon_tay1.jpg",
                title: "Thịt nướng kiểu pháp",
                price: "250.000"),
            ItemCard(
                image: "assets/images/mon_tay1.jpg",
                title: "Thịt nướng kiểu pháp",
                price: "250.000"),
            ItemCard(
                image: "assets/images/mon_tay1.jpg",
                title: "Thịt nướng kiểu pháp",
                price: "250.000"),
          ],
        ));
  }
}
