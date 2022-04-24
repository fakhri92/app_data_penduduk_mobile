import 'package:app_20552011166/pages.dart/registrasi/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrasiPage extends GetView<RegistrasiController> {
  const RegistrasiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Halaman Registrasi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Text(
              'Silahkan Masukkan Informasi Penduduk',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25,
            ),
            CustomTextField(
              keyboardType: TextInputType.number,
              maxLength: 16,
              label: 'NIK',
              hintTex: 'NIK',
              controller: controller.nik,
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextField(
              maxLength: 100,
              keyboardType: TextInputType.name,
              label: 'Nama Lengkap',
              hintTex: 'Nama Lengkap',
              controller: controller.namaLengkap,
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextField(
              maxLength: 50,
              keyboardType: TextInputType.name,
              label: 'Tempat Lahir',
              hintTex: 'Tempat Lahir',
              controller: controller.tempatLahir,
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextField(
              keyboardType: TextInputType.datetime,
              label: 'Tanggal Lahir',
              hintTex: 'Tanggal Lahir [dd-mm-yyyy]',
              controller: controller.tanggalLahir,
            ),
            SizedBox(
              height: 30,
            ),
            CustomTextField(
              maxLength: 300,
              keyboardType: TextInputType.name,
              label: 'Alamat',
              hintTex: 'Alamat',
              controller: controller.alamat,
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Jenis Kelamin : ',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                Obx(
                  () => Expanded(
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                      ),
                      value: controller.jenisKelamin.value,
                      items: <String>['Laki-laki', 'Perempuan']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(color: Colors.white),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? value) {
                        controller.changeJenisKelamin(value ?? '');
                      },
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                    child: Text(
                  'Pekerjaan : ',
                  style: TextStyle(fontSize: 17),
                )),
                Obx(
                  () => Expanded(
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                      ),
                      value: controller.pekerjaan.value,
                      items: <String>[
                        'Pegawai Negeri Sipil',
                        'Pegawai Swasta',
                        'Pelajar',
                        'Wiraswasta'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(color: Colors.white),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? value) {
                        controller.changePekerjaan(value ?? '');
                      },
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Status Pernikahan : ',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                Obx(
                  () => Expanded(
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                      ),
                      value: controller.statusPernikahan.value,
                      items: <String>['Belum Kawin', 'Kawin']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(color: Colors.white),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? value) {
                        controller.changeStatusPernikahan(value ?? '');
                      },
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.purple),
              onPressed: controller.handleSubmit,
              child: Text('SUBMIT'),
            ),
            Obx(() => Center(child: Text(controller.registerStatus.value)))
          ],
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      required this.label,
      required this.hintTex,
      required this.controller,
      required this.keyboardType,
      this.maxLength})
      : super(key: key);

  final String label;
  final String hintTex;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final int? maxLength;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLength: maxLength ?? null,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        label: Text(label),
        labelStyle: TextStyle(color: Colors.white),
        hintText: hintTex,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: Colors.purple),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: Colors.purpleAccent),
        ),
      ),
      controller: controller,
    );
  }
}
