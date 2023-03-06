import 'package:flutter/material.dart';
import 'package:instagram_home_copy/view/widgets/bottom_bar.dart';
import 'package:instagram_home_copy/view/widgets/profile_tab_bar.dart';
import 'package:instagram_home_copy/view/widgets/profile_top.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: const [
          ProfileTop(
            picUrl: "assets/images/profiles/me.png",
          ),
          ProfileTabBar(),
        ],
      ),
      bottomNavigationBar: const BottomBar(
        profilePress: false,
        outOfHome: true,
      ),
    );
  }
}
