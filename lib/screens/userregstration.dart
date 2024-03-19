
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class userregstration extends StatelessWidget {
  userregstration({super.key});

  //TextEditingController usernameController = TextEditingController();
  //TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              SizedBox(
                height: 30,
              ),
              TextFormField(
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
                      decoration: InputDecoration(
                        labelText: "District",
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
                decoration: InputDecoration(
                    labelText: "E-Mail",
                    filled: true,
                    fillColor: Color.fromARGB(255, 235, 250, 253),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    //print("hello");
                    if (_formKey.currentState!.validate()) {
                      print("success");
                    } else {
                      print("Failure");
                    }
                  },
                  child: Text("Submit"))
            ],
          ),
        ),
      ),
    );
  }
}
