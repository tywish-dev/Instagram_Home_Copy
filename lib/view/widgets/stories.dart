import 'package:flutter/material.dart';

class Story extends StatefulWidget {
  const Story({super.key, required this.username, required this.imageUrl});

  final String username;
  final String imageUrl;

  @override
  State<Story> createState() => _StoryState();
}

class _StoryState extends State<Story> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 10),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Container(
                  width: 68,
                  height: 68,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [
                        Colors.red.withOpacity(1),
                        Colors.blue.withOpacity(1)
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    widget.imageUrl,
                    height: 60,
                    width: 60,
                    alignment: Alignment.center,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 5),
          child: Text(
            widget.username!,
            style: const TextStyle(
              fontSize: 12,
            ),
          ),
        )
      ],
    );
  }
}
