
import 'package:get/get.dart';

import 'app/modules/home/controller/home_controller.dart';

class AppBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(HomeController());

  }

}