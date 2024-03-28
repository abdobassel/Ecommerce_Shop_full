import 'package:ecommerce_flutter/core/middlewares/firstmiddleware.dart';
import 'package:ecommerce_flutter/test_view.dart';
import 'package:ecommerce_flutter/view/screens/auth/forget_password.dart';
import 'package:ecommerce_flutter/view/screens/auth/loginscreen.dart';
import 'package:ecommerce_flutter/view/screens/auth/register_page.dart';
import 'package:ecommerce_flutter/view/screens/auth/resetPassword.dart';
import 'package:ecommerce_flutter/view/screens/auth/success_reset.dart';
import 'package:ecommerce_flutter/view/screens/auth/success_signup.dart';
import 'package:ecommerce_flutter/view/screens/auth/verfycode_signup.dart';
import 'package:ecommerce_flutter/view/screens/auth/verifycode.dart';
import 'package:ecommerce_flutter/view/screens/home/home_screen.dart';
import 'package:ecommerce_flutter/view/screens/home/layout.dart';
import 'package:ecommerce_flutter/view/screens/items_screen.dart';
import 'package:ecommerce_flutter/view/screens/language/languagescreen.dart';
import 'package:ecommerce_flutter/view/screens/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppRoutes {
  static const String home = '/home';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String forgetPassword = '/forgetpassword';

  static const String verfiyCode = '/verfiy';
  static const String resetPassword = '/resetpassword';

  // static const String languagescreen = '/';

  static const String onboarding = '/onboarding';
  static const String success_reset = '/succes_reset';

  static const String success_signup = '/succes_signup';

  static const String verfycode_signup = '/veryficode_signup';
  static const String test = '/test';
  static const String homeLayout = '/layout';
  static const String itemsscreen = '/items';
}

// routes => builtin flutter not getx

/*
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
  AppRoutes.verfycode_signup: (context) => VerfyCodeSignup(),
};
*/
// getx route getpage
List<GetPage<dynamic>>? getPages = [
  GetPage(
      name: '/',
      page: () => LanguageScreen(),
      middlewares: [FirstMiddleWare()]),
  GetPage(name: AppRoutes.onboarding, page: () => OnBoarding()),
  GetPage(name: AppRoutes.login, page: () => LoginScreen()),
  GetPage(name: AppRoutes.signup, page: () => RegisterScreen()),
  GetPage(name: AppRoutes.home, page: () => MyHomePage()),
  GetPage(name: AppRoutes.forgetPassword, page: () => ForgetPassword()),
  GetPage(name: AppRoutes.verfiyCode, page: () => VeryfiCode()),
  GetPage(name: AppRoutes.resetPassword, page: () => ResetPassword()),
  GetPage(name: AppRoutes.success_reset, page: () => SuccessResetPassword()),
  GetPage(name: AppRoutes.success_signup, page: () => Success_Signup()),
  GetPage(name: AppRoutes.verfycode_signup, page: () => VerfyCodeSignup()),
  GetPage(name: AppRoutes.test, page: () => TestV()),
  GetPage(name: AppRoutes.homeLayout, page: () => HomeLayout()),
  GetPage(name: AppRoutes.itemsscreen, page: () => ItemsScreen()),
];
