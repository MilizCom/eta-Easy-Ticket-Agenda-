import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart'; // Firebase core untuk inisialisasi Firebase
import 'package:flutter_application_2/loginPage.dart';
import 'package:flutter_application_2/loginpage.dart'; // Ganti dengan nama file loginPage.dart Anda
import 'package:flutter_application_2/loginPage.dart' as CapitalLoginPage;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Inisialisasi Firebase saat aplikasi dimulai
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Firebase Login Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: LoginPage(),
    );
  }
}
