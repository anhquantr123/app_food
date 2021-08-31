import 'package:app_food/constant/constants.dart';
import 'package:flutter/material.dart';

class DiscountCard extends StatelessWidget {
  const DiscountCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void showMessenger(String text) {
      ScaffoldMessenger.of(context)
          .showSnackBar(new SnackBar(content: Text(text)));
    }

    return Container(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                "Giảm giá",
                style:
                    TextStyle(fontSize: textSizetHeading, fontWeight: fontBold),
              ),
            ),
            Container(
              width: double.infinity,
              height: 180,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/anh1.jpg")),
                  borderRadius: BorderRadius.circular(borderRadius)),
              child: DecoratedBox(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(borderRadius),
                    gradient: LinearGradient(colors: [
                      Color(0xFFFF961F).withOpacity(0.5),
                      primaryColor.withOpacity(0.5)
                    ])),
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                      "Giảm Hết Cỡ",
                      style: TextStyle(fontSize: 36, color: Colors.white),
                      textAlign: TextAlign.center,
                    )),
                    Expanded(
                        child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        children: [
                          Text(
                            "Khuyễn mãi ngày 20/10",
                            style: TextStyle(
                                fontSize: textSizetHeading,
                                color: Colors.white),
                          ),
                          Text(" khuyen mai anh quan-23%",
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                    ))
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
