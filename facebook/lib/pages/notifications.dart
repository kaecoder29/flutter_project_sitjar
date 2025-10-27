import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notifications',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {},
          )
        ]
        ,
        
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'New',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const NotificationTile(
              imageUrl: 'assets/profile/prof1.jpg',
              title: 'Learn how Meta will use your info in new ways to personalize your experiences.',
              time: '16h',
            ),
            const NotificationTile(
              imageUrl: 'assets/profile/prof2.jpg',
              title: 'John Doe commented on your post.',
              time: '2h',
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Earlier',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const NotificationTile(
              imageUrl: 'assets/profile/prof3.jpg',
              title: 'Jane Smith liked your photo.',
              time: '1d',
            ),
            const NotificationTile(
              imageUrl: 'assets/profile/prof4.jpg',
              title: 'Mike Johnson shared your post.',
              time: '2d',
            ),
            const NotificationTile(
              imageUrl: 'assets/profile/prof5.jpg',
              title: 'Sarah Williams mentioned you in a comment.',
              time: '3d',
            ),
            const SizedBox(height: 16),
            Center(
              child: TextButton(
                onPressed: () {},
                child: const Text('See older notifications'),
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

class NotificationTile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String time;

  const NotificationTile({
    required this.imageUrl,
    required this.title,
    required this.time,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(imageUrl),
        radius: 25,
      ),
      title: Text(
        title,
        style: const TextStyle(fontSize: 14),
      ),
      subtitle: Text(
        time,
        style: const TextStyle(color: Colors.grey, fontSize: 12),
      ),
      trailing: PopupMenuButton(
        icon: const Icon(Icons.more_horiz),
        itemBuilder: (context) => [
          const PopupMenuItem(
            value: 'hide',
            child: Text('Hide notification'),
          ),
          const PopupMenuItem(
            value: 'settings',
            child: Text('Notification settings'),
          ),
        ],
        onSelected: (value) {},
      ),
      onTap: () {},
    );
  }
}