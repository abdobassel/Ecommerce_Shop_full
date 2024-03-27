import 'package:ecommerce_flutter/core/class/app_color.dart';
import 'package:ecommerce_flutter/core/constant/asset_images/asset_images.dart';
import 'package:ecommerce_flutter/data/models/items_model/items_model.dart';
import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.itemsModel});
  final ItemsModel itemsModel;
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
          Text(itemsModel.nameEn ?? "No Title"),
        ],
      ),
    );
  }
}
