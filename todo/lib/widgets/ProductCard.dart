import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 500,
            child: Image.network(
              "https://images.unsplash.com/photo-1584710744957-8b7d0049e9a4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGluc2VjdHxlbnwwfHwwfHx8MA%3D%3D",
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 16),
            child: const Text(
              'Bee for View',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Price: View Nu.300',
                style: TextStyle(fontSize: 32),
              ),
              Icon(Icons.remove_red_eye_outlined)
            ],
          ),
          Container(
            child: const Text(
              'This is the description of a Bee being view on the platform',
              style: TextStyle(fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}
