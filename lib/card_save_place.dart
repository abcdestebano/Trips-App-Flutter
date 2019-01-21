import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:platzi_trips_app/floating_action_button_green.dart';

class CardSavePlace extends StatelessWidget {
  String image;
  String title;
  String category;
  double marginTop;
  int steps;

  CardSavePlace(
      this.image, this.title, this.category, this.steps, this.marginTop);

  @override
  Widget build(BuildContext context) {
    NumberFormat _formatter = NumberFormat("###,###");
    String formattedSteps = _formatter.format(this.steps);
    final card = Container(
      height: 200.0,
      margin: EdgeInsets.only(top: marginTop),
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: NetworkImage(this.image)),
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.2),
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0))
          ]),
    );

    final subCard = Stack(
      alignment: Alignment(0.9, 1.7),
      children: <Widget>[
        Container(
            width: 220.0,
            height: 90.0,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.elliptical(12, 12)),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.2),
                      blurRadius: 20.0,
                      offset: Offset(0.0, 7.0))
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  this.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    fontFamily: "Lato",
                  ),
                ),
                Text(
                  this.category,
                  style: TextStyle(
                    fontWeight: FontWeight.w100,
                    fontSize: 10.0,
                    color: Colors.grey,
                    fontFamily: "Lato",
                  ),
                ),
                Text(
                  "Steps $formattedSteps",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14.0,
                    color: Colors.amber,
                    fontFamily: "Lato",
                  ),
                ),
              ],
            )),
        FloatingActionButtonGreen(),
      ],
    );

    return Container(
      child: Stack(alignment: Alignment(0, 1.4), children: <Widget>[
        card,
        subCard,
      ]),
    );
  }
}
