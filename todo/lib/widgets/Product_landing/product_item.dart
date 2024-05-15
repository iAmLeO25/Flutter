import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String imageUrl; // Add image URL property
  final String title; // Add title property
  final double price; // Add price property

  const ProductItem({
    required this.imageUrl,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        // Design your product item layout here
        );
  }
}
