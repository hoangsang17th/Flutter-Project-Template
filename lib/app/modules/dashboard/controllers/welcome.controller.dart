import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class WelcomeController extends GetxController {
  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 3), () async {
      Get.offAndToNamed(Routes.HOME);
    });
    super.onInit();
  }
}
