import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iot/constants/size.dart';
import 'package:iot/screens/deviseControlscreen.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        //appBar: AppBar(),
        body: Column(
          children: [
            Container(
              height: h * 0.6,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      const Color.fromARGB(255, 214, 230, 243),
                      Color.fromARGB(255, 65, 133, 200),
                    ],
                  ),
                  border: Border.all(style: BorderStyle.none),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40))),
              child: Column(
                children: [
                  h15,
                  CircularPercentIndicator(
                    radius: 60.0,
                    lineWidth: 10.0,
                    percent: 1.0,
                    center: Text(
                      "18 v",
                      style: TextStyle(fontSize: 50),
                    ),
                    progressColor:
                        Color.fromARGB(255, 42, 126, 194).withOpacity(0.15),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Usage",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black45),
                            ),
                            Text("116 unit",
                                style: TextStyle(
                                  fontSize: 20,
                                )),
                          ],
                        ),
                        Column(
                          children: [
                            Text("Amount",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black45)),
                            Text("456",
                                style: TextStyle(
                                  fontSize: 20,
                                ))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: h * .2,
                    width: w * 0.4,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 70, 95, 127),
                        border: Border.all(style: BorderStyle.none),
                        borderRadius: BorderRadius.circular(7)),
                    child: Column(
                      children: [
                        h25,
                        Icon(
                          Icons.payment,
                          size: 28,
                          color: Colors.white,
                        ),
                        h15,
                        Text(
                          "Pay Bill",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w800,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ControlDevice(),
                    )),
                    child: Container(
                      height: h * .2,
                      width: w * 0.4,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 70, 95, 127),
                          border: Border.all(style: BorderStyle.none),
                          borderRadius: BorderRadius.circular(7)),
                      child: Column(
                        children: [
                          h25,
                          Icon(
                            Icons.graphic_eq,
                            size: 28,
                            color: Colors.white,
                          ),
                          h15,
                          Text(
                            "Control Device",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
