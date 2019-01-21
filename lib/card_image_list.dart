import 'package:flutter/material.dart';

import './card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage('assets/images/paisaje1.jpeg'),
          CardImage('assets/images/paisaje2.jpeg'),
          CardImage('assets/images/paisaje3.jpeg'),
          CardImage('assets/images/paisaje4.jpeg'),
        ],
      ),
    );
  }
}
