import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:govmatrix/routes/routes.dart';
import 'package:govmatrix/screens/calendarScreen.dart';
import 'package:govmatrix/screens/electionsScreen.dart';
import 'package:govmatrix/screens/newsScreen.dart';
import 'package:govmatrix/screens/peopleScreen.dart';
import 'package:govmatrix/screens/resourcesScreen.dart';
import 'package:govmatrix/screens_account/about.dart';
import 'package:govmatrix/screens_account/favorites.dart';

void main() => runApp(AppScreen());

var globalContext; //Declare global variable to store context from StatelessWidget.

class _BottomNavBarState extends State<BottomNavBar> {
  static const String routeName = '/app3';
  int _selectedPage = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  List pages = [
    MyRoute(
      iconData: Icons.library_books,
      page: NewsScreen(),
    ),
    MyRoute(
      iconData: Icons.calendar_today,
      page: CalendarScreen(),
    ),
    MyRoute(
      iconData: Icons.people,
      page: PeopleScreen(),
    ),
    MyRoute(
      iconData: Icons.check_box,
      page: ElectionsScreen(),
    ),
    MyRoute(
      iconData: Icons.work,
      page: ResourcesScreen(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    globalContext =
        context; //globalContext receives context from StatelessWidget.
    return Scaffold(
      appBar: AppBar(
        title: Text("GovMatrix"),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        actions: <Widget>[
          Builder(
            builder: (context) {
              return IconButton(
                icon: Icon(Icons.person),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
              );
            },
          )
        ],
      ),
      // Start: Settings
      // Drawer
      drawer: new Drawer(
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
                'General Settings',
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
      ),
      // End: Settings Drawer
      // Start: Profile Drawer
      endDrawer: Drawer(
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
                'Account Settings',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  color: Colors.grey[300],
                ),
              ),
            ),
            new ListTile(
              title: new Text(
                'Profile & Security',
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
                Icons.person,
                size: 26.0,
                color: Colors.white,
              ),
            ),
            new ListTile(
              title: new Text(
                'Notifications',
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
                'Favorites',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.popAndPushNamed(context, Routes.favorites);
              },
              leading: new Icon(
                Icons.favorite,
                size: 26.0,
                color: Colors.white,
              ),
            ),
            new ListTile(
              title: new Text(
                'About GovMatrix',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.popAndPushNamed(context, Routes.about);
              },
              leading: new Icon(
                Icons.info_outline,
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
            new ListTile(
              title: new Text(
                'Log Out & Exit',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
              leading: new Icon(
                Icons.exit_to_app,
                size: 26.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      //End: Profile Drawer
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 75.0,
        color: Colors.black,
        items: pages
            .map((p) => Icon(
                  p.iconData,
                  size: 30,
                ))
            .toList(),
        buttonBackgroundColor: Colors.black,
        backgroundColor: Colors.grey[300],
        animationCurve: Curves.easeInOutExpo,
        animationDuration: Duration(milliseconds: 400),
        onTap: (index) {
          setState(() {
            _selectedPage = index;
          });
        },
      ),
      body: pages[_selectedPage].page,
    );
  }
}

class AppScreen extends StatelessWidget {
  static const String routeName = '/app';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GovMatrix',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        accentColor: Colors.grey,
        canvasColor: Colors.transparent,
        fontFamily: 'Calibri',
        textTheme: TextTheme(
          headline: TextStyle(
            fontSize: 72.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          title: TextStyle(
            fontSize: 36.0,
            color: Colors.black,
            fontStyle: FontStyle.normal,
          ),
          body1: TextStyle(
            fontSize: 14.0,
            color: Colors.grey[300],
          ),
        ),
      ),
      home: BottomNavBar(),
      routes: {
        Routes.about: (context) => AboutScreen(),
        Routes.favorites: (context) => FavoritesScreen(),
      },
    );
  }
}

class BottomNavBar extends StatefulWidget {
  static const String routeName = '/app2';
  BottomNavBar({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class MyRoute {
  final IconData iconData;
  final Widget page;

  MyRoute({this.iconData, this.page});
}
