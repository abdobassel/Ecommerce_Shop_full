import 'package:ecommerce_flutter/components/components.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchField extends StatelessWidget {
  CustomSearchField({super.key});
  var searchController = TextEditingController();
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
              onchange: (value) {},
              controller: searchController,
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
                onPressed: () {},
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
