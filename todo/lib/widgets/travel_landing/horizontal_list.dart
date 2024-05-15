import 'package:flutter/material.dart';
import 'destination_item.dart';

class HorizontalList extends StatelessWidget {
  final List<DestinationItem> items;

  HorizontalList({required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        separatorBuilder: (context, index) => SizedBox(width: 16),
        itemBuilder: (context, index) {
          return items[index];
        },
      ),
    );
  }
}
