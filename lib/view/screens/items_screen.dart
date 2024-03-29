import 'package:ecommerce_flutter/core/class/enum_statusrequest.dart';
import 'package:ecommerce_flutter/core/functions/translate_function.dart';
import 'package:flutter/material.dart';
import 'package:flutter_conditional_rendering/conditional.dart';
import 'package:get/get.dart';
import 'package:ecommerce_flutter/core/constant/asset_images/asset_images.dart';
import 'package:ecommerce_flutter/controller/items_controller.dart';
import 'package:ecommerce_flutter/view/widgets/custom_text_field_search.dart';
import 'package:ecommerce_flutter/view/widgets/list_cat_for_items.dart';
import 'package:lottie/lottie.dart';

class ItemsScreen extends StatelessWidget {
  const ItemsScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    Get.put(ItemsControllerImpl());
    return GetBuilder<ItemsControllerImpl>(
      builder: (controller) {
        return Scaffold(
          body: Conditional.single(
              context: context,
              conditionBuilder: (context) =>
                  controller.statusRequest != StatusRequest.loading,
              fallbackBuilder: (context) {
                return Center(child: Lottie.asset(AssetImages.loty));
              },
              widgetBuilder: (context) {
                return Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CustomSearchField(
                        onPressedIconBar: () {},
                        onsubmit: (String? value) {},
                      ),
                      const SizedBox(height: 10),
                      const ListCatForItems(),
                      Expanded(
                        child: GridView.builder(
                          itemCount: controller.itemsmodel.length,
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 10.0,
                            crossAxisSpacing: 10.0,
                            childAspectRatio: 0.8,
                          ),
                          itemBuilder: (context, index) {
                            final item = controller.itemsmodel[index];
                            return InkWell(
                              onTap: () {},
                              child: Card(
                                color: Colors.green[100],
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        AssetImages.labtop,
                                        height: 80,
                                        fit: BoxFit.fill,
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        translateDynamicWords(
                                            ar: item.nameAr ?? 'No name',
                                            en: item.nameEn ?? 'No name'),
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        item.descEn ?? 'No desc',
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 16),
                                      ),
                                      Expanded(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(item.price ?? 'No price'),
                                            Spacer(),
                                            IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.favorite,
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                );
              }),
        );
      },
    );
  }
}
