import 'package:ecommerce_flutter/core/class/enum_statusrequest.dart';

handle(response) {
  if (response is StatusRequest) {
    return response;
  } else {
    return StatusRequest.success;
  }
}
