import 'package:flutter/material.dart';
import 'package:todo/widgets/expenses_summary/category_item.dart';

class ExpenseSummaryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Expenses'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildSummarySection(),
            buildCategorySection(),
            buildIncomingExpensesSection(),
            const CategoryItem(
              text: '',
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSummarySection() {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              // Replace with your desired icon (e.g., Icons.monetization_on)
              Icon(Icons.attach_money),
              SizedBox(width: 8.0),
              Text(
                'Summary (private)',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 8.0),
          Text('07 Feb, 2019'),
          SizedBox(height: 4.0),
          Text(
            '18% more than last month',
            style: TextStyle(color: Colors.red),
          ),
        ],
      ),
    );
  }

  Widget buildCategorySection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Text(
            'CATEGORIES',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Text('7 total'),
          IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed: () {
              // Handle "MORE" button press (navigate to another screen, etc.)
            },
          ),
        ],
      ),
    );
  }

  Widget buildIncomingExpensesSection() {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              // Replace with your desired icon (e.g., Icons.arrow_downward)
              Icon(Icons.arrow_downward),
              SizedBox(width: 8.0),
              Text(
                'INCOMING EXPENSES',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 8.0),
          Text('12 total'),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              // Handle button press (add expense, etc.)
            },
            child: Text('CONFIRM 12.54 USD'),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
