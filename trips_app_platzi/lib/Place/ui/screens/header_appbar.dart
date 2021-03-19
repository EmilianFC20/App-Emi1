import 'package:flutter/material.dart';
import 'package:trips_app_platzi/Place/ui/widgets/card_image_list.dart';
import 'package:trips_app_platzi/widgets/gradient_back.dart';

class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        GradientBack("Popular places", 250.0),
        CardImageList()
      ],
    );
  }
}