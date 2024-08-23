import 'package:clone_ui_tiktok/screens/app/my_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarBrightness: Brightness.light,
    statusBarColor: Colors.transparent, // statusBarColor của device trong suốt
  ));
  runApp(const MyApp());
}

