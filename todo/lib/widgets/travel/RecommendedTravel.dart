import 'package:flutter/material.dart';
import 'package:todo/models/Places.model.dart';
import 'MediumTravelCard.dart';

class RecommendedTravel extends StatelessWidget {
  List<String> places = ["China", "India", "Indonesia", "Bhutan"];
  List<PlaceCardModel> placesList = [
    PlaceCardModel(
        img:
            "https://images.pexels.com/photos/2916337/pexels-photo-2916337.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        description: " Mountain",
        title: "Indonesia, Jakarta"),
    PlaceCardModel(
        img:
            "https://images.pexels.com/photos/2474690/pexels-photo-2474690.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        description: "High Angle Photo of Beach",
        title: "Bali, Indonesia"),
    PlaceCardModel(
        img:
            "https://images.pexels.com/photos/2861894/pexels-photo-2861894.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        description: "Lake Near Mountains",
        title: "Jawa Timur, Indonesia"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 16),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recommended Places',
                  style: TextStyle(fontSize: 24),
                ),
                Text('View more'),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 8),
              child: Column(
                children: placesList.map((PlaceCardModel el) {
                  return MediumTravelCard(
                    title: el.title,
                    description: el.description,
                    url: el.img,
                  );
                }).toList(),
              ),
            )
          ],
        ));
  }
}
