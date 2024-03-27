import 'package:ecommerce_flutter/components/components.dart';
import 'package:ecommerce_flutter/controller/home_controller.dart';
import 'package:ecommerce_flutter/core/class/app_color.dart';
import 'package:ecommerce_flutter/core/constant/asset_images/asset_images.dart';
import 'package:ecommerce_flutter/view/screens/home/widgets/custom_card.dart';
import 'package:ecommerce_flutter/view/screens/home/widgets/list_data_home.dart';
import 'package:ecommerce_flutter/view/screens/home/widgets/list_data_items_home.dart';
import 'package:ecommerce_flutter/view/screens/home/widgets/title_home_widget.dart';
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
            CustomSearchField(
              onPressedIconBar: () {},
            ),
            SizedBox(
              height: 15,
            ),
            CustomCardHome(
                title: 'A summer offers', subTitle: 'A Discount offers'),

            TitleHomeWidgets(
              title: 'Categories',
            ),
            // list view data
            CategoriesListWidget(),

            SizedBox(
              height: 10,
            ),
            TitleHomeWidgets(title: ' Products With Discounts '),
            SizedBox(
              height: 5,
            ),
            ItemsHome(),
          ]),
        );
      }),
    );
  }
}
