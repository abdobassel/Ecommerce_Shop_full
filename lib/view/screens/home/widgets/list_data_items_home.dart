import 'package:ecommerce_flutter/controller/home_controller.dart';

import 'package:ecommerce_flutter/data/models/items_model/items_model.dart';
import 'package:ecommerce_flutter/view/screens/home/widgets/item_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemsHome extends GetView<HomeControllerImpl> {
  const ItemsHome({super.key});

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
            itemCount: controller.items.length,
            itemBuilder: (context, index) {
              return Item(
                itemsModel: ItemsModel.fromJson(controller.items[index]),
              );
            }),
      ),
    );
  }
}
