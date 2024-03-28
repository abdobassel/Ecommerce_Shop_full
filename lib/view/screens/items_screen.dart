import 'package:ecommerce_flutter/controller/items_controller.dart';
import 'package:ecommerce_flutter/view/widgets/custom_text_field_search.dart';
import 'package:ecommerce_flutter/view/widgets/list_cat_for_items.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemsScreen extends StatelessWidget {
  const ItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ItemsControllerImpl controller = Get.put(ItemsControllerImpl());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(children: [
          CustomSearchField(
            onPressedIconBar: () {},
            onsubmit: (String? value) {},
          ),
          ListCatForItems(),
        ]),
      ),
    );
  }
}
