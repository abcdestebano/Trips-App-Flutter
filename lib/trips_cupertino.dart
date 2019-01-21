import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './home.dart';
import './profile.dart';
import './search.dart';

class TripsCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Color(0xFF584CD1)),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Color(0xFF584CD1)),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Color(0xFF584CD1)),
            )
          ],
        ),
        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) => Home(),
              );
              break;
            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) => Search(),
              );
              break;
            case 2:
              return CupertinoTabView(
                builder: (BuildContext context) => Profile(),
              );
              break;
            default:
          }
        },
      ),
    );
  }
}
