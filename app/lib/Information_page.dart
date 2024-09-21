import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'ScriptGeneratorScreen.dart';
import 'Sign_in.dart';
import 'main.dart';
class AboutUs extends StatelessWidget {
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
                          text: 'Get to know us\n\n',
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        ),

                        TextSpan(
                          text: 'ImaGen is a cutting-edge script and screenplay generation app that automates the process of adapting content for diverse linguistic and cultural audiences.\n\nBy leveraging AI, ImaGen takes input content in one language and transforms it into culturally relevant scripts in another, incorporating local references, memes, and movie tropes for authenticity and engagement.\n\nThis tool is a game-changer for content creators, saving time and ensuring that their work resonates with target audiences worldwide.',
                          style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(Icons.home,
                size: 45,),
              onPressed: () {
                // Navigate to home
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
          ],
        ),
      ),
    );
  }
}
