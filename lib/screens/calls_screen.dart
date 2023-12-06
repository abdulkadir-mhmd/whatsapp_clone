// import 'package:flutter/material.dart';

// class CallsScreen extends StatelessWidget {
//   const CallsScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: [
//         ListTile(
//           leading: CircleAvatar(
//             backgroundColor: Color.fromARGB(255, 75, 228, 200),
//             child: Icon(
//               Icons.call,
//               color: Colors.white,
//             ),
//           ),
//           title: Text(
//             'Create call link',
//             style: TextStyle(fontWeight: FontWeight.bold),
//           ),
//           subtitle: Text('Share a link for your WhatsApp call'),
//         ),
//         ListTile(
//           title: Text(
//             'Recent calls',
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               fontSize: 16,
//             ),
//           ),
//         ),
//         ListTile(
//           leading: CircleAvatar(
//             backgroundColor: Colors.lightGreen,
//             backgroundImage: AssetImage('assets/image3.jpeg'), // Replace with the path to the image
//           ),
//           title: Text(
//             'John Doe',
//             style: TextStyle(fontWeight: FontWeight.bold),
//           ),
//           subtitle: Row(
//             children: [
//               Text('Monday'),
//               SizedBox(width: 4), // Add some spacing between day and time
//               Text('10:30 AM'),
//             ],
//           ),
//         ),
//         ListTile(
//           leading: CircleAvatar(
//             backgroundColor: Colors.lightGreen,
//             backgroundImage: AssetImage('assets/image2.jpeg'), // Replace with the path to the image
//           ),
//           title: Text(
//             'Jane Smith',
//             style: TextStyle(fontWeight: FontWeight.bold),
//           ),
//           subtitle: Row(
//             children: [
//               Text('Tuesday'),
//               SizedBox(width: 4), // Add some spacing between day and time
//               Text('9:45 AM'),
//             ],
//           ),
//         ),
//         // Add more call items here
//       ],
//     );
//   }
// }





















// import 'package:flutter/material.dart';

// class CallsScreen extends StatelessWidget {
//   const CallsScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: [
//         ListTile(
//           leading: CircleAvatar(
//             backgroundColor: Color.fromARGB(255, 75, 228, 200),
//             child: Icon(
//               Icons.call,
//               color: Colors.white,
//             ),
//           ),
//           title: Text(
//             'Create call link',
//             style: TextStyle(fontWeight: FontWeight.bold),
//           ),
//           subtitle: Text('Share a link for your WhatsApp call'),
//         ),
//         ListTile(
//           title: Text(
//             'Recent calls',
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               fontSize: 16,
//             ),
//           ),
//         ),
//         ListTile(
//           leading: CircleAvatar(
//             backgroundColor: Colors.lightGreen,
//             backgroundImage: AssetImage('assets/image3.jpeg'), // Replace with the path to the image
//           ),
//           title: Text(
//             'John Doe',
//             style: TextStyle(fontWeight: FontWeight.bold),
//           ),
//           subtitle: Row(
//             children: [
//               Expanded(
//                 child: Row(
//                   children: [
//                     Icon(
//                       Icons.arrow_downward,
//                       color: Colors.red,
//                     ),
//                     SizedBox(width: 4), // Add some spacing between the icon and the text
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text('Monday'),
//                         Text('10:30 AM'),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               Icon(
//                 Icons.call,
//                 color: Colors.green,
//               ),
//             ],
//           ),
//         ),
//         ListTile(
//           leading: CircleAvatar(
//             backgroundColor: Colors.lightGreen,
//             backgroundImage: AssetImage('assets/image2.jpeg'), // Replace with the path to the image
//           ),
//           title: Text(
//             'Jane Smith',
//             style: TextStyle(fontWeight: FontWeight.bold),
//           ),
//           subtitle: Row(
//             children: [
//               Expanded(
//                 child: Row(
//                   children: [
//                     Icon(
//                       Icons.arrow_downward,
//                       color: Colors.green,
//                     ),
//                     SizedBox(width: 4), // Add some spacing between the icon and the text
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text('Tuesday'),
//                         Text('9:45 AM'),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               Icon(
//                 Icons.call,
//                 color: Colors.green,
//               ),
//             ],
//           ),
//         ),
//         // Add more call items here
//       ],
//     );
//   }
// }










import 'package:flutter/material.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Color.fromARGB(255, 75, 228, 200),
            child: Icon(
              Icons.call,
              color: Colors.white,
            ),
          ),
          title: Text(
            'Create call link',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text('Share a link for your WhatsApp call'),
        ),
        ListTile(
          title: Text(
            'Recent calls',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.lightGreen,
            backgroundImage: AssetImage('assets/image3.jpeg'), // Replace with the path to the image
          ),
          title: Text(
            'John Doe',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_downward,
                      color: Colors.red,
                    ),
                    SizedBox(width: 4), // Add some spacing between the icon and the text
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('Monday'),
                            SizedBox(width: 4), // Add some spacing between the day and date
                            Text('10:30 AM'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.call,
                color: Colors.green,
              ),
            ],
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.lightGreen,
            backgroundImage: AssetImage('assets/image2.jpeg'), // Replace with the path to the image
          ),
          title: Text(
            'Jane Smith',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_downward,
                      color: Colors.green,
                    ),
                    SizedBox(width: 4), // Add some spacing between the icon and the text
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('Tuesday'),
                            SizedBox(width: 4), // Add some spacing between the day and date
                            Text('9:45 AM'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.call,
                color: Colors.green,
              ),
            ],
          ),
        ),
        // Add more call items here
        const Divider(),
      ],
    );
  }
}