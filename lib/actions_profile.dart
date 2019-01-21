import 'package:flutter/material.dart';
import 'package:platzi_trips_app/floating_action_button_white.dart';

class ActionsProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FloatingActionButtonWhite(Colors.white, Icons.bookmark_border, true),
          FloatingActionButtonWhite(Colors.white54, Icons.tv, true),
          FloatingActionButtonWhite(Colors.white, Icons.add, false),
          FloatingActionButtonWhite(Colors.white54, Icons.mail_outline, true),
          FloatingActionButtonWhite(Colors.white54, Icons.person, true),
        ],
      ),
    );
  }
}
