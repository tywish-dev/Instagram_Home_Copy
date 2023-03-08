import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:instagram_home_copy/view/screens/camera_screen.dart';
import 'package:instagram_home_copy/view/screens/reels_screen.dart';
import 'package:instagram_home_copy/view/screens/search_screen.dart';
import 'package:instagram_home_copy/view/widgets/app_bar.dart';
import 'package:instagram_home_copy/view/widgets/bottom_bar.dart';
import 'package:instagram_home_copy/view/widgets/post_card.dart';
import 'package:instagram_home_copy/view/widgets/stories.dart';

import 'profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  getAvailableCameras() async {
    await availableCameras().then((value) => value);
  }

  final List<Story> _story = <Story>[
    const Story(
        username: "hanry_bald", imageUrl: "assets/images/profiles/hanry.png"),
    const Story(username: "samet", imageUrl: "assets/images/profiles/me.png"),
    const Story(
        username: "ellieGolden", imageUrl: "assets/images/profiles/ellie.png"),
    const Story(
        username: "JohnDoe", imageUrl: "assets/images/profiles/john.png"),
    const Story(
        username: "keanuR", imageUrl: "assets/images/profiles/keanu.png"),
    const Story(
        username: "aannaa", imageUrl: "assets/images/profiles/anna.png"),
    const Story(
        username: "Colliss", imageUrl: "assets/images/profiles/collis.png"),
  ];
  final List<PostCard> _postCards = <PostCard>[
    const PostCard(
        postUrl: 'assets/images/posts/m4.jpg',
        username: 'samet',
        profilePic: "assets/images/profiles/me.png",
        dislikeCount: -1000),
    const PostCard(
        postUrl: 'assets/images/posts/carpets.jpg',
        username: 'hanry_bald',
        profilePic: 'assets/images/profiles/hanry.png',
        dislikeCount: 15),
    const PostCard(
        postUrl: 'assets/images/profiles/collis.png',
        username: 'Colliss',
        profilePic: 'assets/images/profiles/collis.png',
        dislikeCount: 340),
    const PostCard(
        postUrl: 'assets/images/posts/dog.jpg',
        username: 'samet',
        profilePic: 'assets/images/profiles/me.png',
        dislikeCount: 94),
    const PostCard(
        postUrl: 'assets/images/posts/tower.jpg',
        username: 'aannaa',
        profilePic: 'assets/images/profiles/anna.png',
        dislikeCount: 144),
    const PostCard(
        postUrl: 'assets/images/posts/england.jpg',
        username: 'JohnDoe',
        profilePic: 'assets/images/profiles/john.png',
        dislikeCount: 420),
    const PostCard(
        postUrl: 'assets/images/posts/car.jpg',
        username: 'keanuR',
        profilePic: 'assets/images/profiles/keanu.png',
        dislikeCount: 91),
  ];
  int _selectedPage = 0;
  List<Widget> pages = [
    const HomeScreen(),
    const SearchScreen(),
    const SearchScreen(),
    const ReelsScreen(),
    const ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: CustomAppBar(
        appBar: AppBar(),
      ),
      body: _selectedPage == 0
          ? SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                      itemCount: _story.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return _story[index];
                      },
                    ),
                  ),
                  Flexible(
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: _postCards.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return _postCards[index];
                      },
                    ),
                  )
                ],
              ),
            )
          : pages[_selectedPage],
      bottomNavigationBar: BottomBar(
        onPress: (pageIndex) {
          setState(() {
            if (pageIndex == 0) {
              _selectedPage = 0;
            } else if (pageIndex == 1) {
              _selectedPage = pageIndex;
            } else if (pageIndex == 2) {
              _selectedPage = pageIndex;
            } else if (pageIndex == 3) {
              _selectedPage = pageIndex;
            } else if (pageIndex == 4) {
              _selectedPage = pageIndex;
            }
          });
        },
      ),
    );
  }
}
