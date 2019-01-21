import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  int amountReviews;

  ReviewList(this.amountReviews);

  Widget setReviews(int numReviews) {
    List<Widget> reviews = [];
    List(numReviews).forEach((item) => reviews.add(Review(
        'assets/images/people.jpg',
        'Esteban Aragón',
        '1 review - 1 photo',
        'Everything was great!')));
    return new Column(children: reviews);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Review(
            'https://images.unsplash.com/photo-1542838687-f960f044ef1b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
            'Esteban Aragón',
            '1 review - 1 photo',
            'Everything was great!'),
        Review(
            'https://images.unsplash.com/photo-1542838077-57653741795a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
            'Daniela Suarez',
            '1 review - 5 photo',
            'Awesome!'),
        Review(
            'https://images.unsplash.com/photo-1508341591423-4347099e1f19?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
            'Steven Anaya',
            '1 review - 2 photo',
            'I dont know Rick!'),
      ],
    );
  }
}
