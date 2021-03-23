
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_firebase_auth/models/user.dart';

abstract class LoginService{

  Future<UserCredential> login(String username, String password);

}