import 'package:app_20552011166/models/penduduk.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrasiController extends GetxController {
  var nik = TextEditingController();
  var namaLengkap = TextEditingController();
  var tempatLahir = TextEditingController();
  var tanggalLahir = TextEditingController();
  var alamat = TextEditingController();
  var jenisKelamin = 'Laki-laki'.obs;
  var pekerjaan = 'Pegawai Negeri Sipil'.obs;
  var statusPernikahan = 'Belum Kawin'.obs;

  var registerStatus = ''.obs;

  void changeJenisKelamin(String value) => jenisKelamin.value = value;

  void changePekerjaan(String value) => pekerjaan.value = value;

  void changeStatusPernikahan(String value) => statusPernikahan.value = value;

  void handleSubmit() {
    if (nik.text.length != 16) {
      registerStatus.value = 'Data tidak valid, silahkan ulangi';
      return;
    }

    final userInput = Penduduk(
      nik: nik.text,
      nama: namaLengkap.text,
      tempatLahir: tempatLahir.text,
      tanggalLahir: tanggalLahir.text,
      alamat: alamat.text,
      jenisKelamin: jenisKelamin.value,
      pekerjaan: pekerjaan.value,
      statusPerkawinan: statusPernikahan.value,
    );

    dataPenduduk.add(userInput);
    resetInput();
    registerStatus.value = 'Registrasi Berhail';
  }

  void resetInput() {
    nik.clear();
    namaLengkap.clear();
    tempatLahir.clear();
    tanggalLahir.clear();
    alamat.clear();

    jenisKelamin.value = 'Laki-laki';
    pekerjaan.value = 'Pegawai Negeri Sipil';
    statusPernikahan.value = 'Belum Kawin';

    refresh();
  }
}
