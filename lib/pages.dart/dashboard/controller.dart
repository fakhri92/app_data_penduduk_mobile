import 'package:get/get.dart';

class DashboardController extends GetxController {
  var currentIndexPage = 0.obs;

  void changeIndexPage(int index) {
    currentIndexPage.value = index;
  }
}
