import 'package:flutter/material.dart';
import 'package:onlineshop/util/constants.dart';
import 'package:onlineshop/views/home/components/categories.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
      ],
    );
  }
}
