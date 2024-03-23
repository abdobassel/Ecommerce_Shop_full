import 'dart:io';

import 'package:get/get.dart';

checkInternet() async {
  try {
    var result = await InternetAddress.lookup('google.com');
    if (result.isNotEmpty) {
      print('Sucesinternet');
      return true;
    }
  } on SocketException catch (e) {
    print('no internet $e');
    return false;
  }
}
