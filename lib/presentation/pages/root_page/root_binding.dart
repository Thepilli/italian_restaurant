import 'package:get/get.dart';
import 'package:restaurant_delivery/presentation/pages/root_page/root_controller.dart';

class RootBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RootController());
  }
}
