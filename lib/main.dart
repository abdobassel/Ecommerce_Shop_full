import 'package:ecommerce_flutter/core/class/binding.dart';
import 'package:ecommerce_flutter/core/constant/asset_images/routes.dart';
import 'package:ecommerce_flutter/core/functions/check_internet.dart';
import 'package:ecommerce_flutter/core/localization/change_local.dart';
import 'package:ecommerce_flutter/core/localization/translation.dart';
import 'package:ecommerce_flutter/core/services/services.dart';
import 'package:ecommerce_flutter/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await checkInternet(); //print true if internet works
  await initialServices();

  MyServices myServices =
      Get.find(); // استخدم Get.find() للحصول على مثيل الخدمة المهيأة
  bool submitedOnboard =
      myServices.sharedPreferences.getBool('onboard') ?? false;
  // FirebaseMessaging.instance.getToken().then((value) {
  // print(value);
  //});

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
      //  routes: routes,
      translations: MyTranslations(),
      locale: localeController.language,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "cairo",
      ),
      initialBinding: MyBinding(), // lazyput controllers
      getPages: getPages,
    );
  }
}
