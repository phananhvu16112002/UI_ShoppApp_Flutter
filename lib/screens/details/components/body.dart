import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/models/Product.dart';
import 'package:flutter_application_1/screens/details/components/add_to_cart.dart';
import 'package:flutter_application_1/screens/details/components/cart_counter.dart';
import 'package:flutter_application_1/screens/details/components/color_and_size.dart';
import 'package:flutter_application_1/screens/details/components/counter_with_fav_btn.dart';
import 'package:flutter_application_1/screens/details/components/desctiption.dart';
import 'package:flutter_application_1/screens/details/components/product_title_with_image.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Column(
      children: <Widget>[
        SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                    height: 500,
                    margin: EdgeInsets.only(top: size.height * 0.3),
                    padding: EdgeInsets.only(
                        top: size.height * 0.12,
                        left: kDefaultPadding,
                        right: kDefaultPadding),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            topRight: Radius.circular(24))),
                    child: Column(
                      children: <Widget>[
                        ColorAndSize(product: product),
                        Description(product: product),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                CartCounter(),
                                CounterWithFavBtn(),
                              ],
                            ),
                            AddToCart(product: product),
                          ],
                        ),
                      ],
                    )),
                ProductTitleWithImage(product: product),
              ],
            ))
      ],
    ));
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    super.key,
    required this.color,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2.5),
        margin: EdgeInsets.only(
            top: kDefaultPadding / 4, left: kDefaultPadding / 2),
        height: 24,
        width: 24,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: isSelected ? color : Colors.transparent)),
        child: DecoratedBox(
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ));
  }
}
