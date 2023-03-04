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
  @override
  final List<Story> _story = [
    Story(
      username: "samet",
    ),
    Story(
      username: "asd",
    ),
    Story(
      username: "samqweet",
    ),
    Story(
      username: "sa213met",
    ),
    Story(
      username: "same4t",
    ),
    Story(
      username: "d",
    ),
    Story(
      username: "samet",
    ),
    Story(
      username: "samet",
    ),
  ];
  final List<PostCard> _postCards = [
    PostCard(),
    PostCard(),
    PostCard(),
    PostCard(),
    PostCard(),
    PostCard(),
    PostCard(),
    PostCard(),
    PostCard(),
    PostCard()
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
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: _story,
              ),
              // child: ListView.builder(
              //   itemCount: _story.length,
              //   scrollDirection: Axis.horizontal,
              //   itemBuilder: (context, index) => const Story(username: ,),
              // ),
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
