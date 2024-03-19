import 'package:ecommerce_flutter/main.dart';
import 'package:ecommerce_flutter/view/screens/auth/loginscreen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String login = '/login';
  static const String home = '/';
}

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.home: (context) => MyHomePage(),
  AppRoutes.login: (context) => Login(),
};
