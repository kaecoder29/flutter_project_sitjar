import 'package:facebook/model/story_model.dart';
import 'package:facebook/widgets/createpost.dart';
import 'package:facebook/widgets/newsfeedpost.dart';
import 'package:facebook/widgets/storieslist.dart';
import 'package:flutter/material.dart';

class NewsFeed extends StatefulWidget {
  const NewsFeed({super.key});

  @override
  State<NewsFeed> createState() => _NewsFeedState();
}

class _NewsFeedState extends State<NewsFeed> {
  List<StoryModel> stories = [
    StoryModel(
      id: '1',
      username: 'Karl1',
      profileImagePath: 'assets/profile/prof1.jpg',
      storyImagePath: 'assets/myday/myday1.jpg',
      timestamp: DateTime.now().subtract(const Duration(hours: 5)),
      isViewed: false,),
     
      StoryModel(
      id: '2',
      username: 'Karl2',
      profileImagePath: 'assets/profile/prof2.jpg',
      storyImagePath: 'assets/myday/myday2.jpg',
      timestamp: DateTime.now().subtract(const Duration(hours: 5)),
      isViewed: false,),

       StoryModel(
      id: '3',
      username: 'Karl3',
      profileImagePath: 'assets/profile/prof3.jpg',
      storyImagePath: 'assets/myday/myday2.jpg',
      timestamp: DateTime.now().subtract(const Duration(hours: 5)),
      isViewed: false,),

       StoryModel(
      id: '4',
      username: 'Karl4',
      profileImagePath: 'assets/profile/prof4.jpg',
      storyImagePath: 'assets/myday/myday4.jpg',
      timestamp: DateTime.now().subtract(const Duration(hours: 5)),
      isViewed: false,),

       StoryModel(
      id: '5',
      username: 'Karl5',
      profileImagePath: 'assets/profile/prof5.jpg',
      storyImagePath: 'assets/myday/myday5.jpg',
      timestamp: DateTime.now().subtract(const Duration(hours: 5)),
      isViewed: false,)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset( 
          "assets/icon/logo.png",
        height: 80,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          DrawerButton(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Createpost(),
            StoriesList(
              stories: stories,
              onStoryTap: (story) {},
              ),
              NewsFeedPost(),
              NewsFeedPost(
                name: "Alice Johnson",
                caption: "Di nako magpapicture sa labas ng bahay.",
                imageurl: "assets/myday/myday5.jpg",
              ),
              NewsFeedPost(
                name: "Bob Smith",
                caption: "Just cooked a delicious meal!",
                imageurl: "assets/myday/myday4.jpg",
              ),
              NewsFeedPost(
                name: "Cathy Lee",
                caption: "Shat!",
                imageurl: "assets/myday/myday5.jpg",
              ),
            ],
        ),
      ),
    );
  }
}