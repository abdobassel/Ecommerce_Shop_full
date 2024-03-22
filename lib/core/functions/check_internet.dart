import 'dart:io';

import 'package:get/get.dart';

checkInternet() async {
  try {
    List result = await InternetAddress.lookup('google.com');
    if (result.isNotEmpty) {
      print(true);
      return true;
    }
  } on SocketException catch (_) {
    return false;
  }
}
