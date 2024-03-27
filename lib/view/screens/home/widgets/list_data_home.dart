import 'package:ecommerce_flutter/controller/home_controller.dart';

import 'package:ecommerce_flutter/data/models/categoriesmodel/datum.dart';
import 'package:ecommerce_flutter/view/screens/home/widgets/category_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoriesListWidget extends GetView<HomeControllerImpl> {
  const CategoriesListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              return Category(
                categoriesModel:
                    CategoriesModel.fromJson(controller.categoriesData[index]),
              );
            }),
      ),
    );
  }
}
