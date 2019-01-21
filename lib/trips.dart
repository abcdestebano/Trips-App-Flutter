import 'package:flutter/material.dart';
import './home.dart';
import './profile.dart';
import './search.dart';

class Trips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Trips();
  }
}

class _Trips extends State<Trips> {
  final List<Widget> widgetsChildren = [
    Home(),
    Search(),
    Profile(),
  ];

  int indexTab = 0;

  void onTapTapped(int index) {
    setState(() {
      indexTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Theme(
          isMaterialAppTheme: true,
          data: Theme.of(context).copyWith(
              canvasColor: Colors.white, primaryColor: Color(0xFF584CD1)),
          child: BottomNavigationBar(
            currentIndex: indexTab,
            onTap: onTapTapped,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text("Home")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), title: Text("Search")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), title: Text("Profile"))
            ],
          ),
        ),
        body: widgetsChildren[indexTab]);
  }
}
