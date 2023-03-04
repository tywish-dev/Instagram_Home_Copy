import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.appBar});
  final AppBar appBar;
  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AppBar(
      flexibleSpace: Container(
        width: size.width,
      ),
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
    );
  }
}
