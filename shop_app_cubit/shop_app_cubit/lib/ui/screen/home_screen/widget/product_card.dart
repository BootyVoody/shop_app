import 'package:flutter/material.dart';
import 'package:shop_app_cubit/model/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Card(
        child: Image.asset(product.image),
      );
}
