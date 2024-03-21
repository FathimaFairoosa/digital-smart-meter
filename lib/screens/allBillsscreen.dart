import 'package:flutter/material.dart';
import 'package:iot/screens/viewbillScreen.dart';

class AllBills extends StatelessWidget {
  const AllBills({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: ListView.builder(
        itemBuilder: (context, index) {
          return
          InkWell(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewBillscreen(),)),
            child: ListTile(
              title: Text("2346567698"),
              subtitle: Text(
                "01-02-2024",
                style: TextStyle(),
              ),
              trailing: Text(
                "678",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
              ),
            ),
          );
        },
        itemCount: 5,
      )),
    );
  }
}
