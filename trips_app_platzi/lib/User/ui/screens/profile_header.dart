import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:trips_app_platzi/User/bloc/bloc_user.dart';
import 'package:trips_app_platzi/User/model/user_data.dart';
import 'package:trips_app_platzi/User/ui/widgets/users_info.dart';
import 'package:trips_app_platzi/User/ui/widgets/buttons_bar.dart';

class ProfileHeader extends StatelessWidget {
  UserBloc userBloc;
  UserData user;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of<UserBloc>(context);

    return StreamBuilder(
      stream: userBloc.streamFirebase,
      // ignore: missing_return
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        switch(snapshot.connectionState){
          case ConnectionState.waiting:
          case ConnectionState.none:
            return CircularProgressIndicator();
          case ConnectionState.active:
          case ConnectionState.done:
            return showProfileData(snapshot);
        }
      },

    );
  }

  Widget showProfileData(AsyncSnapshot snapshot) {
    if (!snapshot.hasData || snapshot.hasError) {
      print("No loggeado");
      return Container(
        margin: EdgeInsets.only(
            left: 20.0,
            right: 20.0,
            top: 50.0
        ),
        child: Column(
          children: <Widget>[
            CircularProgressIndicator(),
            Text("No se pudo cargar la información")
          ],
        ),
      );
    }
    else {
      print("Loggeado");
      print(snapshot.data);
      user = UserData(name: snapshot.data.displayName, email: snapshot.data.email, photoURL: snapshot.data.photoURL);
      final title = Text(
      "Profile",
      style: TextStyle(
        fontFamily: "Lato",
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 30.0
      ),
    );

      return Container(
      margin: EdgeInsets.only(
        left: 20.0,
        right: 20.0,
        top: 50.0
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              title
            ],
          ),
          UsersInfo(user),
          ButtonsBar()
        ],
      ),
    );

    }
  }

}
