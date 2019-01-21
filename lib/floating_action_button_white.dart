import 'package:flutter/material.dart';

class FloatingActionButtonWhite extends StatelessWidget {
  final Color backgroundColor;
  final IconData icon;
  final bool mini;

  FloatingActionButtonWhite(this.backgroundColor, this.icon, this.mini);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0),
        child: FloatingActionButton(
          backgroundColor: backgroundColor,
          mini: mini,
          onPressed: () => {},
          tooltip: "Fav",
          child: Icon(
            icon,
            color: Color(0xFF584CD1),
          ),
        ));
  }
}
