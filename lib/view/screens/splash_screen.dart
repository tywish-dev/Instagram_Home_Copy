import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagram_home_copy/view/screens/home_screen.dart';
import 'package:instagram_home_copy/view/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

bool isLoggedIn = true;

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    if (isLoggedIn == true) {
      Timer(const Duration(seconds: 2), () {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const HomeScreen()));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    if (isLoggedIn == false) {
      setState(() {
        isLoggedIn = true;
      });
      return const LoginScreen();
    } else {
      return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Image.asset(
            'assets/icons/splash_screen_icon.png',
            width: size.width * 0.2,
          ),
        ),
      );
    }
  }
}
