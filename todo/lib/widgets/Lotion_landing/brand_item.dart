import 'package:flutter/material.dart';
import 'package:todo/widgets/Lotion_landing/image_widget.dart'; // Assuming image_widget.dart is in the same directory

class BrandItem extends StatelessWidget {
  final String brandName;
  final String imageUrl;

  const BrandItem({required this.brandName, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            ImageWidget(imageUrl: imageUrl),
            SizedBox(width: 16.0),
            Text(brandName, style: TextStyle(fontSize: 18.0)),
          ],
        ),
      ),
    );
  }
}
