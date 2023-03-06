import 'package:flutter/material.dart';

enum MoreItems { share, link, save }

class PopUpMenuButton extends StatefulWidget {
  const PopUpMenuButton({super.key});

  @override
  State<PopUpMenuButton> createState() => _PopUpMenuButtonState();
}

class _PopUpMenuButtonState extends State<PopUpMenuButton> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<MoreItems>(
      splashRadius: 0.0001,
      icon: const Icon(
        Icons.more_horiz,
        color: Colors.white,
      ),
      color: Colors.black,
      iconSize: 30,
      itemBuilder: (BuildContext context) => <PopupMenuEntry<MoreItems>>[
        PopupMenuItem<MoreItems>(
          value: MoreItems.share,
          child: Row(
            children: const [
              Icon(Icons.share),
              SizedBox(
                width: 5,
              ),
              Text('Share'),
            ],
          ),
        ),
        PopupMenuItem<MoreItems>(
          value: MoreItems.link,
          child: Row(
            children: const [
              Icon(Icons.link),
              SizedBox(
                width: 5,
              ),
              Text('Link'),
            ],
          ),
        ),
        PopupMenuItem<MoreItems>(
          value: MoreItems.save,
          child: Row(
            children: const [
              Icon(Icons.bookmark_add_outlined),
              SizedBox(
                width: 5,
              ),
              Text('Save'),
            ],
          ),
        ),
      ],
    );
  }
}
