import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MediumPlantCard extends StatelessWidget {
  String title;
  String url;
  String description;

  MediumPlantCard({
    required this.title,
    this.description = "",
    this.url =
        "https://cdn.pixabay.com/photo/2023/06/12/01/22/lotus-8057438_640.jpg",
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.network(
              url,
              fit: BoxFit.cover,
              height: 100,
              width: 100,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Plastic Tree description.',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                      'With artificial plants and trees, you can brighten up all your shady spots without worrying about their maintenance and care.'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
