import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/models/Product.dart';
import 'package:flutter_application_1/screens/details/components/body.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Color"),
              Row(
                children: <Widget>[
                  ColorDot(
                    color: Color(0xff356c95),
                    isSelected: true,
                  ),
                  ColorDot(
                      color: Color.fromARGB(255, 55, 149, 53),
                      isSelected: false),
                  ColorDot(
                      color: Color.fromARGB(255, 228, 240, 13),
                      isSelected: false),
                ],
              )
            ],
          ),
        ),
        RichText(
            text: TextSpan(style: TextStyle(color: kTextColor), children: [
          TextSpan(text: "Size\n"),
          TextSpan(
              text: "${product.size} cm",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
        ]))
      ],
    );
  }
}
