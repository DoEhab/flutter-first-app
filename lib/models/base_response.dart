import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class BaseResponse  {

  int code;
  String message;

  BaseResponse({this.message, this.code});
}
