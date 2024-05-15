import 'package:flutter/material.dart';
import 'package:todo/widgets/travel_landing/destination_item.dart';
import 'package:todo/widgets/travel_landing/horizontal_list.dart';
import 'package:todo/widgets/travel_landing/section_title.dart';

class DiscoveryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Discovery',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://i.pinimg.com/564x/62/51/87/62518789d74e0ea06fd3f4d7b5155c24.jpg'), // Your avatar image URL
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(40.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "You're in Prague",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                  hintText: 'Where do you want to go',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(12),
                ),
              ),
            ),
            SizedBox(height: 16),
            SectionTitle(title: 'For you'),
            SizedBox(height: 8),
            HorizontalList(
              items: [
                DestinationItem('Teide', 'Tenerife, SPN',
                    'https://images.unsplash.com/photo-1500530855697-b586d89ba3ee?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fHRyYXZlbCUyMGRlc3RpbmF0aW9ucyUyMFRlaWRlfGVufDB8fDB8fHww'), // Use URL for the image here
                DestinationItem('Casa Batlló', 'Barcelona, SPN',
                    'https://images.unsplash.com/photo-1569847073856-df49f586af18?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8dHJhdmVsJTIwZGVzdGluYXRpb25zJTIwQmFyY2Vsb25hfGVufDB8fDB8fHww'), // Use URL for the image here
                DestinationItem('Sagrada Familia', 'Madrid, SPN',
                    'https://images.unsplash.com/photo-1504598318550-17eba1008a68?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8dHJhdmVsJTIwZGVzdGluYXRpb25zJTIwU2FncmFkYSUyMEZhbWlsaWF8ZW58MHx8MHx8fDA%3D'), // Use URL for the image here
              ],
            ),
            SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: Text('+ New trip'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.yellow,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            SectionTitle(title: 'Top journeys'),
            SizedBox(height: 8),
            HorizontalList(
              items: [
                DestinationItem('Destination 1', 'Location 1',
                    'https://images.unsplash.com/photo-1605130284535-11dd9eedc58a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dHJhdmVsJTIwZGVzdGluYXRpb25zfGVufDB8fDB8fHww'), // Use URL for the image here
                DestinationItem('Destination 2', 'Location 2',
                    'https://images.unsplash.com/photo-1518807920409-e8846289e251?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHRyYXZlbCUyMGRlc3RpbmF0aW9uc3xlbnwwfHwwfHx8MA%3D%3D'), // Use URL for the image here
                DestinationItem('Destination 3', 'Location 3',
                    'https://images.unsplash.com/photo-1605130237448-47948e90646a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fHRyYXZlbCUyMGRlc3RpbmF0aW9uc3xlbnwwfHwwfHx8MA%3D%3D'), // Use URL for the image here
              ],
            ),
          ],
        ),
      ),
    );
  }
}
