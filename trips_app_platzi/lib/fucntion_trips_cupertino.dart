import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:trips_app_platzi/Place/ui/screens/home_trips.dart';
import 'package:trips_app_platzi/Place/ui/screens/search_trips.dart';
import 'package:trips_app_platzi/User/bloc/bloc_user.dart';
import 'package:trips_app_platzi/User/ui/screens/profile_trips.dart';

class FunctionTripsCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled, color: Colors.indigoAccent), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.search, color: Colors.indigoAccent), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Colors.indigoAccent), label: "Profile"),
          ],
        ),
        // ignore: missing_return
        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) => HomeTrips(),
              );
              break;
            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) => SearchTrips(),
              );
              break;
            case 2:
              return CupertinoTabView(
                builder: (BuildContext context) {
                  return BlocProvider<UserBloc>(
                      child: ProfileTrips(), bloc: UserBloc()
                  );
                },
              );
              break;
          }
        },
      ),
    );
  }
}
