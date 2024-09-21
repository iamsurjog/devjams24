import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'ScriptGeneratorScreen.dart';

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
                  fontSize: 60.0,
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
                fontSize: 22.0,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 30),
            Image.asset(
              'assets/my_logo.png', // Use your uploaded image here
              width: 300,
              height: 300,
            ),
            SizedBox(height: 50),
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

            SizedBox(height: 10),
            Text(
              'or',
              style: TextStyle(
                  color: Colors.white
              ),
            ),
            SizedBox(height: 10),
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

            SizedBox(height: 20),
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
                    // Navigate to Share your thoughts
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



class LoginPage extends StatelessWidget {
  final String registeredEmail;
  final String registeredPassword;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginPage({required this.registeredEmail, required this.registeredPassword});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black, // First shade
              Color(0xFF303030), // Second shade
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
                  SizedBox(height: 120), // Increased space before "Ready to Continue?"
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: RichText(
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
                  ),
                  SizedBox(height: 70.0),
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
                  SizedBox(height: 35), // Space between email and password
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
                  SizedBox(height: 70),
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

                          if (email == registeredEmail && password == registeredPassword) {
                            // Successful login, navigate to HomePage
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => PunchInPage()),
                            );
                          } else {
                            // Show error message
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
                            style: TextStyle(color: Colors.white, fontSize: 18.0), // Text color for the button
                          ),
                        ),
                      ),
                    ),

                  ),
                  SizedBox(height: 20), // Space before sign-up link
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpPage()),
                      );
                    },
                    child: Center(
                      child: Text(
                        'Do not have an account? Sign up',
                        style: TextStyle(color: Colors.white), // Text color for sign-up link
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

class VideoManagementPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
              'Video Management',
            style: TextStyle(
              color: Colors.white
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.home, color: Colors.white),
              onPressed: () {
                // Navigate back to home
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => MainPage()),
                );
              },
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(text:
              'Video Detail',

              ),
              Tab(text: 'Summary'),
              Tab(text: 'Script'),
              Tab(text: 'Thumbnail'),
            ],
          ),
        ),
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
          child: TabBarView(
            children: [
              VideoDetailTab(),
              SummaryTab(),
              ScriptTab(),
              ThumbnailTab(),
            ],
          ),
        ),
      ),
    );
  }
}

// Placeholder widget for Video Detail Tab
class VideoDetailTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Video Detail Content', style: TextStyle(color: Colors.white)));
  }
}

// Placeholder widget for Summary Tab
class SummaryTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Summary Content', style: TextStyle(color: Colors.white)));
  }
}

// Placeholder widget for Script Tab
class ScriptTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Script Content', style: TextStyle(color: Colors.white)));
  }
}

// Placeholder widget for Thumbnail Tab
class ThumbnailTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Thumbnail Content', style: TextStyle(color: Colors.white)));
  }
}



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
                          text: 'Get to know us better\n',
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        ),
                        TextSpan(
                          text: 'ImaGen is a cutting-edge script and screenplay generation app that automates the process of adapting content for diverse linguistic and cultural audiences.\nBy leveraging AI, ImaGen takes input content in one language and transforms it into culturally relevant scripts in another, incorporating local references, memes, and movie tropes for authenticity and engagement.\nThis tool is a game-changer for content creators, saving time and ensuring that their work resonates with target audiences worldwide.',
                          style: TextStyle(
                            fontSize: 20.0,
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
