import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:v1/Screens/AcademicAdvising/AcademicAdvising.dart';
import 'package:v1/Screens/news/newspage.dart';
import 'package:v1/ui/ShapesPainter.dart';

import 'package:v1/Screens/ProfilePage.dart';
import 'package:v1/ui/login.dart';
class drower extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
              accountName: Text("smsm"),
              accountEmail: Text("CS 4"),
              //profile image
              currentAccountPicture: ClipRRect(
                  borderRadius: BorderRadius.circular(100.0),
                  child: Image.asset(
                    "img/as.png",
                    fit: BoxFit.fill,
                  ))),
          ListTile(
            title: Text('profile'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
            trailing: Icon(Icons.person),
          ),
          Divider(
            color: Colors.black,
            height: 4,
          ),
          ListTile(
            title: Text('Top news'),

            onTap: () {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => newspage()),
            );},
            trailing: Icon(Icons.timer),
          ),
          Divider(
            color: Colors.black,
            height: 4,
          ),
          ListTile(
            title: Text('Academic Advising'),
            onTap: () {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyHomePaged()),
            );},
            trailing: Icon(Icons.help_outline),
          ),
          Divider(
            color: Colors.black,
            height: 4,
          ),
          ListTile(
            title: Text('Setting'),
            onTap: () {},
            trailing: Icon(Icons.settings),
          ),
          Divider(
            color: Colors.black,
            height: 4,
          ),
          ListTile(
            title: Text('Log out'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              {Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => login()),
              );}
            },
            trailing: Icon(Icons.exit_to_app),
          ),
        ],
      ),
    );
  }
}