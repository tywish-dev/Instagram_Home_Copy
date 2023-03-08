import 'package:flutter/material.dart';
import 'package:instagram_home_copy/view/widgets/popup_menu.dart';
import 'package:lottie/lottie.dart';

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
  bool savePress = false;
  bool onPressed = false;
  bool _isLiked = false;
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
                const PopUpMenuButton(),
              ],
            ),
          ),
          Stack(children: [
            SizedBox(
              width: size.width,
              child: InteractiveViewer(
                minScale: 0.35,
                maxScale: 3,
                child: GestureDetector(
                  onDoubleTap: () {
                    setState(() {
                      _isLiked = !_isLiked;
                    });
                  },
                  child: Image.asset(
                    widget.postUrl,
                    height: size.height * 0.5,
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: size.width,
              height: size.height * 0.5,
              child: Align(
                  alignment: Alignment.center,
                  child: _isLiked == true
                      ? LottieBuilder.network(
                          'https://assets10.lottiefiles.com/packages/lf20_ldhvscz7.json',
                          repeat: false,
                        )
                      // ? const Icon(
                      //     Icons.heart_broken,
                      //     size: 120,
                      //     color: Colors.white,
                      //   )
                      : Container()),
            ),
          ]),
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
                          if (onPressed == false) {
                            onPressed = true;
                          } else {
                            onPressed = false;
                            _isLiked = false;
                          }
                        });
                      },
                      icon: onPressed == true || _isLiked == true
                          ? const Icon(Icons.heart_broken)
                          : const Icon(Icons.heart_broken_outlined),
                      iconSize: 30,
                      alignment: Alignment.center,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      color: onPressed == true || _isLiked == true
                          ? Colors.red
                          : Colors.white,
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
                  onPressed: () {
                    setState(() {
                      if (savePress == false) {
                        savePress = true;
                      } else {
                        savePress = false;
                      }
                    });
                    final snackBar = SnackBar(
                      backgroundColor: Colors.black,
                      content: const Text(
                        'You bookmarked this post!',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      action: SnackBarAction(
                        textColor: Colors.white,
                        label: 'Undo',
                        onPressed: () {
                          setState(() {
                            savePress = false;
                          });
                        },
                      ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  icon: savePress == true
                      ? const Icon(Icons.bookmark_add)
                      : const Icon(Icons.bookmark_add_outlined),
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
                  (onPressed == true || _isLiked == true
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
