import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageurl = "https://i.pinimg.com/550x/66/fa/f0/66faf0075052cc8f392a912775e7956d.jpg";
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
                color: Color.fromARGB(255, 60, 251, 203),
              ),
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(
                color: Color.fromARGB(255, 60, 251, 203),
              ),
                accountName: Text("Aniket_Gupta"),
                accountEmail:Text("aniket.r.gupta@slrtce.in"), 
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageurl),
                ),
               ),
            ),
            ListTile(
              leading: Icon(
                 CupertinoIcons.home,
                 color: Colors.white,
                 size: 30,
              ),
              title: Text("Home",
              textScaleFactor: 1.3,
              style: TextStyle(
                color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                 CupertinoIcons.profile_circled,
                 color: Colors.white,
                 size: 30,
              ),
              title: Text("Profile",
              textScaleFactor: 1.3,
              style: TextStyle(
                color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                 CupertinoIcons.mail,
                 color: Colors.white,
                 size: 30,
              ),
              title: Text("Email-me",
              textScaleFactor: 1.3,
              style: TextStyle(
                color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}