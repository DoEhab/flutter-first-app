import 'package:flutter/material.dart';

abstract class BasePage extends StatefulWidget{
  BasePage({Key key}): super(key: key);
}

abstract class BaseState<Page extends BasePage> extends State<Page>{
  String barTitle();
}

mixin BasicPage<Page extends BasePage> on BaseState<Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(barTitle()),

        ),
        body: Container(
          child: body(),
          color: Colors.transparent,
        ));
  }

  Widget body();
}