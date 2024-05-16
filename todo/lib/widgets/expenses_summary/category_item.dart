import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String text;

  const CategoryItem({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.grey[200],
      ),
      child: Text(text),
    );
  }
}
