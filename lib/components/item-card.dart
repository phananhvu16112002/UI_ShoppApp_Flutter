import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/models/Product.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final VoidCallback press;
  const ItemCard({super.key, required this.press, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: EdgeInsets.all(kDefaultPadding),
              height: 180,
              width: 160,
              decoration: BoxDecoration(
                  color: products[0].color,
                  borderRadius: BorderRadius.circular(16)),
              child: Hero(
                  tag: "${product.id}", child: Image.asset(products[0].image))),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
            child: Text(products[0].title,
                style: TextStyle(color: kTextLightColor)),
          ),
          Text("\$${product.price}",
              style: TextStyle(fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}
