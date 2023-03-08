import 'package:flutter/material.dart';
import 'package:instagram_home_copy/view/screens/splash_screen.dart';

import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _username;
  late TextEditingController _password;
  bool _isLoggedIn = false;
  bool _isVisible = false;

  @override
  void initState() {
    super.initState();

    _username = TextEditingController();
    _password = TextEditingController();
  }

  @override
  void dispose() {
    _username.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: SizedBox(
            width: size.width,
            height: size.height * 0.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/icons/splash_screen_icon.png',
                  width: 100,
                ),
                SizedBox(
                  width: size.width * 0.7,
                  child: TextField(
                    keyboardType: TextInputType.datetime,
                    controller: _username,
                    enableSuggestions: false,
                    decoration: const InputDecoration(
                      labelText: 'Username',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width * 0.7,
                  child: TextField(
                    controller: _password,
                    obscureText: !_isVisible,
                    enableSuggestions: false,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      if (_username.text == "admin" &&
                          _password.text == "admin") {
                        _isLoggedIn = true;
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SplashScreen()));
                      } else {
                        const snackBar = SnackBar(
                          backgroundColor: Colors.black,
                          content: Text(
                            'Wrong username or password!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    });
                  },
                  child: const Text('Log in'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
