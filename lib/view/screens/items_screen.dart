import 'package:ecommerce_flutter/controller/fav_controller.dart';
import 'package:ecommerce_flutter/core/class/app_color.dart';
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
  ItemsScreen({Key? key});
  bool active = false;

  @override
  Widget build(BuildContext context) {
    Get.put(ItemsControllerImpl());
    FavController controllerFav = Get.put(FavController());
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
                return controller.itemsmodel.isEmpty
                    ? Center(
                        child: Lottie.asset(AssetImages.oops),
                      )
                    : Padding(
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
                                  controllerFav.isFav[item.id] = item.fav;
                                  return InkWell(
                                    onTap: () {
                                      controller.goToProductDetails(item);
                                    },
                                    child: Card(
                                      color: Colors.green[100],
                                      child: Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Hero(
                                              tag: item.id!,
                                              child: Image.asset(
                                                AssetImages.mobile,
                                                height: 80,
                                                fit: BoxFit.fill,
                                              ),
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
                                                  color: Colors.black,
                                                  fontSize: 16),
                                            ),
                                            Expanded(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                      item.price ?? 'No price'),
                                                  Spacer(),
                                                  GetBuilder<FavController>(
                                                      builder:
                                                          (controllerfavorite) {
                                                    return IconButton(
                                                      onPressed: () {
                                                        if (controllerfavorite
                                                                    .isFav[
                                                                item.id] ==
                                                            '1') {
                                                          controllerfavorite
                                                              .setFav(
                                                                  item.id, '0');
                                                          controllerFav
                                                              .removeFav(
                                                                  item.id!);
                                                        } else {
                                                          controllerfavorite
                                                              .setFav(
                                                                  item.id, '1');
                                                          controllerFav
                                                              .addFav(item.id!);
                                                        }
                                                      },
                                                      icon: Icon(
                                                        controllerfavorite
                                                                        .isFav[
                                                                    item.id] ==
                                                                '1'
                                                            ? Icons.favorite
                                                            : Icons
                                                                .favorite_outline_outlined,
                                                        color: controllerfavorite
                                                                        .isFav[
                                                                    item.id] ==
                                                                '1'
                                                            ? Colors.red
                                                            : Colors.grey,
                                                      ),
                                                    );
                                                  }),
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
