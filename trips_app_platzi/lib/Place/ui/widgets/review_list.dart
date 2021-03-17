import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/img/KE.jpg", "Emiliano Karlito", "1 review 5 photos",
            "There is an amazing place in Emi Island"),
        Review("assets/img/GotchaK.jpg", "Karla López", "1 review 5 photos",
            "El chico de abajo es muy guapo"),
        Review("assets/img/Mty.jpg", "Emiliano Fernández", "1 review 5 photos",
            "Soy muy guapo")

      ],
    );
  }
}
