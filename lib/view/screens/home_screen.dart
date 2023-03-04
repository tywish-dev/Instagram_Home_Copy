import 'package:flutter/material.dart';
import 'package:instagram_home_copy/view/widgets/app_bar.dart';
import 'package:instagram_home_copy/view/widgets/bottom_bar.dart';
import 'package:instagram_home_copy/view/widgets/post_card.dart';
import 'package:instagram_home_copy/view/widgets/stories.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Story> _story = <Story>[
    Story(username: "hanry_bald", imageUrl: "assets/images/profiles/hanry.png"),
    Story(
        username: "ellieGolden", imageUrl: "assets/images/profiles/ellie.png"),
    Story(username: "JohnDoe", imageUrl: "assets/images/profiles/john.png"),
    Story(username: "samet", imageUrl: "assets/images/profiles/me.png"),
    Story(username: "keanuR", imageUrl: "assets/images/profiles/keanu.png"),
    Story(username: "aannaa", imageUrl: "assets/images/profiles/anna.png"),
    Story(username: "Colliss", imageUrl: "assets/images/profiles/collis.png"),
  ];
  final List<PostCard> _postCards = [
    const PostCard(
        postUrl: 'assets/images/posts/england.jpg',
        username: 'samet',
        profilePic: "assets/images/profiles/me.png",
        dislikeCount: 124),
    const PostCard(
        postUrl: 'assets/images/posts/carpets.jpg',
        username: 'samet',
        profilePic: 'assets/images/profiles/hanry.png',
        dislikeCount: 15),
    const PostCard(
        postUrl: 'assets/images/posts/structure.jpg',
        username: 'samet',
        profilePic: 'assets/images/profiles/keanu.png',
        dislikeCount: 124),
    const PostCard(
        postUrl: 'assets/images/posts/dog.jpg',
        username: 'samet',
        profilePic: 'assets/images/profiles/me.png',
        dislikeCount: 124),
    const PostCard(
        postUrl: 'assets/images/posts/england.jpg',
        username: 'samet',
        profilePic: 'assets/images/profiles/me.png',
        dislikeCount: 124),
    const PostCard(
        postUrl: 'assets/images/posts/england.jpg',
        username: 'samet',
        profilePic: 'assets/images/profiles/me.png',
        dislikeCount: 124),
    const PostCard(
        postUrl: 'assets/images/posts/england.jpg',
        username: 'samet',
        profilePic: 'assets/images/profiles/me.png',
        dislikeCount: 124),
    const PostCard(
        postUrl: 'assets/images/posts/england.jpg',
        username: 'samet',
        profilePic: 'assets/images/profiles/me.png',
        dislikeCount: 124),
    const PostCard(
        postUrl: 'assets/images/posts/england.jpg',
        username: 'samet',
        profilePic: 'assets/images/profiles/me.png',
        dislikeCount: 124),
    const PostCard(
        postUrl: 'assets/images/posts/england.jpg',
        username: 'samet',
        profilePic: 'assets/images/profiles/me.png',
        dislikeCount: 124),
  ];
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: CustomAppBar(
        appBar: AppBar(),
      ),
      body: SingleChildScrollView(
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
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
