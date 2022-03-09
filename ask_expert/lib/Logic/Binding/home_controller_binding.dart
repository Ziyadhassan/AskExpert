import 'package:ask_expert/Logic/Controllers/home_controller.dart';
import 'package:get/get.dart';

class HomeControllerBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}
