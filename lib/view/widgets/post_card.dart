import 'package:flutter/material.dart';

class PostCard extends StatefulWidget {
  const PostCard(
      {super.key,
      required this.postUrl,
      required this.username,
      required this.profilePic,
      required this.dislikeCount});

  final String postUrl;
  final String username;
  final String profilePic;
  final int dislikeCount;

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  bool onPressed = false;
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
                        widget.profilePic,
                        height: 30,
                        width: 30,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        widget.username,
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  hoverColor: Colors.transparent,
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
              widget.postUrl,
              height: size.height * 0.5,
              fit: BoxFit.cover,
              alignment: Alignment.center,
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
                      hoverColor: Colors.transparent,
                      onPressed: () {
                        setState(() {
                          if (onPressed == false
                              ? onPressed = true
                              : onPressed = false) ;
                        });
                      },
                      icon: const Icon(Icons.heart_broken_outlined),
                      iconSize: 30,
                      alignment: Alignment.center,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      color: onPressed == true ? Colors.red : Colors.white,
                    ),
                    IconButton(
                      onPressed: () {},
                      hoverColor: Colors.transparent,
                      icon: const Icon(Icons.comment_outlined),
                      iconSize: 30,
                      alignment: Alignment.center,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.send_outlined),
                      hoverColor: Colors.transparent,
                      iconSize: 30,
                      alignment: Alignment.center,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.bookmark_add_outlined),
                  hoverColor: Colors.transparent,
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
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10, bottom: 30),
                child: Text(
                  (onPressed == true
                      ? '${widget.dislikeCount + 1} Dislikes'
                      : '${widget.dislikeCount} Dislikes'),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
