import 'package:ecommerce_flutter/view/screens/auth/forget_password.dart';
import 'package:ecommerce_flutter/view/screens/auth/loginscreen.dart';
import 'package:ecommerce_flutter/view/screens/auth/register_page.dart';
import 'package:ecommerce_flutter/view/screens/auth/resetPassword.dart';
import 'package:ecommerce_flutter/view/screens/auth/success_reset.dart';
import 'package:ecommerce_flutter/view/screens/auth/success_signup.dart';
import 'package:ecommerce_flutter/view/screens/auth/verifycode.dart';
import 'package:ecommerce_flutter/view/screens/home/home_screen.dart';
import 'package:ecommerce_flutter/view/screens/language/languagescreen.dart';
import 'package:ecommerce_flutter/view/screens/onboarding.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String home = '/';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String forgetPassword = '/forgetpassword';

  static const String verfiyCode = '/verfiy';
  static const String resetPassword = '/resetpassword';

  static const String languagescreen = '/language';

  static const String onboarding = '/onboarding';
  static const String success_reset = '/succes_reset';

  static const String success_signup = '/succes_signup';
}

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.home: (context) => MyHomePage(),

  AppRoutes.onboarding: (context) => OnBoarding(),
  AppRoutes.languagescreen: (context) => LanguageScreen(),
  //auth start
  AppRoutes.login: (context) => LoginScreen(),
  AppRoutes.signup: (context) => RegisterScreen(),
  AppRoutes.forgetPassword: (context) => ForgetPassword(),
  AppRoutes.verfiyCode: (context) => VeryfiCode(),
  AppRoutes.resetPassword: (context) => ResetPassword(),
  AppRoutes.success_reset: (context) => SuccessResetPassword(),

  AppRoutes.success_signup: (context) => Success_Signup(),
};
