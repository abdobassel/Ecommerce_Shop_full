import 'package:ecommerce_flutter/core/class/app_color.dart';
import 'package:flutter/material.dart';

class SeparatedWidgetDeviderAndText extends StatelessWidget {
  const SeparatedWidgetDeviderAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(height: 1, color: AppColor.gry),
        ),
        const Padding(
          padding: EdgeInsets.only(right: 5, left: 5),
          child: Text(
            'or',
            style: TextStyle(fontSize: 15, color: AppColor.primary),
          ),
        ),
        Expanded(
          child: Container(
            height: 1,
            color: AppColor.primary,
          ),
        )
      ],
    );
  }
}
