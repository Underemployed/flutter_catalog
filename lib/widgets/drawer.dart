import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://media.licdn.com/dms/image/D4D03AQGykUxacUD1pA/profile-displayphoto-shrink_200_200/0/1678293124289?e=1688601600&v=beta&t=hzABw6o3_N_GRrzw-Uw8VFbhTMkqp4TSDq7o5UWePQg";
    return Drawer(
      child: Container(
        color: Color(0xFF1F2126),
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: Text(
                  "Paw",
                  style: TextStyle(color: Colors.white),
                ),
                accountEmail: Text(
                  "something@gmail.com",
                  style: TextStyle(color: Colors.white),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email me",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
