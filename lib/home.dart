import 'package:flutter/material.dart';

import 'description_place.dart';
import 'review_list.dart';
import './header_appbar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace('Duwili Ella', 3,
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id nisl in ex eleifend mattis. Sed in auctor risus. Aliquam a viverra justo. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec sit amet odio eget lorem lobortis blandit. Proin pulvinar mi sed lorem hendrerit, vitae feugiat nunc rhoncus.'),
            ReviewList(5)
          ],
        ),
        HeaderAppBar()
      ],
    );
  }
}
