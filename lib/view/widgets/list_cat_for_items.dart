import 'package:ecommerce_flutter/controller/home_controller.dart';
import 'package:ecommerce_flutter/controller/items_controller.dart';

import 'package:ecommerce_flutter/data/models/categoriesmodel/datum.dart';
import 'package:ecommerce_flutter/view/screens/home/widgets/category_item.dart';
import 'package:ecommerce_flutter/view/widgets/category_item_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListCatForItems extends GetView<ItemsControllerImpl> {
  const ListCatForItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 20),
      child: SizedBox(
        height: 60,
        child: ListView.separated(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(
                width: 5,
              );
            },
            itemCount: controller.categories.length,
            itemBuilder: (context, index) {
              return CategoryItmes(
                  selectedCat: index,
                  categoriesModel:
                      CategoriesModel.fromJson(controller.categories[index]));
            }),
      ),
    );
  }
}
