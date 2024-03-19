import 'package:ecommerce_flutter/core/constant/asset_images/routes.dart';
import 'package:ecommerce_flutter/view/screens/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences shared;

bool submitedOnboard = shared.getBool('onboard') ?? false;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  shared = await SharedPreferences.getInstance();
  runApp(const MyApp());
  print(submitedOnboard);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // routes: routes,

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Cairo",
      ),
      home: submitedOnboard ? const MyHomePage() : OnBoarding(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
        ),
        body: Center(child: Text('Heeloooo')));
  }
}
