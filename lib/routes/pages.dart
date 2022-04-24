import 'package:app_20552011166/pages.dart/dashboard/binding.dart';
import 'package:app_20552011166/pages.dart/dashboard/dashboard.dart';
import 'package:app_20552011166/pages.dart/list_penduduk/list_penduduk.dart';
import 'package:app_20552011166/pages.dart/registrasi/registrasi.dart';
import 'package:get/get.dart';
part './routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.DASHBOARD,
      page: () => DashboardPage(),
      binding: DashboardBinding(),
      children: [
        GetPage(
          name: Routes.REGISTRASI,
          page: () => RegistrasiPage(),
        ),
        GetPage(
          name: Routes.LIST_PENDUDUK,
          page: () => ListPendudukPage(),
        ),
      ],
    )
  ];
}
