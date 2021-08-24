import 'package:app_food/constant/constants.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String image, title, price;
  const ItemCard({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          width: size.width / 2 - 10,
          margin: EdgeInsets.fromLTRB(20, 20, 0, 20),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 2),
                  blurRadius: 20,
                  color: Color(0xFFB0CCE1).withOpacity(0.5),
                )
              ]),
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: primaryColor.withOpacity(0.2),
                      shape: BoxShape.circle),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset(
                      "$image",
                      width: 130,
                      height: 130,
                      fit: BoxFit.fill,
                    ),
                  )),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                height: 50,
                child: Text(
                  "$title",
                  style:
                      TextStyle(fontSize: textSizeBody, fontWeight: fontBold),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                height: 20,
                child: Text(
                  "$price VNĐ",
                  style: TextStyle(
                      fontSize: textSizeBody,
                      fontWeight: fontBold,
                      color: textLightColor.withOpacity(0.5)),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
