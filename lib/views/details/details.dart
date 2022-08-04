import 'package:flutter/material.dart';
import 'package:onlineshop/models/Product.dart';

class DetailsView extends StatelessWidget {
   Product product;
   DetailsView({ Key? key , required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: AppBar(
        backgroundColor: product.color,
        elevation: 0,
      ),
    );
  }
}
