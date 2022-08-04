import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:onlineshop/models/Product.dart';
import 'package:onlineshop/util/constants.dart';

class DetailsView extends StatelessWidget {
  Product product;
  DetailsView({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: AppBar(
        backgroundColor: product.color,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset(
            "assets/icons/back.svg",
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/search.svg",
              color: kTextColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/cart.svg",
              color: kTextColor,
            ),
          ),
          SizedBox(
            width: kDefaultPaddin / 2,
          ),
        ],
      ),
    );
  }
}
