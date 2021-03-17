import 'package:flutter/material.dart';
import 'package:trips_app_platzi/widgets/button_purple.dart';

class DescriptionPlace extends StatelessWidget {

  ///Used variables
  String namePlace;
  int stars;
  String descriptionPlace;

  //Description place function declared (constructor)
  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    ///Widgets for different types of stars
    final star_half = Container(
      margin: EdgeInsets.only(top: 323.0, right: 3.0),
      child: Icon(
          Icons.star_half,
          color: Color(0xFFf2C611)
      ),
    );

    final star_border = Container(
      margin: EdgeInsets.only(top: 323.0, right: 3.0),
      child: Icon(
          Icons.star_border,
          color: Color(0xFFf2C611)
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(top: 323.0, right: 3.0),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611)
      ),
    );

    ///Widget title-stars layout
    final title_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 320.0, left: 20.0, right: 20.0),
          child: Text(
            namePlace,
            style: TextStyle(fontSize: 30.0, fontFamily: "Lato", fontWeight: FontWeight.w900),
            textAlign: TextAlign.left
          ),
        ),
        Row(
          children: <Widget>[star, star, star, star_half, star_border],
        )
      ],
    );

    //throw UnimplementedError();

    ///Widget for description layout
    final description = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0
      ),

      child: new Text(
        descriptionPlace,
        style: TextStyle(fontSize: 16.0, fontFamily: "Lato", fontWeight: FontWeight.bold, color: Color(0xFF56575a)),
        textAlign: TextAlign.left,
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          title_stars,
          description,
          ButtonPurple("Navigate")
        ],
    );

  }
}
