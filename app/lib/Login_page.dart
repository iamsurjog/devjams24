import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Input_details.dart';
import 'ScriptGeneratorScreen.dart';
import 'Sign_in.dart';
import 'main.dart';
class LoginPage extends StatefulWidget {
  final String registeredEmail;
  final String registeredPassword;

  LoginPage({required this.registeredEmail, required this.registeredPassword});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Colors.black,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black,
                Color(0xFF303030),
              ],
            ),
          ),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 0),
                Text(
                  'ImaGen',
                  style: GoogleFonts.montez(
                    textStyle: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 50),
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Ready to Continue?\n\n',
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                        ),
                      ),
                      TextSpan(
                        text: 'Enter your Account',
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
                SizedBox(height: 30.0),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person, color: Colors.pinkAccent),
                    labelText: 'Email',
                    filled: true,
                    fillColor: Colors.transparent,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(color: Colors.pinkAccent, width: 2.0),
                    ),
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 35),
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock, color: Colors.pinkAccent),
                    labelText: 'Password',
                    filled: true,
                    fillColor: Colors.transparent,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(color: Colors.pinkAccent, width: 2.0),
                    ),
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 50),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.pinkAccent, Colors.deepPurpleAccent],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: TextButton(
                      onPressed: () {
                        String email = emailController.text;
                        String password = passwordController.text;

                        if (email == widget.registeredEmail &&
                            password == widget.registeredPassword) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => ScriptGeneratorScreen()),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Invalid email or password')),
                          );
                        }
                      },
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: 290.0,
                          minHeight: 40.0,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.white, fontSize: 18.0),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpPage()),
                      );
                    },
                    child: Text(
                      'Do not have an account? Sign up',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
