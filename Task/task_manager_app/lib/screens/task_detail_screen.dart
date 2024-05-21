import 'package:flutter/material.dart';

class TaskDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Details')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Task', style: TextStyle(fontSize: 24)),
            SizedBox(height: 16),
            Text('Description'),
          ],
        ),
      ),
    );
  }
}
