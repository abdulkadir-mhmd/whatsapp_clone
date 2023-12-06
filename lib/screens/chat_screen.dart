import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  final Chat chat;

  const ChatScreen({Key? key, required this.chat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(chat.name),
      ),
      body: Center(
        child: Text(
          'Chat Screen for ${chat.name}',
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

class Chat {
  final String name;
  final String lastMessage;
  final bool isSent;
  final bool isImportant;

  Chat(this.name, this.lastMessage, this.isSent, {this.isImportant = false});
}