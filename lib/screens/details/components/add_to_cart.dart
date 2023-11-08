import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/models/Product.dart';
import 'package:flutter_svg/svg.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: kDefaultPadding),
      child: Row(children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right:kDefaultPadding),
          child: Container(
            
              height: 50,
              width: 58,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border:
                      Border.all(color: product.color)),
              child: IconButton(
                icon: SvgPicture.asset(
                    "assets/icons/add_to_cart.svg"),
                onPressed: () {},
              )),
        ),
        Expanded(
          child: Container(
              height: 50,
              decoration: BoxDecoration(color: product.color,borderRadius: BorderRadius.circular(17)),
              child: Center(
                child: Text(
                  "Buy Now".toUpperCase(),
                  style: TextStyle(fontSize: 17,color:Colors.white,fontWeight: FontWeight.bold),
                ),
              )),
        )
      ]),
    );
  }
}