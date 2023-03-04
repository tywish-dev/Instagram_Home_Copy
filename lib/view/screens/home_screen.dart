import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
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
  final Stream<QuerySnapshot> users =
      FirebaseFirestore.instance.collection('users').snapshots();
  Future<String> getDownload(Reference ref) async {
    return await ref.getDownloadURL();
  }

  @override
  String _imageUrl = "";
  final List<Story> _story = [
    Story(username: "samet", imageUrl: "assets/images/me.png"),
    Story(username: "samet", imageUrl: "assets/images/me.png"),
    Story(username: "samet", imageUrl: "assets/images/me.png"),
    Story(username: "samet", imageUrl: "assets/images/me.png"),
    Story(username: "samet", imageUrl: "assets/images/me.png"),
    Story(username: "samet", imageUrl: "assets/images/me.png"),
    Story(username: "samet", imageUrl: "assets/images/me.png"),
  ];
  final List<PostCard> _postCards = [
    const PostCard(),
    const PostCard(),
    const PostCard(),
    const PostCard(),
    const PostCard(),
    const PostCard(),
    const PostCard(),
    const PostCard(),
    const PostCard(),
    const PostCard()
  ];
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                  for (var st in _story) {
                    return st;
                  }
                },
              ),
            ),
            Flexible(
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: _postCards.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) => const PostCard(),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
