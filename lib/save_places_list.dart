import 'package:flutter/material.dart';
import 'package:platzi_trips_app/card_save_place.dart';

class SavePlacesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 300.0),
      child: ListView(
        padding: EdgeInsets.only(left: 15.0, right: 15, bottom: 150.0),
        children: <Widget>[
          CardSavePlace(
              "https://images.unsplash.com/photo-1418225043143-90858d2301b4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
              "America's Mountains",
              "Fotography, climb",
              160000,
              0),
          CardSavePlace(
              "https://images.unsplash.com/photo-1513735626709-9359ee7983b6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
              "Sunset Lighthouse",
              "Water, fotography",
              1000,
              70.0),
          CardSavePlace(
              "https://images.unsplash.com/34/BA1yLjNnQCI1yisIZGEi_2013-07-16_1922_IMG_9873.jpg?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
              "Mountains Moon",
              "Fotografy, climb, skie",
              20000,
              70.0),
        ],
      ),
    );
  }
}
