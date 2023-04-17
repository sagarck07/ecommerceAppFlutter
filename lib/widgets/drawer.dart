import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://scontent-pnq1-2.cdninstagram.com/v/t51.2885-19/320744372_821671369065355_8843751706180193496_n.jpg?stp=dst-jpg_s150x150&_nc_ht=scontent-pnq1-2.cdninstagram.com&_nc_cat=107&_nc_ohc=WtV38K1AmC4AX_UPrrG&edm=ACWDqb8BAAAA&ccb=7-5&oh=00_AfD2W18qrZHClzcO9V77It8eX-Kk2fFCQVeivZoWP2Y1aQ&oe=6441B1FA&_nc_sid=1527a3";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: Text("Shubham Sagar"),
                accountEmail: Text("Shubhamsagar585@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.white),
              title: Text("Home",
                  textScaleFactor: 1.2, style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading:
                  Icon(CupertinoIcons.profile_circled, color: Colors.white),
              title: Text("Profile",
                  textScaleFactor: 1.2, style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail, color: Colors.white),
              title: Text("Mail",
                  textScaleFactor: 1.2, style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
