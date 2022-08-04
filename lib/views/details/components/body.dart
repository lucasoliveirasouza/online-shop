import 'package:flutter/material.dart';
import 'package:onlineshop/models/Product.dart';

class Body extends StatelessWidget {
  Product product;
  Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [],
      ),
    );
  }
}
