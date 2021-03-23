import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_firebase_auth/models/base_response.dart';

class UserData extends BaseResponse{
  UserCredential userCredential;

  UserData({this.userCredential});
}
