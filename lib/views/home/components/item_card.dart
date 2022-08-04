import 'package:flutter/material.dart';
import 'package:onlineshop/models/Product.dart';
import 'package:onlineshop/util/constants.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  ItemCard({Key? key, required this.product, required this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(kDefaultPaddin),
          height: 180,
          width: 160,
          decoration: BoxDecoration(
            color: products[0].color,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Image.asset(products[0].image),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin/4),
          child: Text(
            products[0].title,
            style: TextStyle(
              color: kTextLightColor,
            ),
          ),
        ),
        Text(
          "\$234",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
