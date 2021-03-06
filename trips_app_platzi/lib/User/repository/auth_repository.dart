import 'package:firebase_auth/firebase_auth.dart';
import 'package:trips_app_platzi/User/repository/firebase_auth_api.dart';

class AuthRepository {

  final _firebaseAuthApi = FirebaseAuthAPI();

  Future<UserCredential> signInFirebase() => _firebaseAuthApi.signIn();

  signOut() => _firebaseAuthApi.signOut();

}