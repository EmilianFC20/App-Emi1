import 'package:flutter/material.dart';
import 'package:trips_app_platzi/Place/ui/widgets/review_list.dart';
import 'package:trips_app_platzi/Place/ui/widgets/description_place.dart';
import 'package:trips_app_platzi/Place/ui/screens/header_appbar.dart';

class HomeTrips extends StatelessWidget {

  String DescriptionText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dictum scelerisque metus sit amet interdum. Donec eu tellus justo. Nunc gravida sem a fermentum suscipit. Proin nunc massa, fringilla at tempor nec, condimentum sed nibh. Integer efficitur dignissim elit nec lacinia. Curabitur sed turpis mollis, viverra velit at, auctor ipsum. Pellentesque quis aliquam elit.";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace("Emi Island", 1, DescriptionText),
            ReviewList(),
          ],
        ),
        HeaderAppBar()
      ],
    );
  }
  
}