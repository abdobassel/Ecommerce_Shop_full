import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alert_exit() {
  Get.defaultDialog(
    middleText: 'do u want to exit ?',
    title: 'Alert',
    actions: [
      ElevatedButton(
          onPressed: () {
            exit(0);
          },
          child: Text('Confirm')),
      ElevatedButton(
          onPressed: () {
            Get.back();
          },
          child: Text('Cancel'))
    ],
  );

  return Future.value(true);
}
