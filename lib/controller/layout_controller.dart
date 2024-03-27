import 'package:ecommerce_flutter/view/screens/favorite/favorite_screen.dart';
import 'package:ecommerce_flutter/view/screens/home/home_screen.dart';
import 'package:ecommerce_flutter/view/screens/profile/profilescreen.dart';
import 'package:ecommerce_flutter/view/screens/settings/settingsScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LayoutController extends GetxController {
  changeScreen(int index);
}

class LayoutControllerImpl extends LayoutController {
  int currentpage = 0;

  @override
  changeScreen(int index) {
    currentpage = index;
    update();
    print(index);
  }

  List<IconData> icons = [
    Icons.home,
    Icons.settings,
    Icons.favorite,
    Icons.person_2_outlined
  ];
  List<Widget> screens = [
    MyHomePage(),
    SettingsScreen(),
    FavoriteScreen(),
    ProfileScreen(),
  ];

  List<String> titles = ['Home', 'Settings', 'Favourite', 'Profile'];
}
