import 'package:flutter/material.dart';
import 'package:trips_app_platzi/widgets/gradient_back.dart';
import 'package:trips_app_platzi/widgets/button_green.dart';
import 'package:trips_app_platzi/User/bloc/bloc_user.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:trips_app_platzi/fucntion_trips_cupertino.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return _handleCurrentSession();
  }

  Widget _handleCurrentSession() {
    return StreamBuilder(
      stream: userBloc.authStatus,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        //snapshot - data - Object user
        if(!snapshot.hasData || snapshot.hasError) {
          return signInGoogleUI();
        }
        else {
          return FunctionTripsCupertino();
        }
      }

    );
  }

  Widget signInGoogleUI() {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          GradientBack("", null),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome \n This is your Travel App",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Lato",
                  color: Colors.white
                ),
              ),
              ButtonGreen(text: "Login with Gmail",
                onPressed: () {
                userBloc.signIn().then((UserCredential user) => print("El usuario es ${user.user.displayName}"));
              },
              width: 300.0,
              height: 50.0,)
            ],
          )
        ],
      ),
    );
  }
}
