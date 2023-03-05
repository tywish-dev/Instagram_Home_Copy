import 'package:flutter/material.dart';

class StoryPreview extends StatelessWidget {
  const StoryPreview({super.key, required this.picUrl});
  final String picUrl;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Hero(
            tag: 'story',
            child: Image.asset(picUrl),
          ),
        ),
      ),
    );
  }
}
