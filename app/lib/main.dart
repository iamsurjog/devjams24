import 'package:first_project/feedback.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Information_page.dart';
import 'Login_page.dart';
import 'ScriptGeneratorScreen.dart';
import 'Sign_in.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black, // Darker shade at the top
              Color(0xFF303030), // Gradient transition shade
            ],
          ),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Text (
                'ImaGen',
                style: GoogleFonts.montez(
                  textStyle:
                TextStyle(
                  fontSize: 90.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Scripts Simplified!',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),

            SizedBox(height: 75),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                foregroundColor: Colors.white,
                padding: EdgeInsets.zero,
                textStyle: TextStyle(fontSize: 18.0),

              ),

              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpPage()),
                );// Add your functionality for Login
              },
              child: Ink(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.pinkAccent, Colors.deepPurpleAccent], // Define your gradient colors here
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(30.0), // Optional: Rounded corners
                ),
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: 290.0, // Adjust the width of the button
                    minHeight: 50.0, // Adjust the height of the button
                  ),
                  alignment: Alignment.center,
                  child: Text('Get Started'),
                ),
              ),
            ),

            SizedBox(height: 30),
            Text(
              'or',
              style: TextStyle(
                  color: Colors.white
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                foregroundColor: Colors.white,
                padding: EdgeInsets.zero,
                textStyle: TextStyle(fontSize: 18.0),

              ),

              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage(registeredEmail: 'Email', registeredPassword: 'Password',)),
                );// Add your functionality for Login
              },
              child: Ink(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.pinkAccent, Colors.deepPurpleAccent], // Define your gradient colors here
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(30.0), // Optional: Rounded corners
                ),
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: 290.0, // Adjust the width of the button
                    minHeight: 50.0, // Adjust the height of the button
                  ),
                  alignment: Alignment.center,
              child: Text('Login'),
            ),
            ),
            ),

            SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => AboutUs()),// Navigate to About Us
                    );},
                  child: Text(
                    'About Us',
                    style: TextStyle(
                        decoration: TextDecoration.combine([
                          TextDecoration.underline,
                        ]),
                        decorationColor: Colors.white,
                        color: Colors.white),
                  ),
                ),
                SizedBox(width: 10),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => thoughts()),// Navigate to About Us
                    );// Navigate to Share your thoughts
                  },
                  child: Text(
                    'Share your thoughts',
                    style: TextStyle(
                        decoration: TextDecoration.combine([
                          TextDecoration.underline,

                        ]),
                        decorationColor: Colors.white,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
            ],
        )
        ),
      );

  }
}

Widget _buildGradientButton(BuildContext context, String text, VoidCallback onPressed) {
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [Colors.pink, Colors.purple], // Gradient colors
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      borderRadius: BorderRadius.circular(30), // Rounded corners
    ),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 100.0, vertical: 15.0),
        backgroundColor: Colors.transparent, // Transparent background
        shadowColor: Colors.transparent, // Remove shadow for better gradient effect
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ),
  );
}




