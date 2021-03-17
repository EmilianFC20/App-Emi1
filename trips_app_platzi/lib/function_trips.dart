import 'package:flutter/material.dart';
import 'package:trips_app_platzi/Place/ui/screens/search_trips.dart';
import 'package:trips_app_platzi/Place/ui/screens/home_trips.dart';
import 'package:trips_app_platzi/User/ui/screens/profile_trips.dart';

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
              label: "Home"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile"
            )
          ],
        ),
      ),
    );
  }

}