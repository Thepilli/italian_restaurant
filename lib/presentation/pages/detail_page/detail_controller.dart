import 'package:get/get.dart';

class DetailController extends GetxController {
//data from passing params
  var params = Get.arguments;
  var product;

  @override
  void onInit() {
    if (params != null) {
      product = params['data'];
    }
    super.onInit();
  }
}
