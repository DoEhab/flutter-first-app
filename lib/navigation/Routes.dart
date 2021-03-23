import 'package:flutter/cupertino.dart';
import 'package:flutter_firebase_auth/screens/custom_form.dart';
import 'package:flutter_firebase_auth/screens/second_screen.dart';

class Routes{
  static final String home = '/MyCustomForm';
  static final String secondScreen = '/secondScreen';

  static final routes = <String, WidgetBuilder>{
    home: (BuildContext context) => MyCustomForm(),
    secondScreen: (BuildContext context) => SecondScreen()
  };
}