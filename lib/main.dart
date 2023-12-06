import 'package:flutter/material.dart';
// import 'tiktok_comment.dart';
import 'home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      // home: WhatsAppCloneApp(), // Set the WhatsAppCloneApp widget as the home screen
      // home: LessonNine(),
      home: HomeScreen(),
      // home: const TikTokCommentSection(),
    );
  }
}