import 'package:get/instance_manager.dart';
import 'package:weather_api_practice/controller/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(city: 'zagazig'));
  }
}
