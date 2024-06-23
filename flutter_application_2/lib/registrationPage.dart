import 'package:flutter/material.dart';
import 'package:flutter_application_2/loginPage.dart';
import 'package:flutter_application_2/loginpage.dart';
import 'package:flutter_application_2/loginPage.dart' as CapitalLoginPage;
import 'costumTextField.dart';
import 'idRegistration.dart';


class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
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
                  "Registration\nyour account",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Center(
                child: CustomTextField(
                  initialValue: '',
                  textAlign: TextAlign.left,
                  hintText: 'Fullname',
                  obscureText: false,
                  margin: EdgeInsets.only(bottom: 13),
                ),
              ),
              Center(
                child: CustomTextField(
                  initialValue: '',
                  textAlign: TextAlign.left,
                  hintText: 'Identification number',
                  obscureText: false,
                  margin: EdgeInsets.only(bottom: 13),
                ),
              ),
              Center(
                child: CustomTextField(
                  initialValue: '',
                  textAlign: TextAlign.left,
                  hintText: 'Email',
                  obscureText: false,
                  margin: EdgeInsets.only(bottom: 13),
                ),
              ),
              Center(
                child: CustomTextField(
                  initialValue: '',
                  textAlign: TextAlign.left,
                  hintText: 'Password',
                  obscureText: true,
                  margin: EdgeInsets.only(bottom: 13),
                ),
              ),
              Center(
                child: CustomTextField(
                  initialValue: '',
                  textAlign: TextAlign.left,
                  hintText: 'Confirm password',
                  obscureText: true,
                ),
              ),
              SizedBox(
                height: 35,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => IdRegistration()));
                },
                child: Text(
                  "Continue",
                  style: TextStyle(),
                ),
                style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all<Size>(Size(248, 38)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(18.0), // Adjust border radius
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all(Colors.black)),
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
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => LoginPage()));
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
