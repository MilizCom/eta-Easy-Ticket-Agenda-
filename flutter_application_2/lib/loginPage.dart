import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_2/registrationPage.dart';
import 'package:flutter_application_2/homepage.dart';
import 'package:flutter_application_2/costumTextField.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final CollectionReference _usersCollection =
      FirebaseFirestore.instance.collection('users');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(height: 160),
            const Text(
              "Log in",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32.0,
              ),
            ),
            const SizedBox(height: 45),
            Center(
              child: CustomTextField(
                controller: _emailController,
                textAlign: TextAlign.left,
                hintText: 'Email',
                initialValue: '',
              ),
            ),
            Center(
              child: CustomTextField(
                controller: _passwordController,
                textAlign: TextAlign.left,
                hintText: 'Password',
                obscureText: true,
                initialValue: '',
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () async {
                String email = _emailController.text.trim();
                String password = _passwordController.text.trim();

                try {
                  // Query Firestore to check if user with provided credentials exists
                  QuerySnapshot<Object?> querySnapshot = await _usersCollection
                      .where('email', isEqualTo: email)
                      .where('password', isEqualTo: password)
                      .get();

                  if (querySnapshot.docs.isEmpty) {
                    // User does not exist or invalid credentials
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Login Failed"),
                          content: Text(
                              "Invalid email or password. Please try again."),
                          actions: <Widget>[
                            TextButton(
                              child: Text("OK"),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  } else {
                    // User found, navigate to HomePage
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  }
                } catch (e) {
                  // Handle other errors
                  print("Error: $e");
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Login Error"),
                        content:
                            Text("An error occurred. Please try again later."),
                        actions: <Widget>[
                          TextButton(
                            child: Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              child: const Text(
                "Login",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 155),
            const Text(
              "Don't have an account?",
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
            const SizedBox(height: 25),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const RegistrationPage()),
                );
              },
              child: const Text(
                "Sign up",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14.0,
                    color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
