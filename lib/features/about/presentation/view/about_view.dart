import 'package:flutter/material.dart';

class AboutDetails extends StatelessWidget {
  const AboutDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
        child: Center(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Team Name: Madridista Team',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'App Details: This app is designed to sell products with low price and high quality for Madrid fans only.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Team Leader :',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'islam hassan hagaer',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            // Add more team members as needed
          ],
        ),
      ),
    ));
  }
}
