import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ViewConsumer extends StatelessWidget {
  const ViewConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.lightGreen,
              ),
              customProfileText(
                header: "Consumer ID",
                data: "123 4455 566",
              ),
              customProfileText(
                header: "Name",
                data: "John",
              ),
              customProfileText(
                header: "Address",
                data: "Sree Nagar",
              ),
              customProfileText(
                header: "District",
                data: "Calicut",
              ),
              customProfileText(
                header: "PIn Code",
                data: "673501",
              ),
              customProfileText(
                header: "Phone Number",
                data: "1133556688",
              ),
              customProfileText(
                header: "Aadhaar Number",
                data: "008867453213",
              ),
              customProfileText(
                header: "E-mail",
                data: "john@gmail.com",
              ),
            ])));
  }
}

class customProfileText extends StatelessWidget {
  final String header;
  final String data;
  const customProfileText({
    super.key,
    required this.header,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(child: Text(header)),
      SizedBox(
        width: 5,
      ),
      Text(":"),
      SizedBox(
        width: 5,
      ),
      Text(data),
    ]);
  }
}
