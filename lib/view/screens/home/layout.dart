import 'package:ecommerce_flutter/controller/layout_controller.dart';
import 'package:ecommerce_flutter/core/class/app_color.dart';
import 'package:ecommerce_flutter/view/screens/home/widgets/custom_btm_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeLayout extends StatelessWidget {
  HomeLayout({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(LayoutControllerImpl());

    return GetBuilder<LayoutControllerImpl>(builder: (controller) {
      return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppColor.primary,
          child: const Icon(
            Icons.shopping_cart,
          ),
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          notchMargin: 20,
          shape: CircularNotchedRectangle(),
          child: Row(
            children: [
              ...List.generate(controller.screens.length + 1, (index) {
                int i = index > 2 ? index - 1 : index;
                return index == 2
                    ? const Spacer()
                    : CustomBtmAppBar(
                        onpressed: () {
                          controller.changeScreen(i);
                        },
                        title: controller.titles[i],
                        iconData:
                            controller.icons[index > 2 ? index - 1 : index],
                        active: controller.currentpage == i ? true : false,
                      );
              })
            ],
          ),
        ),
        body: controller.screens.elementAt(controller.currentpage),
      );
    });
  }
}
