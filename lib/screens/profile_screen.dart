import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/image1.jpeg'), // Replace with the path to the profile image
            ),
            SizedBox(height: 16),
            Text(
              'Abdulkadir Mohammad',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Software Engineer',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 24),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('abdul.moh@example.com'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('(612) 537- XXX'),
            ),
          ],
        ),
      ),
    );
  }
}