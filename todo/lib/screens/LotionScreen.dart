import 'package:flutter/material.dart';
import 'package:todo/widgets/Lotion_landing/brand_item.dart'; // Assuming brand_item.dart is in the same directory

class LotionScreen extends StatelessWidget {
  final List<Brand> brands; // List of brand data

  const LotionScreen({required this.brands});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aurora'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Top section with text and icon (replace with your implementation)
              // ...

              SizedBox(height: 16.0), // Add spacing

              // Grid view for displaying brands
              GridView.count(
                shrinkWrap: true, // Prevent grid from expanding the screen
                crossAxisCount: 2, // Two items per row
                childAspectRatio: 3.0, // Adjust width-to-height ratio as needed
                children: brands
                    .map((brand) => BrandItem(
                        brandName: brand.name, imageUrl: brand.imageUrl))
                    .toList(),
              ),

              SizedBox(height: 16.0), // Add spacing

              // Button (replace with your implementation)
              // ...
            ],
          ),
        ),
      ),
    );
  }
}

class Brand {
  final String name;
  final String imageUrl; // Pre-defined image URL for the brand

  const Brand({required this.name, required this.imageUrl});
}
