import 'package:flutter/material.dart';

class ProfileTabBar extends StatefulWidget {
  const ProfileTabBar({super.key});

  @override
  State<ProfileTabBar> createState() => _ProfileTabBarState();
}

class _ProfileTabBarState extends State<ProfileTabBar> {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: TabBar(
        indicatorColor: Colors.white,
        tabs: <Widget>[
          Tab(
            icon: Icon(Icons.grid_on),
          ),
          Tab(
            icon: Icon(Icons.person_pin_outlined),
          )
        ],
      ),
    );
  }
}
