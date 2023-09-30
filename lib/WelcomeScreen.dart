import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:untitled3/regScreen.dart';

import 'loginScreen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xffB81736),
          Color(0xff281537),
        ])),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 150.0),
              child: Image(image: AssetImage('assets/App Logo.png')),
            ),
            const SizedBox(
              height: 100,
            ),
            const Text(
              'Welcome Back',
              style: TextStyle(fontSize: 35, color: Colors.white),
            ),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const loginScreen()));
              },
              child: Container(
                height: 55,
                width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white),
                ),
                child: const Center(
                  child: Text(
                    'SIGN IN',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const RegScreen()));
              },
              child: Container(
                height: 55,
                width: 320,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white),
                ),
                child: const Center(
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
            const Spacer(),
            const Text(
              'Login with Social Media',
              style: TextStyle(fontSize: 17, color: Colors.white),
            ), //
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    launch('https://www.instagram.com/');
                  },
                  child: Icon(
                    FontAwesomeIcons.instagram,
                    size: 30,
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                GestureDetector(
                  onTap: () {
                    launch('https://twitter.com/');
                  },
                  child: Icon(
                    FontAwesomeIcons.twitter,
                    size: 30,
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                GestureDetector(
                  onTap: () {
                    launch('https://www.facebook.com/');
                  },
                  child: Icon(
                    FontAwesomeIcons.facebook,
                    size: 30,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
