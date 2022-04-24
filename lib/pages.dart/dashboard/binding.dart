import 'package:app_20552011166/pages.dart/registrasi/controller.dart';
import 'package:get/get.dart';
import 'controller.dart';

class DashboardBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(
      () => DashboardController(),
    );
    Get.lazyPut<RegistrasiController>(
      () => RegistrasiController(),
    );
  }
}
