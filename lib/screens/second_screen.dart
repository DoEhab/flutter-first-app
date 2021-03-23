import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth/screens/base_page.dart';

class SecondScreen extends BasePage {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends BaseState<SecondScreen> with BasicPage {
  @override
  String barTitle() => 'Second Screen';

  @override
  Widget body() {

  }

}
