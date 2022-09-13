import 'package:flutter/material.dart';
import 'package:kalokola_form/models/bottomNavbar/bottomNav.dart';
import 'package:kalokola_form/models/styles/appcolor.dart';
import 'package:kalokola_form/screens/kalokolaForm.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const BottomBar()));
    });
    return Scaffold(
      backgroundColor: AppColor().mainColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.edit_calendar_outlined,
            color: AppColor().submainColor,
            size: 80.0,
          ),
          Center(
            child: Text(
              "Kalokola Form",
              style: TextStyle(color: AppColor().submainColor, fontSize: 30.0),
            ),
          ),
        ],
      ),
    );
  }
}
