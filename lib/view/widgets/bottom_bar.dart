import 'package:flutter/material.dart';
import 'package:instagram_home_copy/view/widgets/stories.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

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
              onPressed: () {},
              icon: const Icon(Icons.home_filled),
              iconSize: 36,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              // padding: const EdgeInsets.only(left: 41),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
              iconSize: 36,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              // padding: const EdgeInsets.only(left: 41),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add_a_photo_outlined),
              iconSize: 36,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              // padding: const EdgeInsets.only(left: 41),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.play_circle_outline),
              iconSize: 36,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              // padding: const EdgeInsets.only(left: 41),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                'assets/images/profiles/me.png',
                height: 40,
                width: 40,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
