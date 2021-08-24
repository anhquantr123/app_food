import 'package:app_food/constant/constants.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final Function() press;
  const CategoryItem({
    Key? key,
    required this.title,
    this.isActive = false,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Text(title,
                style: isActive
                    ? TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.bold,
                        fontSize: textSizeBody)
                    : TextStyle(
                        color: textLightColor.withOpacity(0.5),
                        fontWeight: FontWeight.bold,
                        fontSize: textSizeBody - 2)),
            // if (isActive)
            //   AnimatedPositioned(
            //     duration: Duration(milliseconds: 400),
            //     child: Container(
            //       margin: EdgeInsets.symmetric(vertical: 5),
            //       height: 3,
            //       width: 50,
            //       decoration: BoxDecoration(
            //           color: primaryColor,
            //           borderRadius: BorderRadius.circular(20)),
            //     ),
            //   )
          ],
        ),
      ),
    );
  }
}
