import 'package:flutter/material.dart';
import 'package:instagram_home_copy/view/widgets/stories.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  List<Story> _story = [
    Story(),
    Story(),
    Story(),
    Story(),
    Story(),
    Story(),
    Story(),
    Story(),
  ];
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Instagram',
          textAlign: TextAlign.start,
        ),
        centerTitle: false,
        backgroundColor: Colors.black,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              print('Pressed Add Photo Icon Button');
            },
            icon: const Icon(Icons.add_a_photo_outlined),
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          IconButton(
            onPressed: () {
              print('Pressed Likes Icon Button');
            },
            icon: const Icon(Icons.heart_broken_outlined),
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
        ],
      ),
      body: Container(
        width: size.width,
        height: 100,
        decoration: const BoxDecoration(color: Colors.black),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Wrap(
            direction: Axis.vertical,
            children: _story,
          ),
        ),
      ),
    );
  }
}
