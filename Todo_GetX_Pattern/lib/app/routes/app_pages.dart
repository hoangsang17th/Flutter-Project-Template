import 'package:get/get.dart';

import '../modules/dashboard/bindings/home.binding.dart';
import '../modules/dashboard/bindings/welcome.binding.dart';
import '../modules/dashboard/views/home.view.dart';
import '../modules/dashboard/views/welcome.view.dart';

part 'app_routes.dart';

class AppPages {
  static const initial = Routes.WELCOME;

  static final routes = [
    GetPage(
      name: Routes.WELCOME,
      page: () => const WelcomeView(),
      bindings: [WelcomeBinding()],
    ),
    GetPage(
      name: Routes.HOME,
      page: () => const HomeView(),
      bindings: [HomeBinding()],
    ),
  ];
}
