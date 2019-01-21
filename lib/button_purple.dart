import 'package:flutter/material.dart';

class ButtonPurple extends StatelessWidget {
  String text;

  ButtonPurple(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180.0,
      height: 50.0,
      margin: EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          gradient: LinearGradient(
              colors: [Color(0xFF4268D3), Color(0xFF584CD1)],
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp)),
      child: InkWell(
        onTap: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text("Navigate!"),
                );
              });
        },
        child: Center(
          child: Text(
            this.text,
            style: TextStyle(
                color: Colors.white, fontFamily: "Lato", fontSize: 18.0),
          ),
        ),
      ),
    );
  }
}
