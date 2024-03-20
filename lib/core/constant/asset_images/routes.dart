import 'package:ecommerce_flutter/main.dart';
import 'package:ecommerce_flutter/view/screens/auth/loginscreen.dart';
import 'package:ecommerce_flutter/view/screens/auth/register_page.dart';
import 'package:ecommerce_flutter/view/screens/language/languagescreen.dart';
import 'package:ecommerce_flutter/view/screens/onboarding.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String home = '/';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String languagescreen = '/language';

  static const String onboarding = '/onboarding';
}

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.home: (context) => MyHomePage(),
  AppRoutes.login: (context) => LoginScreen(),
  AppRoutes.onboarding: (context) => OnBoarding(),
  AppRoutes.languagescreen: (context) => LanguageScreen(),
  AppRoutes.signup: (context) => RegisterScreen(),
};
