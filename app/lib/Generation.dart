import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'ScriptGeneratorScreen.dart';
import 'Sign_in.dart';
import 'main.dart';
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
