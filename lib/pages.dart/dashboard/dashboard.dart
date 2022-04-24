import 'package:app_20552011166/pages.dart/dashboard/controller.dart';
import 'package:app_20552011166/pages.dart/list_penduduk/list_penduduk.dart';
import 'package:app_20552011166/pages.dart/registrasi/registrasi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardPage extends GetView<DashboardController> {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: SafeArea(
          child: IndexedStack(
            index: controller.currentIndexPage.value,
            children: [
              RegistrasiPage(),
              ListPendudukPage(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 10,
          showUnselectedLabels: false,
          onTap: controller.changeIndexPage,
          currentIndex: controller.currentIndexPage.value,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.person_add),
              label: 'Registrasi',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.group),
              label: 'Daftar Penduduk',
            ),
          ],
        ),
      ),
    );
  }
}
