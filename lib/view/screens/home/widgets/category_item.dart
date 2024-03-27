import 'package:ecommerce_flutter/core/class/app_color.dart';
import 'package:ecommerce_flutter/core/constant/asset_images/asset_images.dart';
import 'package:ecommerce_flutter/data/models/categoriesmodel/datum.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({super.key, required this.categoriesModel});
  final CategoriesModel categoriesModel;
  @override
  Widget build(BuildContext context) {
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
          Text(categoriesModel.nameEn ?? "No Title"),
        ],
      ),
    );
  }
}
