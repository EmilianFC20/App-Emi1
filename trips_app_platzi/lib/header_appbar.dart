import 'package:flutter/material.dart';
import 'package:trips_app_platzi/card_image_list.dart';
import 'gradient_back.dart';
import 'card_image_list.dart';

class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        GradientBack("Popular places"),
        CardImageList()
      ],
    );
  }
}