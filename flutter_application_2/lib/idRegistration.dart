import 'package:flutter/material.dart';
import 'package:flutter_application_2/loginpage.dart';
import 'package:flutter_application_2/vertifyPhone.dart';
import 'loginPage.dart';

class IdRegistration extends StatefulWidget {
  const IdRegistration({Key? key}) : super(key: key);

  @override
  State<IdRegistration> createState() => _IdRegistrationState();
}

class _IdRegistrationState extends State<IdRegistration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                height: 85,
              ),
              Center(
                child: Text(
                  "Take photo of\nYour ID",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                "Take a clear photo of the front of your\nID card",
                style: TextStyle(fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 35,
              ),
              Card(
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Container(
                  width: 248,
                  height: 150, // Adjust the height as needed
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                          height: 10), // Space between the icon and the text
                      Container(
                        width: double.infinity,
                        color:
                            Colors.grey[300], // Background color for the text
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          "Tap to take a photo",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                "skip for this session",
                style: TextStyle(fontWeight: FontWeight.w200),
              ),
              SizedBox(
                height: 28,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => VertifyPhonePage()));
                },
                child: Text(
                  "Continue",
                  style: TextStyle(),
                ),
                style: ButtonStyle(
                    minimumSize: WidgetStateProperty.all<Size>(Size(248, 38)),
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(18.0), // Adjust border radius
                      ),
                    ),
                    backgroundColor: WidgetStateProperty.all(Colors.black)),
              ),
              SizedBox(
                height: 142,
              ),
              Text(
                "Already have an account?",
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(
                height: 27,
              ),
              TextButton(
                onPressed: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => LoginPage()));
                },
                child: const Text(
                  "Log in",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14.0,
                      color: Colors.blue),
                ),
              ),
              SizedBox(
                height: 48,
              )
            ],
          ),
        ),
      ),
    );
  }
}
