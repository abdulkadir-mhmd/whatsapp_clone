

// import 'package:flutter/material.dart';
// import 'package:whatsapp_clone/screens/chat_screen.dart';

// class ChatsScreen extends StatefulWidget {
//   const ChatsScreen({Key? key}) : super(key: key);

//   @override
//   _ChatsScreenState createState() => _ChatsScreenState();
// }

// class _ChatsScreenState extends State<ChatsScreen> {
//   List<Chat> historyChats = [
//     Chat('Abdulkadir Mohammad', 'Asc, Sideetahay?', true, isImportant: true),
//     Chat('Anina Mocalim', 'Abowe iwrn', false),
//     Chat('Tom Johnson', 'Let\'s meet up for coffee.', true, isImportant: true),
//     Chat('Hassan Ali', 'Xafiiska aan iskugu imaano.', false),
//     Chat('Farhiya Abdi', 'Hadii lagu arko, Maxa haysaa.', false),
//     Chat('Adam Kamaal', 'Assalamu Alaikum, Ma Abdulkadir baa.', true),
//     Chat('Zara Alii', 'Hi, How is your day going?.', false),
//     Chat('Mr Abdi', 'Documentiga waan kuoo diray.', false),
//     Chat('Maryam Hassan', 'Asc, iwrn wll.', false),
//     Chat('Eng- Adam', 'Nin la waa! Xagee ka baxday?!.', false),
//     Chat('Moh Khds', 'Ok, lpx dhib malahan.', false),
//     // Add more chat entries as needed
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Chats'),
//       ),
//       body: ListView.builder(
//         itemCount: historyChats.length,
//         itemBuilder: (BuildContext context, int index) {
//           final chat = historyChats[index];
//           return ListTile(
//             leading: const CircleAvatar(
//               child: Icon(Icons.person),
//             ),
//             title: Text(chat.name),
//             subtitle: Align(
//               alignment: Alignment.centerLeft,
//               child: Row(
//                 children: [
//                   if (chat.isSent) ...[
//                     Text('✓', style: TextStyle(fontSize: 16, color: chat.isImportant ? Colors.teal : Colors.grey)),
//                     const SizedBox(width: 2),
//                     Text('✓', style: TextStyle(fontSize: 16, color: chat.isImportant ? Colors.teal : Colors.grey)),
//                     const SizedBox(width: 5),
//                   ],
//                   Text(chat.lastMessage),
//                 ],
//               ),
//             ),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => ChatScreen(chat: chat),
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }

// class Chat {
//   final String name;
//   final String lastMessage;
//   final bool isSent;
//   final bool isImportant;

//   Chat(this.name, this.lastMessage, this.isSent, {this.isImportant = false});
// }













import 'package:flutter/material.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  List<Chat> historyChats = [
    Chat('Abdulkadir Mohammad', 'Asc, Sideetahay?', true, isImportant: true),
    Chat('Anina Mocalim', 'Abowe iwrn', false),
    Chat('Tom Johnson', 'Let\'s meet up for coffee.', true, isImportant: true),
    Chat('Hassan Ali', 'Xafiiska aan iskugu imaano.', false),
    Chat('Farhiya Abdi', 'Hadii lagu arko, Maxa haysaa.', false),
    Chat('Adam Kamaal', 'Assalamu Alaikum, Ma Abdulkadir baa.', true),
    Chat('Zara Alii', 'Hi, How is your day going?.', false),
    Chat('Mr Abdi', 'Documentiga waan kuoo diray.', false),
    Chat('Maryam Hassan', 'Asc, iwrn wll.', false),
    Chat('Eng- Adam', 'Nin la waa! Xagee ka baxday?!.', false),
    Chat('Moh Khds', 'Ok, lpx dhib malahan.', false),
    // Add more chat entries as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: historyChats.length,
        itemBuilder: (BuildContext context, int index) {
          final chat = historyChats[index];
          return ListTile(
            leading: const CircleAvatar(
              child: Icon(Icons.person),
            ),
            title: Text(chat.name),
            subtitle: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  if (chat.isSent) ...[
                    Text('✓', style: TextStyle(fontSize: 16, color: chat.isImportant ? Colors.teal : Colors.grey)),
                    const SizedBox(width: 2),
                    Text('✓', style: TextStyle(fontSize: 16, color: chat.isImportant ? Colors.teal : Colors.grey)),
                    const SizedBox(width: 5),
                  ],
                  Text(chat.lastMessage),
                ],
              ),
            ),
            // Add onTap for chat item selection
          );
        },
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