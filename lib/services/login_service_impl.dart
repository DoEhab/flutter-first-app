import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_firebase_auth/models/base_response.dart';
import 'package:flutter_firebase_auth/models/user.dart';

import 'login_service.dart';

class LoginServiceImpl implements LoginService {
  @override
  Future<UserCredential> login(String username, String password) async {
    return await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: username, password: password);
  }
}
