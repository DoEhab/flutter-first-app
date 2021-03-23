import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth/screens/custom_form.dart';

class App extends StatelessWidget {
  // Create the initialization Future outside of `build`
  //Initialize firebase
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize Firebase:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return Container();
        }
        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return MyCustomForm();
        }
        // Otherwise, show something whilst waiting for initialization to complete
        return Container();
      },
    );
  }
}