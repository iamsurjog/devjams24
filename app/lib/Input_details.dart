import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Generation.dart';
import 'ScriptGeneratorScreen.dart';
import 'Sign_in.dart';
import 'main.dart';
class PunchInPage extends StatelessWidget {
  final TextEditingController urlController = TextEditingController();
  final TextEditingController languageController = TextEditingController();
  final TextEditingController durationController = TextEditingController();

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
                    Positioned(
                      top: 40,
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 150),
                        RichText(
                          textAlign: TextAlign.left,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Create! Enter Details\n\n',
                                style: TextStyle(
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                              ),
                              TextSpan(
                                text: 'Your Content, Your Way...',
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
                        SizedBox(height: 80),
                        // URL Input Field
                        TextField(
                          controller: urlController,
                          decoration: InputDecoration(
                            labelText: 'Enter URL',
                            labelStyle: TextStyle(color: Colors.white),
                            filled: true,
                            fillColor: Colors.transparent,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(color: Colors.white, width: 2.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(color: Colors.pink, width: 2.0),
                            ),
                          ),
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 30),
                        // Language Input Field
                        TextField(
                          controller: languageController,
                          decoration: InputDecoration(
                            labelText: 'Language',
                            labelStyle: TextStyle(color: Colors.white),
                            filled: true,
                            fillColor: Colors.transparent,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(color: Colors.white, width: 2.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(color: Colors.pink, width: 2.0),
                            ),
                          ),
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 30),
                        // Video Duration Input Field
                        TextField(
                          controller: durationController,
                          decoration: InputDecoration(
                            labelText: 'Video Duration (minutes)',
                            labelStyle: TextStyle(color: Colors.white),
                            filled: true,
                            fillColor: Colors.transparent,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(color: Colors.white, width: 2.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(color: Colors.pink, width: 2.0),
                            ),
                          ),
                          style: TextStyle(color: Colors.white),
                          keyboardType: TextInputType.number,
                        ),
                        SizedBox(height: 65),
                        // Submit Button

                        // Generate Button at the Bottom
                        Center(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.zero, // Removes default padding
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => VideoManagementPage()),
                              );// Handle generate action
                            },
                            child: Ink(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [Colors.pinkAccent, Colors.deepPurpleAccent],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              child: Container(
                                constraints: BoxConstraints(
                                  maxWidth: 290.0,
                                  minHeight: 50.0,
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  'Generate',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),
            )));
  }
}