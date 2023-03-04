import 'dart:math';

import 'package:flutter/material.dart';

class PostCard extends StatefulWidget {
  const PostCard({super.key});

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Card(
      color: Colors.black,
      child: Column(
        children: [
          SizedBox(
            width: size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        'assets/images/me.png',
                        height: 30,
                        width: 30,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'samet',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
                IconButton(
                  // padding: const EdgeInsets.only(left: 250),
                  onPressed: () {},
                  icon: const Icon(Icons.more_horiz),
                  iconSize: 30,
                  alignment: Alignment.centerRight,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                )
              ],
            ),
          ),
          SizedBox(
            width: size.width,
            child: Image.asset(
              'assets/images/me.png',
              width: size.width,
            ),
          ),
          SizedBox(
            width: size.width,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      // padding: const EdgeInsets.only(left: 0),
                      enableFeedback: true,
                      onPressed: () {},
                      icon: const Icon(Icons.heart_broken_outlined),
                      iconSize: 30,
                      alignment: Alignment.center,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                    ),
                    IconButton(
                      // padding: const EdgeInsets.only(left: 0),
                      onPressed: () {},
                      icon: const Icon(Icons.comment_outlined),
                      iconSize: 30,
                      alignment: Alignment.center,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                    ),
                    IconButton(
                      // padding: const EdgeInsets.only(left: 0),
                      onPressed: () {},
                      icon: const Icon(Icons.send_outlined),
                      iconSize: 30,
                      alignment: Alignment.center,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                    ),
                  ],
                ),
                IconButton(
                  // padding: const EdgeInsets.only(left: 200),
                  onPressed: () {},
                  icon: const Icon(Icons.bookmark_add_outlined),
                  iconSize: 30,
                  alignment: Alignment.centerRight,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                ),
              ],
            ),
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10, top: 10, bottom: 30),
                child: Text(
                  '200 Dislikes',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
