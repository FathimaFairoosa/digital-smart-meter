import 'package:flutter/material.dart';
import 'package:iot/constants/size.dart';

class ProfileThreePage extends StatelessWidget {
  static const String path = "lib/src/pages/profile/profile3.dart";

  ProfileThreePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(16.0, 5.0, 16.0, 10.0),
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        margin: const EdgeInsets.only(top: 16.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5.0)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.only(left: 96.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Alan John",
                                    style:
                                        Theme.of(context).textTheme.titleLarge,
                                  ),
                                  const ListTile(
                                    contentPadding: EdgeInsets.all(0),
                                    title: Text("KSEB2934"),
                                    //subtitle: Text("Kathmandu"),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10.0),
                          ],
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://png.pngtree.com/png-vector/20191110/ourmid/pngtree-avatar-icon-profile-icon-member-login-vector-isolated-png-image_1978396.jpg"),
                                fit: BoxFit.cover)),
                        margin: const EdgeInsets.only(left: 16.0),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          title: Text("User information"),
                        ),
                        Divider(),
                        ListTile(
                          title: Text("Email"),
                          subtitle: Text("butterfly.little@gmail.com"),
                          leading: Icon(Icons.email),
                        ),
                        ListTile(
                          title: Text("Phone"),
                          subtitle: Text("+977-9815225566"),
                          leading: Icon(Icons.phone),
                        ),
                        ListTile(
                          title: Text("Aadhaar Number"),
                          subtitle: Text("231212345656"),
                          leading: Icon(Icons.web),
                        ),
                        ListTile(
                          title: Text("Address"),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Heaven"),
                              Row(
                                children: [
                                  Text("District: calicut"),
                                  w10,
                                  Text("Pin Code: 657545")
                                ],
                              ),
                            ],
                          ),
                          leading: Icon(Icons.person),
                        ),
                        ListTile(
                          title: Text("Joined Date"),
                          subtitle: Text("15 February 2019"),
                          leading: Icon(Icons.calendar_view_day),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
