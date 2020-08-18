import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      //drawer: new Drawer(
      child: new ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: new Text(
              '',
              style: TextStyle(
                fontSize: 1,
                fontWeight: FontWeight.w800,
                color: Colors.grey[300],
              ),
            ),
            accountEmail: new Text(
              'Modify Experiance',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w800,
                color: Colors.grey[300],
              ),
            ),
          ),
          new ListTile(
            title: new Text(
              'News (gen set)',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
            leading: new Icon(
              Icons.add_to_home_screen,
              size: 26.0,
              color: Colors.white,
            ),
          ),
          new ListTile(
            title: new Text(
              'Color & Design',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
            leading: new Icon(
              Icons.notifications,
              size: 26.0,
              color: Colors.white,
            ),
          ),
          new ListTile(
            title: new Text(
              'Social Media',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
            leading: new Icon(
              Icons.message,
              size: 26.0,
              color: Colors.white,
            ),
          ),
          new ListTile(
            title: new Text(
              'Login Options',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
            leading: new Icon(
              Icons.touch_app,
              size: 26.0,
              color: Colors.white,
            ),
          ),
          new Divider(
            color: Colors.white,
          ),
          new ListTile(
            title: new Text(
              'Close Menu',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
            leading: new Icon(
              Icons.close,
              size: 26.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
