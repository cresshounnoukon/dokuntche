import 'package:flutter/material.dart';
import 'package:invoice_app/features/product/widgets/product_item.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [ProductItem()],
    );
  }
}
