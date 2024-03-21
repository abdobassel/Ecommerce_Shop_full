import 'package:ecommerce_flutter/core/constant/asset_images/routes.dart';
import 'package:ecommerce_flutter/core/localization/change_local.dart';
import 'package:ecommerce_flutter/core/localization/translation.dart';
import 'package:ecommerce_flutter/core/services/services.dart';
import 'package:ecommerce_flutter/view/screens/auth/forget_password.dart';
import 'package:ecommerce_flutter/view/screens/auth/loginscreen.dart';
import 'package:ecommerce_flutter/view/screens/auth/register_page.dart';
import 'package:ecommerce_flutter/view/screens/auth/resetPassword.dart';
import 'package:ecommerce_flutter/view/screens/auth/success_reset.dart';
import 'package:ecommerce_flutter/view/screens/auth/success_signup.dart';
import 'package:ecommerce_flutter/view/screens/auth/verfycode_signup.dart';
import 'package:ecommerce_flutter/view/screens/auth/verifycode.dart';
import 'package:ecommerce_flutter/view/screens/home/home_screen.dart';
import 'package:ecommerce_flutter/view/screens/language/languagescreen.dart';
import 'package:ecommerce_flutter/view/screens/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();

  MyServices myServices =
      Get.find(); // استخدم Get.find() للحصول على مثيل الخدمة المهيأة
  bool submitedOnboard =
      myServices.sharedPreferences.getBool('onboard') ?? false;

  runApp(MyApp(
    submit: submitedOnboard,
  ));
  // print(submitedOnboard);
}

class MyApp extends StatelessWidget {
  MyApp({super.key, required this.submit});
  final bool submit;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController localeController = Get.put(LocaleController());
    return GetMaterialApp(
      routes: routes,
      translations: MyTranslations(),
      locale: localeController.language,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "cairo",
      ),
      initialRoute: submit ? AppRoutes.languagescreen : AppRoutes.onboarding,
      getPages: [
        GetPage(name: AppRoutes.languagescreen, page: () => LanguageScreen()),
        GetPage(name: AppRoutes.onboarding, page: () => OnBoarding()),
        GetPage(name: AppRoutes.login, page: () => LoginScreen()),
        GetPage(name: AppRoutes.signup, page: () => RegisterScreen()),
        GetPage(name: AppRoutes.home, page: () => MyHomePage()),
        GetPage(name: AppRoutes.forgetPassword, page: () => ForgetPassword()),
        GetPage(name: AppRoutes.verfiyCode, page: () => VeryfiCode()),
        GetPage(name: AppRoutes.resetPassword, page: () => ResetPassword()),
        GetPage(
            name: AppRoutes.success_reset, page: () => SuccessResetPassword()),
        GetPage(name: AppRoutes.success_signup, page: () => Success_Signup()),
        GetPage(
            name: AppRoutes.verfycode_signup, page: () => VerfyCodeSignup()),
      ],
    );
  }
}
