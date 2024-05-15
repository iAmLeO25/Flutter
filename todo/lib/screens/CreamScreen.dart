import 'package:flutter/material.dart';

class CreamScreen extends StatelessWidget {
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
              // Top section with text and icon
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Explore an unrivaled selection of\nmakeup, skincare, hair, fragrance & more',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  SizedBox(width: 16.0),
                  //SvgPicture.asset('assets/arrow_right.svg'), // Replace with your SVG asset path
                ],
              ),
              SizedBox(height: 16.0), // Add spacing

              // Hero image (replace with your image URL)
              Container(
                height: 200.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1602409339188-95d178a611a0?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8bG90aW9ufGVufDB8fDB8fHww'), // Replace with your image URL
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              SizedBox(height: 16.0), // Add spacing

              // Button
              ElevatedButton(
                onPressed: () => {}, // Add functionality for the button
                child: Text('Get started →'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
