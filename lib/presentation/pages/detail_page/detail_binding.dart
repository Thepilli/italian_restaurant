import 'package:get/get.dart';
import 'package:restaurant_delivery/presentation/pages/detail_page/detail_controller.dart';

class DetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailController());
  }
}
