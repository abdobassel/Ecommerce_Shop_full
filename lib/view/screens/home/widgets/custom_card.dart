import 'package:ecommerce_flutter/controller/home_controller.dart';
import 'package:ecommerce_flutter/core/class/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomCardHome extends GetView<HomeControllerImpl> {
  const CustomCardHome(
      {super.key, required this.title, required this.subTitle});
  final String title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(children: [
        Container(
          alignment: Alignment.center,
          child: ListTile(
            title: Text(title,
                style: TextStyle(fontSize: 20, color: Colors.white)),
            subtitle: Text(subTitle,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.white)),
          ),
          height: 170,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColor.primary,
          ),
        ),
        Positioned(
            top: -1,
            right: controller.language == "en" ? -25 : null,
            left: controller.language == "ar" ? -25 : null,
            child: Container(
              height: 150,
              width: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80),
                color: Color.fromARGB(255, 178, 27, 7),
              ),
            )),
      ]),
    );
  }
}
