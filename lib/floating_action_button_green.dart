import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  bool isPressed = false;

  void onPressedFav() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(this.isPressed
                ? "Agregado a favoritos"
                : "Eliminado de favoritos"),
          );
        });
    setState(() {
      isPressed = !this.isPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(
        this.isPressed ? Icons.favorite : Icons.favorite_border,
        color: Colors.white,
      ),
    );
  }
}
