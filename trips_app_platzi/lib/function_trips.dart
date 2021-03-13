import 'package:flutter/material.dart';
import 'search_trips.dart';
import 'home_trips.dart';
import 'profile_trips.dart';

class FunctionTrips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FunctionTrips();
  }

}

class _FunctionTrips extends State<FunctionTrips> {

  int indexTap = 0;
  final List<Widget> widgetsNavigation = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips()
  ];

  void onTapNavBar(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: widgetsNavigation[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple
        ),
        child: BottomNavigationBar(
          onTap: onTapNavBar,
          currentIndex: indexTap,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: ""
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: ""
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: ""
            )
          ],
        ),
      ),
    );
  }

}