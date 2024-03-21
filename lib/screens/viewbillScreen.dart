import 'package:flutter/widgets.dart';
import 'package:iot/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:iot/screens/paymentScreen.dart';

class ViewBillscreen extends StatelessWidget {
  const ViewBillscreen({super.key});

  @override
  Widget build(BuildContext context) {
    h =MediaQuery.of(context).size.height;
    w =MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(//height: h!*0.5,width: w!*0.9,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 194, 139, 197),
                      border: Border.all(style: BorderStyle.none),
                      borderRadius: BorderRadius.circular(7)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        h15,
                        Row(
                          children: [
                            w15,
                            Container(
                              child: Image.asset('assets/images/kseb.png'),
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                               color: Colors.white,
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(5)
                    ),
                            ),w10,
                            Expanded(child: Text("KSEB",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Color.fromARGB(255, 9, 20, 69)),))
                          ],
                        ),
                        Divider(),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Bill Details",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                              h10,
                              Padding(
                                padding: const EdgeInsets.only(left:  10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        billlDetailsText(header: 'Consumer no.',details: "123456",),
                                        h5,
                                        billlDetailsText(header: 'Consumer name', details: 'syam'),
                                        h5,
                                        billlDetailsText(header: 'Bill date', details: '12/3/24'),
                                        h5,
                                        billlDetailsText(header: 'Due date', details: '12/4/24'),
                                        h5,
                                        billlDetailsText(header: 'Disconnect date', details: '23/4/24'),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      h15,
                      Center(
                        child: Container(
                          height: h!*0.15,
                          width: w!*0.75,
                          decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(children: [
                              Icon(Icons.currency_rupee),Text("1788.0")
                            ],),
                            h10,
                            Divider(),
                            h10,
                            Text("Due date: 2024-3-27")
                          ],
                        ),
                        ),
                      ),
                      h15
                      ],
                    ),),
                  ),
                  //h10,
                  //Text(data)
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(style: BorderStyle.none),
                        borderRadius: BorderRadius.circular(7),
                        color: Color.fromARGB(255, 216, 200, 150),
                      ),
                      child: Column(
                        children: [
                          ListTile(
                        title: Text("2346567698"),
                        subtitle: Text("01-02-2024",style: TextStyle(),),
                        trailing: Text("678",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w800),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        child: Divider(color: Colors.black87,),
                      ),
                      ListTile(
                        title: Text("2346567698"),
                        subtitle: Text("01-02-2024",style: TextStyle(),),
                        trailing: Text("678",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w800),),
                      ),
                        ],
                      )
                    ),
                  ),
                ],
              ),
            ),
        
            InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Bill(),
                    )),
              child: Container(
                width: w,
                height: 50,
                color: Color.fromARGB(255, 5, 52, 92),
                child: Center(child: Text("Proceed To Pay",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w800,color: Colors.white),)),
              ),
            )
        
          ],
        ),
      ),
    );
  }
}

class billlDetailsText extends StatelessWidget {
  final String header;
  final String details;
  const billlDetailsText({
    super.key, required this.header, required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(width: w!*0.4,
        child: Text(header),),
        Text(":"),
        Container(width: w!*0.3,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(details),
          ],
        ),),
     ],
    );
  }
}
