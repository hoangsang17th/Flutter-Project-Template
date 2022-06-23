import 'package:get/get.dart';

import '../controllers/welcome.controller.dart';

class WelcomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(WelcomeController());
  }
}
