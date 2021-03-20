import 'package:flutter/material.dart';

class UserData {
  final String name;
  final String email;
  final String photoURL;

  UserData({
    Key key,
    @required this.name,
    @required this.email,
    this.photoURL,
});
}