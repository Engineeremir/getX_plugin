import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getplugin/view/homePage.dart';
import 'package:getplugin/view/translations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Messages(),
      locale: Locale('tr', 'TR'),
      fallbackLocale: Locale('en', 'UK'),
debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

