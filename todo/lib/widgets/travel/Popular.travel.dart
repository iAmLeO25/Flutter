import 'package:flutter/material.dart';
import 'package:todo/widgets/travel/PopularCard.travel.dart';

import '../../models/Places.model.dart';

class PopularTravel extends StatelessWidget {
  List<PlaceCardModel> placesList = [
    PlaceCardModel(
        img:
            "https://images.pexels.com/photos/2450218/pexels-photo-2450218.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        description: "Jakarta, Indonesia",
        title: "Panorama City View"),
    PlaceCardModel(
        img:
            "https://images.pexels.com/photos/1518723/pexels-photo-1518723.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        description: "Sukakarya, Aceh, Indonesia",
        title: "Aerial View Of Sea"),
    PlaceCardModel(
        img:
            "https://images.pexels.com/photos/161293/prambanan-temple-java-hinduism-161293.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        description: "Indonesia",
        title: "Gray Concrete Buildings"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular Places',
                  style: TextStyle(fontSize: 24),
                ),
                Text('View more'),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            padding: EdgeInsets.only(left: 16),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: placesList.map((PlaceCardModel el) {
                  return PopularCardTravel(place: el);
                }).toList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
