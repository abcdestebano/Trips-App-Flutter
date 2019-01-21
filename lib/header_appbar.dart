import 'package:flutter/material.dart';

import './card_image_list.dart';
import './gradient_back.dart';

class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[GradientBack("Welcome", 250.0), CardImageList()],
    );
  }
}
