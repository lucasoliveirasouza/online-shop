import 'package:flutter/material.dart';
import 'package:onlineshop/models/Product.dart';
import 'package:onlineshop/util/constants.dart';
import 'package:onlineshop/views/home/components/categories.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "Women",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Column(
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
        )
      ],
    );
  }
}
