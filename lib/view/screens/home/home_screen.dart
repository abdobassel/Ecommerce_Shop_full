import 'package:ecommerce_flutter/components/components.dart';
import 'package:ecommerce_flutter/controller/home_controller.dart';
import 'package:ecommerce_flutter/core/class/app_color.dart';
import 'package:ecommerce_flutter/view/widgets/custom_text_field_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeControllerImpl controller = Get.put(HomeControllerImpl());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(children: [
          CustomSearchField(),
          SizedBox(
            height: 15,
          ),
          Container(
            child: Stack(children: [
              Container(
                alignment: Alignment.center,
                child: ListTile(
                  title: Text('A summer offers',
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                  subtitle: Text('A Discount offers',
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
                  right: -25,
                  child: Container(
                    height: 150,
                    width: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      color: Color.fromARGB(255, 178, 27, 7),
                    ),
                  )),
            ]),
          ),
        ]),
      ),
    );
  }
}
