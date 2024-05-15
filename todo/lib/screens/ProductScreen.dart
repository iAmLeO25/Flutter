import 'package:flutter/material.dart';
import 'package:todo/widgets/Product_landing/category_item.dart';
//import 'package:todo/widgets/Product_landing/product_item.dart';

class ProductScreren extends StatelessWidget {
  final String imageUrl =
      'https://plus.unsplash.com/premium_photo-1675896084254-dcb626387e1e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D'; // Replace with your image URL

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1534528741775-53994a69daeb?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cGVvcGxlfGVufDB8fDB8fHww"),
            ),
            SizedBox(width: 10), // Space between avatar and title
            Text('Hello, Mariam'),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://plus.unsplash.com/premium_photo-1682309524785-cf2288f7b544?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bm90aWZpY2F0aW9uJTIwYmVsbCUyMGljb258ZW58MHx8MHx8fDA%3D'), // Your avatar image URL
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              child: Stack(
                children: [
                  Image.network(imageUrl, fit: BoxFit.cover),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    'New product for your skin',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Shop Now'),
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('See All'),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                CategoryItem(title: 'ALL'),
                CategoryItem(title: 'Face'),
                CategoryItem(title: 'Body'),
                CategoryItem(title: 'Hair'),
              ],
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Bestsellers',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('See All'),
                  ),
                ],
              ),
            ),
            // Add your product item widgets here
          ],
        ),
      ),
    );
  }
}
