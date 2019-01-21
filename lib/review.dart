import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String photo = 'assets/images/people.jpg';
  String name = 'Esteban Aragón';
  String details = '1 review - 5 photos';
  String comment = 'There is an amazing place here';

  Review(this.photo, this.name, this.details, this.comment);

  @override
  Widget build(BuildContext context) {
    final avatar = Container(
        margin: EdgeInsets.only(left: 20.0, top: 20),
        child: CircleAvatar(
            backgroundImage: NetworkImage(photo), maxRadius: 30.0));

    final userName = Container(
        margin: EdgeInsets.only(left: 20.0, top: 20),
        child: Text(name,
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 17.0, fontFamily: "Lato")));

    final userInfo = Container(
        margin: EdgeInsets.only(left: 20.0),
        child: Text(
          details,
          textAlign: TextAlign.left,
          style: TextStyle(
              fontSize: 13.0,
              fontFamily: "Lato",
              fontWeight: FontWeight.w100,
              color: Color.fromRGBO(0, 0, 0, 0.5)),
        ));

    final userComment = Container(
        margin: EdgeInsets.only(left: 20.0),
        child: Text(
          comment,
          textAlign: TextAlign.left,
          style: TextStyle(
              fontSize: 13.0, fontFamily: "Lato", fontWeight: FontWeight.bold),
        ));

    final userDetail = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[userName, userInfo, userComment],
    );

    return Row(
      children: <Widget>[avatar, userDetail],
    );
  }
}
