import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:instagram_home_copy/view/screens/camera_screen.dart';

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
        'Dislikegram',
        textAlign: TextAlign.start,
      ),
      centerTitle: false,
      backgroundColor: Colors.black,
      elevation: 0,
      actions: [
        IconButton(
          hoverColor: Colors.transparent,
          onPressed: () async {
            await availableCameras().then((value) => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => CameraScreen(cameras: value))));
          },
          icon: const Icon(Icons.add_a_photo_outlined),
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        IconButton(
          hoverColor: Colors.transparent,
          onPressed: () {},
          icon: const Icon(Icons.heart_broken_outlined),
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
      ],
    );
  }
}
