import 'package:flutter/material.dart';
import 'package:onlineshop/models/Product.dart';
import 'package:onlineshop/util/constants.dart';
import 'package:onlineshop/views/details/components/add_to_cart.dart';
import 'package:onlineshop/views/details/components/color_and_size.dart';
import 'package:onlineshop/views/details/components/counter_with_fav_btn.dart';
import 'package:onlineshop/views/details/components/product_title_with_image.dart';

class Body extends StatelessWidget {
  Product product;
  Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.15,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin,
                  ),
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      ColorAndSize(product: (product)),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: kDefaultPaddin / 2),
                        child: Text(
                          product.description,
                          style: TextStyle(
                            height: 1.5,
                          ),
                        ),
                      ),
                      SizedBox(height: kDefaultPaddin / 2),
                      CounterWithFavBtn(),
                      SizedBox(height: kDefaultPaddin / 2),
                      AddToCart(),
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
