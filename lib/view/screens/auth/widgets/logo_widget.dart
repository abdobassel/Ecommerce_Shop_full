import 'package:ecommerce_flutter/core/constant/asset_images/asset_images.dart';
import 'package:flutter/material.dart';

class LogoAuth extends StatelessWidget {
  const LogoAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AssetImages.cart,
      height: 100,
      width: 200,
      fit: BoxFit.fill,
    );
  }
}
