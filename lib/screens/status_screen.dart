import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: statusList.length,
      itemBuilder: (context, index) {
        final status = statusList[index];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(status.image),
              ),
              title: Text(
                status.name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(status.date),
              trailing: PopupMenuButton(
                icon: const Icon(Icons.more_vert),
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    value: 'view',
                    child: Text('View'),
                  ),
                  const PopupMenuItem(
                    value: 'delete',
                    child: Text('Delete'),
                  ),
                  // Add more menu items as needed
                ],
                onSelected: (value) {
                  // Handle menu item selection here
                },
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                'Recent updates',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            for (var update in recentUpdatesList)
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(update.image),
                ),
                title: Text(
                  update.name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(update.date),
              ),
            const Divider(),
          ],
        );
      },
    );
  }
}

class Status {
  final String image;
  final String name;
  final String date;

  Status(this.image, this.name, this.date);
}

class RecentUpdate {
  final String image;
  final String name;
  final String date;

  RecentUpdate(this.image, this.name, this.date);
}

List<Status> statusList = [
  Status('assets/image1.jpeg', 'My status', 'Decenmber 06, 2023'),
  // Add more statuses here
];

List<RecentUpdate> recentUpdatesList = [
  RecentUpdate('assets/image2.jpeg', 'Amina Mocalim', 'December 05, 2023'),
  RecentUpdate('assets/image3.jpeg', 'Mr Abdi', 'December 06, 2023'),
  // Add more recent updates here
];