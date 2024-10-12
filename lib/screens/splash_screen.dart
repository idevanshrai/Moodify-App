import 'package:flutter/material.dart';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()), // Navigate to HomeScreen after splash.
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Customize your background color.
      body: Center(
        child: Text(
          "Moodify",
          style: TextStyle(
            fontSize: 50, // Use a simple system font with customizable size.
            color: const Color.fromARGB(210, 76, 175, 79), // Customize your text color.
          ),
        ),
      ),
    );
  }
}
