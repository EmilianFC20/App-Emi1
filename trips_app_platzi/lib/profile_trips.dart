import 'package:flutter/material.dart';
import 'profile_background.dart';
import 'profile_header.dart';

class ProfileTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        ProfileBackgroud(),
        ListView(
          children: <Widget>[
            ProfileHeader(),
          ],
        )
      ],
    );
  }
  
}