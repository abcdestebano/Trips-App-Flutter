import 'package:flutter/material.dart';

import './button_purple.dart';

class DescriptionPlace extends StatelessWidget {
  String title;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.title, this.stars, this.descriptionPlace);

  Widget star(bool withBorder) {
    return new Container(
      margin: EdgeInsets.only(top: 353.0, right: 3.0),
      child: Icon(
        withBorder ? Icons.star : Icons.star_border,
        color: Colors.amber,
      ),
    );
  }

  Widget showStars(int numberStars) {
    List<Widget> rowStars = [];
    List<Widget> rowStarsBorder = [];
    List(numberStars).forEach((i) => rowStars.add(star(true)));
    List((numberStars - 5).abs())
        .forEach((i) => rowStarsBorder.add(star(false)));
    List<Widget> finalStars = []..addAll(rowStars)..addAll(rowStarsBorder);
    return new Row(children: finalStars);
  }

  @override
  Widget build(BuildContext context) {
    final titleStarts = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 350.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Text(
            title,
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                fontFamily: "Lato"),
            textAlign: TextAlign.left,
          ),
        ),
        showStars(stars),
      ],
    );

    final description = Container(
        margin: EdgeInsets.symmetric(vertical: 15, horizontal: 22),
        child: Text(
          descriptionPlace,
          style: TextStyle(
              fontWeight: FontWeight.w100, fontSize: 16, fontFamily: "Lato"),
        ));

    final containerDescription = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[titleStarts, description, ButtonPurple("Navegar")],
    );

    return containerDescription;
  }
}
