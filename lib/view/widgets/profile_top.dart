import 'package:flutter/material.dart';

class ProfileTop extends StatefulWidget {
  const ProfileTop({super.key, required this.picUrl});
  final String picUrl;
  @override
  State<ProfileTop> createState() => _ProfileTopState();
}

class _ProfileTopState extends State<ProfileTop> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(top: 20),
      width: size.width,
      height: size.height * 0.25,
      color: Colors.black,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  widget.picUrl,
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: const [
                  Text(
                    "0",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    'Post',
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
              Column(
                children: const [
                  Text("75",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  Text(
                    'Followers',
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
              Column(
                children: const [
                  Text("1",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  Text(
                    'Following',
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'samet',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text(
                      'Believe in Lord',
                      style: TextStyle(fontSize: 14),
                    )
                  ],
                ),
                SizedBox(
                  width: size.width * 0.60,
                )
              ],
            ),
          ),
          Container(
            width: size.width,
            height: size.height * 0.09,
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(
                        Color.fromARGB(255, 35, 35, 35)),
                    splashFactory: NoSplash.splashFactory,
                    minimumSize: MaterialStatePropertyAll(
                        Size(size.width * 0.44, size.width * 0.085)),
                  ),
                  onPressed: () {},
                  child: const Text('Edit Profile'),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(
                        Color.fromARGB(255, 35, 35, 35)),
                    splashFactory: NoSplash.splashFactory,
                    minimumSize: MaterialStatePropertyAll(
                        Size(size.width * 0.44, size.width * 0.085)),
                  ),
                  onPressed: () {},
                  child: const Text('Share Profile'),
                ),
                Container(
                  height: size.height * 0.04,
                  width: size.width * 0.1,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5)),
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: const MaterialStatePropertyAll(
                          Color.fromARGB(255, 35, 35, 35)),
                      splashFactory: NoSplash.splashFactory,
                      minimumSize: MaterialStatePropertyAll(
                          Size(size.width * 0.45, size.width * 0.085)),
                    ),
                    child: const Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
