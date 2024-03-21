import 'package:flutter/material.dart';
import 'package:iot/screens/payedBillScreen.dart';

class BillHistory extends StatelessWidget {
  const BillHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            elevation: 3,
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: ListTile(
              title: Text(
                "45354565 - Syam",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(Icons.date_range, size: 18, color: Colors.blue),
                      SizedBox(width: 5),
                      Text(
                        'Bill Date: 01-12-2024',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(Icons.date_range, size: 18, color: Colors.blue),
                      SizedBox(width: 5),
                      Text(
                        'Payed on: 01-15-2024',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(Icons.location_on, size: 18, color: Colors.blue),
                      SizedBox(width: 5),
                      Text(
                        'Amount: 678',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                ],
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => PayedBillscreen(),
                ));
                // Add onTap functionality if needed
              },
            ),
          );
        },
        itemCount: 10,
      )),
    );
  }
}
