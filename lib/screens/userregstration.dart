import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iot/constants/size.dart';
import 'package:iot/models/registrationModel.dart';

class Userregstration extends StatelessWidget {
  Userregstration({super.key});

  TextEditingController usernameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController housenoController = TextEditingController();
  TextEditingController pinnumberController = TextEditingController();
  TextEditingController districtController = TextEditingController();
  TextEditingController phonenumController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController adharnumController = TextEditingController();
  // TextEditingController usernameController = TextEditingController();
  // TextEditingController usernameController = TextEditingController();
  // TextEditingController usernameController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              h10,
              TextFormField(
                controller: usernameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter your name";
                  }
                },
                decoration: InputDecoration(
                    labelText: "Full name",
                    filled: true,
                    fillColor: Color.fromARGB(255, 235, 250, 253),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: addressController,
                decoration: InputDecoration(
                  labelText: "Address",
                  filled: true,
                  fillColor: Color.fromARGB(255, 219, 237, 241),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: housenoController,
                      decoration: InputDecoration(
                        labelText: "House Number",
                        filled: true,
                        fillColor: Color.fromARGB(255, 219, 237, 241),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: TextFormField(
                      controller: pinnumberController,
                      validator: (value) {
                        print(value);
                        if (value == null || value.isEmpty) {
                          return 'enter pin code';
                        }
                        if (value.length < 6) {
                          return 'pin should contain 6 numbers';
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Pin number",
                        filled: true,
                        fillColor: Color.fromARGB(255, 219, 237, 241),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: districtController,
                validator: (value) {
                  print(value);
                  if (value == null || value.isEmpty) {
                    return 'enter district';
                  }
                },
                decoration: InputDecoration(
                  labelText: "District",
                  filled: true,
                  fillColor: Color.fromARGB(255, 219, 237, 241),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              h20,
              TextFormField(
                controller: phonenumController,
                keyboardType: TextInputType.number,
                validator: (value) {
                  print(value);
                  if (value == null || value.isEmpty) {
                    return 'enter phone number';
                  }
                  if (value.length < 10 || value.length > 10) {
                    return 'phone number should contain only 10 numbers';
                  }
                },
                decoration: InputDecoration(
                    labelText: "Phone Number",
                    filled: true,
                    fillColor: Color.fromARGB(255, 235, 250, 253),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: adharnumController,
                validator: (value) {
                  print(value);
                  if (value == null || value.isEmpty) {
                    return 'enter Aadhaar number';
                  }
                  if (value.length < 12 || value.length > 12) {
                    return 'number should contain 12 numbers';
                  }
                },
                decoration: InputDecoration(
                    labelText: "Aadhaar Number",
                    filled: true,
                    fillColor: Color.fromARGB(255, 235, 250, 253),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                    labelText: "E-Mail",
                    filled: true,
                    fillColor: Color.fromARGB(255, 235, 250, 253),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  height: 55,
                  width: size.width,
                  decoration: BoxDecoration(
                      border: Border.all(style: BorderStyle.none),
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromARGB(255, 10, 58, 97)),
                  child: Center(
                      child: Text(
                    "Register",
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w800,
                        color: Colors.white),
                  )))
            ],
          ),
        ),
      ),
    );
  }

  register() async {
    final reg = await UserRegModel(
        name: usernameController.text,
        address: addressController.text,
        district: districtController.text,
        pinnumber: pinnumberController.text,
        housenum: housenoController.text,
        phone: phonenumController.text,
        adharnum: adharnumController.text,
        email: emailController.text);
    
    
  }
}
