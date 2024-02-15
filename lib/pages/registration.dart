import 'package:flutter/material.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({super.key});

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(children: [
      Positioned(
        top: -50,
        right: -150,
        child: Image.asset(
          'assets/images/abstract.png',
          width: 350,
          height: 350,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 240.0), // Set your padding here
        child: Column(
          children: <Widget>[
            const Text(
              'Registration',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 35, right: 35),
              child: Form(
                child: Column(
                  children: <Widget>[
                    // Add your form fields here
                    const TextField(
                        cursorColor: Colors.red,
                        decoration: InputDecoration(
                            hintText: 'First Name',
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            filled: true,
                            fillColor: Color.fromARGB(255, 234, 234, 234),
                            contentPadding: EdgeInsets.only(left: 10, top: 0),
                            floatingLabelBehavior:
                                FloatingLabelBehavior.never)),
                    const SizedBox(height: 15),
                    const TextField(
                        cursorColor: Colors.red,
                        decoration: InputDecoration(
                            hintText: 'Email',
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            filled: true,
                            fillColor: Color.fromARGB(255, 234, 234, 234),
                            contentPadding: EdgeInsets.only(left: 10, top: 0),
                            floatingLabelBehavior:
                                FloatingLabelBehavior.never)),
                    const SizedBox(height: 15),
                    const TextField(
                        cursorColor: Colors.red,
                        decoration: InputDecoration(
                            hintText: 'Password',
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            filled: true,
                            fillColor: Color.fromARGB(255, 234, 234, 234),
                            contentPadding: EdgeInsets.only(left: 10, top: 0),
                            floatingLabelBehavior:
                                FloatingLabelBehavior.never)),
                    const SizedBox(height: 25),
                    Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[
                            Color.fromARGB(255, 249, 169, 74),
                            Color.fromARGB(255, 255, 93, 106)
                          ],
                        ),
                      ),
                      child: TextButton(
                        onPressed: () {
                          // Handle button press here
                        },
                        child: const Text('Submit',
                            style: TextStyle(color: Colors.white)),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ])));
  }
}
