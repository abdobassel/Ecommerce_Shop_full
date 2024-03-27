import 'package:ecommerce_flutter/components/components.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchField extends StatelessWidget {
  CustomSearchField(
      {super.key,
      this.onPressedIconBar,
      this.controller,
      this.onchange,
      this.onsubmit});
  final void Function()? onPressedIconBar;
  TextEditingController? controller;
  String? Function(String?)? onsubmit;
  String? Function(String?)? onchange;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 10),
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: 60,
      width: double.infinity,
      color: Colors.grey[200],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: DefaultTextForm(
              onSubmit: onsubmit,
              onchange: onchange,
              controller: controller,
              labeltext: 'Search',
              type: TextInputType.text,
              suffixIcon: Icons.search_rounded,
              //
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            color: Colors.grey[150],
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: IconButton(
                onPressed: onPressedIconBar,
                icon: Icon(
                  Icons.notifications_on_outlined,
                  size: 36,
                )),
          ),
        ],
      ),
    );
  }
}
