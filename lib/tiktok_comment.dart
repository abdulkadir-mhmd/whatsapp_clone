// import 'package:flutter/material.dart';

// class TikTokCommentSection extends StatefulWidget {
//   const TikTokCommentSection({Key? key}) : super(key: key);

//   @override
//   _TikTokCommentSectionState createState() => _TikTokCommentSectionState();
// }

// class _TikTokCommentSectionState extends State<TikTokCommentSection> {
//   List<String> comments = [];

//   void addComment(String comment) {
//     setState(() {
//       comments.add(comment);
//     });
//   }

//   void _showCommentSheet(BuildContext context) {
//     showModalBottomSheet(
//       context: context,
//       builder: (BuildContext context) {
//         return Container(
//           padding: EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Text(
//                 'Comments',
//                 style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 8.0),
//               Expanded(
//                 child: ListView.builder(
//                   itemCount: comments.length,
//                   itemBuilder: (BuildContext context, int index) {
//                     return ListTile(
//                       leading: CircleAvatar(
//                         child: Icon(Icons.person),
//                       ),
//                       title: Text('User'),
//                       subtitle: Text(comments[index]),
//                     );
//                   },
//                 ),
//               ),
//               SizedBox(height: 8.0),
//               TextField(
//                 decoration: InputDecoration(
//                   hintText: 'Add a comment',
//                 ),
//                 onSubmitted: (String comment) {
//                   addComment(comment);
//                 },
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () {
//         _showCommentSheet(context);
//       },
//       child: Text('View Comments'),
//     );
//   }
// }







// import 'package:flutter/material.dart';

// class TikTokCommentSection extends StatefulWidget {
//   const TikTokCommentSection({Key? key}) : super(key: key);

//   @override
//   _TikTokCommentSectionState createState() => _TikTokCommentSectionState();
// }

// class _TikTokCommentSectionState extends State<TikTokCommentSection> {
//   List<Comment> comments = [
//     Comment('Great video! 😊', 'John Doe', DateTime(2022, 10, 1), Icons.person),
//     Comment('I love this! 😍', 'Jane Smith', DateTime(2022, 10, 2), Icons.person),
//     Comment('Wow, amazing!', 'Alice Johnson', DateTime(2022, 10, 3), Icons.person),
//     Comment('Nice work!', 'Bob Williams', DateTime(2022, 10, 4), Icons.person),
//     Comment('Awesome content!', 'Emma Davis', DateTime(2022, 10, 5), Icons.person),
//   ];

//   void addComment(String comment, String name, IconData icon) {
//     setState(() {
//       comments.add(Comment(comment, name, DateTime.now(), icon));
//     });
//   }

//   void _showCommentSheet(BuildContext context) {
//     showModalBottomSheet(
//       context: context,
//       builder: (BuildContext context) {
//         return Container(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               const Text(
//                 'Comments',
//                 style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 8.0),
//               Expanded(
//                 child: ListView.builder(
//                   itemCount: comments.length,
//                   itemBuilder: (BuildContext context, int index) {
//                     return ListTile(
//                       leading: CircleAvatar(
//                         child: Icon(comments[index].icon),
//                       ),
//                       title: Text(comments[index].name),
//                       subtitle: Text(comments[index].comment),
//                       trailing: Text(
//                         formatDate(comments[index].date),
//                         style: const TextStyle(fontSize: 12.0),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//               const SizedBox(height: 8.0),
//               TextField(
//                 decoration: const InputDecoration(
//                   hintText: 'Add a comment',
//                 ),
//                 onSubmitted: (String comment) {
//                   addComment(comment, 'Your Name', Icons.person); // Replace 'Your Name' with the user's name and Icons.person with the desired icon
//                 },
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }

//   String formatDate(DateTime date) {
//     // Format the date string as per your requirement
//     return '${date.day}/${date.month}/${date.year}';
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () {
//         _showCommentSheet(context);
//       },
//       child: const Text('View Comments'),
//     );
//   }
// }

// class Comment {
//   final String comment;
//   final String name;
//   final DateTime date;
//   final IconData icon;

//   Comment(this.comment, this.name, this.date, this.icon);
// }



import 'package:flutter/material.dart';

class TikTokCommentSection extends StatefulWidget {
  const TikTokCommentSection({Key? key}) : super(key: key);

  @override
  _TikTokCommentSectionState createState() => _TikTokCommentSectionState();
}

class _TikTokCommentSectionState extends State<TikTokCommentSection> {
  List<Comment> comments = [
    Comment('Great video! 😊', 'John Doe', DateTime(2022, 10, 1), Icons.person),
    Comment('I love this! 😍', 'Jane Smith', DateTime(2022, 10, 2), Icons.person),
    Comment('Wow, amazing!', 'Alice Johnson', DateTime(2022, 10, 3), Icons.person),
    Comment('Nice work!', 'Bob Williams', DateTime(2022, 10, 4), Icons.person),
    Comment('Awesome content!', 'Emma Davis', DateTime(2022, 10, 5), Icons.person),
  ];

  void addComment(String comment, String name, IconData icon) {
    setState(() {
      comments.add(Comment(comment, name, DateTime.now(), icon));
    });
  }

  void _showCommentSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true, // Enable scroll inside the bottom sheet
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Comments',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8.0),
                ListView.builder(
                  shrinkWrap: true, // Enable the ListView to scroll inside the SingleChildScrollView
                  itemCount: comments.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: CircleAvatar(
                        child: Icon(comments[index].icon),
                      ),
                      title: Text(comments[index].name),
                      subtitle: Text(comments[index].comment),
                      trailing: Text(
                        formatDate(comments[index].date),
                        style: const TextStyle(fontSize: 12.0),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 8.0),
                TextField(
                  decoration: const InputDecoration(
                    hintText: 'Add a comment',
                  ),
                  onSubmitted: (String comment) {
                    addComment(comment, 'Your Name', Icons.person); // Replace 'Your Name' with the user's name and Icons.person with the desired icon
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  String formatDate(DateTime date) {
    // Format the date string as per your requirement
    return '${date.day}/${date.month}/${date.year}';
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _showCommentSheet(context);
      },
      child: const Text('View Comments'),
    );
  }
}

class Comment {
  final String comment;
  final String name;
  final DateTime date;
  final IconData icon;

  Comment(this.comment, this.name, this.date, this.icon);
}