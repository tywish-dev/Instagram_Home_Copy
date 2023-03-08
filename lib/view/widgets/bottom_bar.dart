import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key, required this.onPress});

  final Function(int pageIndex) onPress;
  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  bool homePress = true;
  bool searchPress = false;
  bool photoPress = false;
  bool playPress = false;
  bool profilePress = false;
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BottomAppBar(
      color: Colors.black,
      child: SizedBox(
        width: size.width * 0.95,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                  widget.onPress(pageIndex);
                  if (homePress == false) {
                    homePress = true;
                    searchPress = false;
                    photoPress = false;
                    playPress = false;
                  } else {
                    homePress = false;
                  }
                });
              },
              icon: homePress == true
                  ? const Icon(Icons.home)
                  : const Icon(Icons.home_outlined),
              iconSize: 36,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  pageIndex = 1;
                  widget.onPress(pageIndex);
                  if (searchPress == false) {
                    searchPress = true;
                    homePress = false;
                    photoPress = false;
                    playPress = false;
                  } else {
                    searchPress = false;
                  }
                });
              },
              icon: searchPress == true
                  ? const Icon(Icons.search)
                  : const Icon(Icons.search_outlined),
              iconSize: 36,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  pageIndex = 2;
                  widget.onPress(pageIndex);
                  if (photoPress == false) {
                    photoPress = true;
                    homePress = false;
                    searchPress = false;
                    playPress = false;
                  } else {
                    photoPress = false;
                  }
                });
              },
              icon: photoPress == true
                  ? const Icon(Icons.add_a_photo)
                  : const Icon(Icons.add_a_photo_outlined),
              iconSize: 36,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  pageIndex = 3;
                  widget.onPress(pageIndex);
                  if (playPress == false) {
                    playPress = true;
                    homePress = false;
                    searchPress = false;
                    photoPress = false;
                  } else {
                    playPress = false;
                  }
                });
              },
              icon: playPress == true
                  ? const Icon(Icons.play_circle)
                  : const Icon(Icons.play_circle_outline),
              iconSize: 36,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    pageIndex = 4;
                    widget.onPress(pageIndex);
                    if (profilePress == false) {
                      profilePress = true;
                      homePress = false;
                      searchPress = false;
                      photoPress = false;
                      playPress = false;
                    } else {
                      profilePress = false;
                    }
                  });
                },
                child: Image.asset(
                  'assets/images/profiles/me.png',
                  height: 36,
                  width: 36,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
