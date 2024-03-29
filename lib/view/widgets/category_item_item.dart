import 'package:ecommerce_flutter/controller/home_controller.dart';
import 'package:ecommerce_flutter/controller/items_controller.dart';
import 'package:ecommerce_flutter/core/class/app_color.dart';
import 'package:ecommerce_flutter/core/constant/asset_images/asset_images.dart';
import 'package:ecommerce_flutter/data/models/categoriesmodel/datum.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryItmes extends GetView<ItemsControllerImpl> {
  const CategoryItmes(
      {super.key, required this.selectedCat, required this.categoriesModel});
  final CategoriesModel categoriesModel;
  final int selectedCat;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.changeCat(
            selectedCat, categoriesModel.id); // change active color cat
      },
      child: GetBuilder<ItemsControllerImpl>(builder: (context) {
        return Container(
          height: 35,
          width: 100,
          decoration: controller.selectCategory == selectedCat
              ? BoxDecoration(
                  borderRadius: BorderRadiusDirectional.only(
                      bottomEnd: Radius.circular(10),
                      bottomStart: Radius.circular(10)),
                  color: AppColor.primary,
                )
              : BoxDecoration(
                  borderRadius: BorderRadiusDirectional.only(
                      bottomEnd: Radius.circular(8),
                      bottomStart: Radius.circular(8)),
                  color: AppColor.gry,
                ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                categoriesModel.nameAr ?? "No Title",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
            ],
          ),
        );
      }),
    );
  }
}
