import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Login_page.dart';
import 'ScriptGeneratorScreen.dart';
import 'main.dart';
class SignUpPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool _validateEmail(String email) {
    final emailPattern = RegExp(r'^[a-zA-Z0-9._%+-]+@scriptgen\.com$');
    return emailPattern.hasMatch(email);
  }

  bool _validatePassword(String password) {
    final passwordPattern = RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\W).+$');
    return passwordPattern.hasMatch(password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black,
              Color(0xFF303030),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Stack(
            children: [
              // Text in the top left corner
              Positioned(
                top: 40, // Adjust this value for spacing
                left: 0,
                child: Text(
                  'ImaGen',
                  style: GoogleFonts.montez(
                    textStyle: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Align to the left
                children: [
                  SizedBox(height: 140), // Space before the account creation text
                  RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Create your Account\n\n',
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        ),
                        TextSpan(
                          text: 'To start innovating...',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.normal,
                            fontStyle: FontStyle.italic,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 60), // Space between the text and inputs
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.transparent,
                      prefixIcon: Icon(Icons.person, color: Colors.pinkAccent),
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(color: Colors.pinkAccent, width: 2.0),
                      ),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 35), // Space between email and password
                  TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.transparent,
                      prefixIcon: Icon(Icons.lock, color: Colors.pinkAccent),
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(color: Colors.pinkAccent, width: 2.0),
                      ),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 70),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.zero,
                        textStyle: TextStyle(fontSize: 18.0),
                      ),
                      onPressed: () {
                        String email = emailController.text;
                        String password = passwordController.text;

                        if (!_validateEmail(email)) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Email must be in the format name@scriptgen.com')),
                          );
                        } else if (!_validatePassword(password)) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Password must contain at least one uppercase letter, one lowercase letter, and one special character')),
                          );
                        } else {
                          // Navigate to Login Page after registration
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(
                                registeredEmail: email,
                                registeredPassword: password,
                              ),
                            ),
                          );
                        }
                      },
                      child: Ink(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.pinkAccent, Colors.deepPurpleAccent],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Container(
                          constraints: BoxConstraints(
                            maxWidth: 290.0,
                            minHeight: 50.0,
                          ),
                          alignment: Alignment.center,
                          child: Text('Register'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}