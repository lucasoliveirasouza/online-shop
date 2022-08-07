import 'package:flutter/material.dart';
import 'package:onlineshop/models/Product.dart';
import 'package:onlineshop/util/constants.dart';

class AddToCart extends StatelessWidget {
  final Product product;
  AddToCart({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Row(
        children: <Widget>[],
      ),
    );
  }
}
