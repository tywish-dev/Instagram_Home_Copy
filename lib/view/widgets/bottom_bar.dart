import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  bool homePress = false;
  bool searchPress = false;
  bool photoPress = false;
  bool playPress = false;

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
                  ? const Icon(Icons.home_outlined)
                  : const Icon(Icons.home),
              iconSize: 36,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  if (searchPress == false) {
                    searchPress = true;
                    homePress = true;
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
                  if (photoPress == false) {
                    photoPress = true;
                    homePress = true;
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
                  if (playPress == false) {
                    playPress = true;
                    homePress = true;
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
              child: Image.asset(
                'assets/images/profiles/me.png',
                height: 36,
                width: 36,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
