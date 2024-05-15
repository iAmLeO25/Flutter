import 'package:flutter/material.dart';

import 'MediumPlantCard.dart';

class LatestProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      margin: EdgeInsets.only(top: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Latest Products',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          MediumPlantCard(
              title: "Title 1",
              url:
                  "https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_640.jpg"),
          MediumPlantCard(
            title: "Title 2",
            description: "Basic description",
          ),
          MediumPlantCard(
              title: "Title, 3",
              url:
                  "https://cdn.pixabay.com/photo/2023/12/24/15/03/bougainvillea-8467373_1280.jpg"),
          MediumPlantCard(title: "Title 4"),
        ],
      ),
    );
  }
}
