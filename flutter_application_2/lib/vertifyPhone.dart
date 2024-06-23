import 'package:flutter/material.dart';
import 'package:flutter_application_2/loginpage.dart';
import 'costumTextField.dart';
import 'homepage.dart';
import 'loginPage.dart';
class VertifyPhonePage extends StatefulWidget {
  const VertifyPhonePage({Key? key}) : super(key: key);

  @override
  State<VertifyPhonePage> createState() => _VertifyPhonePageState();
}

class _VertifyPhonePageState extends State<VertifyPhonePage> {
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
                  "Verify your phone\nnumber",
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
                  hintText: 'Phone number',
                  obscureText: false,
                  margin: EdgeInsets.only(bottom: 35),
                ),
              ),
              Center(
                child: CustomTextField(
                  initialValue: '',
                  textAlign: TextAlign.left,
                  hintText: 'Vertification code',
                  obscureText: false,
                  margin: EdgeInsets.only(bottom: 24),
                ),
              ),
              Text("Enter verification code sent to your"),
              Text(
                "Phone number",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                "Haven’t received the verification\ncode?",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                "Resend",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              SizedBox(
                height: 18,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
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
