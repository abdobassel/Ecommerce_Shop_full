import 'package:ecommerce_flutter/core/class/app_color.dart';
import 'package:flutter/material.dart';

class CustomBtmAppBar extends StatelessWidget {
  CustomBtmAppBar({
    super.key,
    required this.onpressed,
    required this.title,
    required this.iconData,
    this.active,
  });

  final void Function()? onpressed;
  final String title;
  bool? active;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onpressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            iconData,
            color: active == true ? AppColor.primary : Colors.black,
          ),
          Text(
            title,
            style: TextStyle(
                color: active == true ? AppColor.primary : Colors.black),
          ),
        ],
      ),
    );
  }
}
