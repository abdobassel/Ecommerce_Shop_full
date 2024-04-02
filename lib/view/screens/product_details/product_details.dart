import 'package:ecommerce_flutter/components/components.dart';
import 'package:ecommerce_flutter/controller/product_detail_controller.dart';
import 'package:ecommerce_flutter/core/class/app_color.dart';
import 'package:ecommerce_flutter/core/constant/asset_images/asset_images.dart';
import 'package:ecommerce_flutter/view/screens/home/widgets/title_home_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ProductDetailControllerImpl controller =
        Get.put(ProductDetailControllerImpl());
    return Scaffold(
      bottomNavigationBar: Container(
          padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
          child: DefaultButton(
              text: "Add Cart",
              function: () {},
              width: double.infinity,
              background: AppColor.primary)),
      body: SafeArea(
        child: GetBuilder<ProductDetailControllerImpl>(builder: (context) {
          return ListView(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      alignment: Alignment.topCenter,
                      child: Text(
                        '${controller.itemsModel.nameEn}',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[200]),
                        textAlign: TextAlign.center,
                      ),
                      padding: EdgeInsets.only(
                          top: 20, right: 0, left: 0, bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: AppColor.primary,
                      ),
                      height: 240,
                      width: double.infinity,
                    ),
                    Positioned(
                        top: 130,
                        right: 80,
                        left: 60,
                        child: Hero(
                          tag: controller.itemsModel.id!,
                          child: Image.asset(
                            AssetImages.mobile,
                            height: 150,
                            width: 240,
                            fit: BoxFit.fill,
                          ),
                        )),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  maxLines: 3,
                  textAlign: TextAlign.start,
                  controller.itemsModel.descEn!,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColor.primary, width: 1)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.cached)),
                          Container(
                            child: Text('5'),
                            width: 15,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: AppColor.gry, width: 2),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.cached)),
                        ],
                      ),
                      Text(controller.itemsModel.price!.toString()),
                    ],
                  ),
                ),
                TitleHomeWidgets(
                  title: 'Color',
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    ...List.generate(3, (index) {
                      return InkWell(
                        child: Container(
                            alignment: Alignment.center,
                            child: Text("Red"),
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 4,
                                color: AppColor.gry,
                              ),
                              borderRadius: BorderRadiusDirectional.only(
                                  bottomEnd: Radius.circular(10),
                                  bottomStart: Radius.circular(10)),
                              color: AppColor.primary,
                            )),
                      );
                    })
                  ],
                )
              ]);
        }),
      ),
    );
  }
}
