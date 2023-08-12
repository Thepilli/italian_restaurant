import 'package:get/get.dart';
import 'package:restaurant_delivery/presentation/pages/home_page/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
