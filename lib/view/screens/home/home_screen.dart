import 'package:ecommerce_flutter/components/components.dart';
import 'package:ecommerce_flutter/controller/home_controller.dart';
import 'package:ecommerce_flutter/core/class/app_color.dart';
import 'package:ecommerce_flutter/core/constant/asset_images/asset_images.dart';
import 'package:ecommerce_flutter/view/widgets/custom_text_field_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImpl());
    return Scaffold(
      body: GetBuilder<HomeControllerImpl>(builder: (controller) {
        return Padding(
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
            // list view data
            Text(
              'Categories',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 20),
              child: SizedBox(
                height: 140,
                child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 10,
                      );
                    },
                    itemCount: controller.categoriesData.length,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: AppColor.primary,
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              AssetImages.cart,
                              fit: BoxFit.fill,
                              height: 110,
                              width: 100,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                                '${controller.categoriesData[index]['name_ar']}'),
                          ],
                        ),
                      );
                    }),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              ' Products With Discounts ',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),

            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 20),
              child: SizedBox(
                height: 140,
                child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 10,
                      );
                    },
                    itemCount: controller.items.length,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: AppColor.gry,
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              AssetImages.cart,
                              fit: BoxFit.fill,
                              height: 110,
                              width: 100,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text('${controller.items[index]['name_ar']}'),
                          ],
                        ),
                      );
                    }),
              ),
            ),
          ]),
        );
      }),
    );
  }
}
