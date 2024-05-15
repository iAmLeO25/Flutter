import 'package:flutter/material.dart';

class DestinationItem extends StatelessWidget {
  final String title;
  final String location;
  final String imageUrl; // Modify to accept image URL

  DestinationItem(
      this.title, this.location, this.imageUrl); // Update constructor

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: NetworkImage(
                  imageUrl), // Use NetworkImage with the provided URL
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 8),
        Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        Text(location),
      ],
    );
  }
}
