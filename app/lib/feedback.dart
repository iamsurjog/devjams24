import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class thoughts extends StatelessWidget {
  final TextEditingController thoughtsController = TextEditingController();

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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 140), // Space before the form
                  RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Share your thoughts\n\n',
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Input field for thoughts
                  TextField(
                    controller: thoughtsController,
                    style: TextStyle(color: Colors.white),
                    maxLines: 5, // Multi-line input
                    decoration: InputDecoration(
                      labelText: 'Enter your thoughts here...',
                      labelStyle: TextStyle(color: Colors.white70),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.white70, width: 1.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.pinkAccent, width: 2.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  // Submit button
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        String thoughts = thoughtsController.text;
                        if (thoughts.isNotEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Thoughts submitted: $thoughts')),
                          );
                          thoughtsController.clear(); // Clear the input field
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Please enter your thoughts.')),
                          );
                        }
                      },
                      child: Text('Submit', style: TextStyle(
                          fontSize: 20,
                        color: Colors.black
                      )),
                      style: ElevatedButton.styleFrom(
                        iconColor: Colors.pinkAccent, // Button color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
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
