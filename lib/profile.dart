import 'package:flutter/material.dart';
import 'package:platzi_trips_app/header_profile.dart';
import 'package:platzi_trips_app/save_places_list.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        HeaderProfile(),
        SavePlacesList(),
      ],
    );
  }
}
