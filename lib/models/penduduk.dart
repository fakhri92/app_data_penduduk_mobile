class Penduduk {
  String nik;
  String nama;
  String tempatLahir;
  String tanggalLahir;
  String alamat;
  String jenisKelamin;
  String pekerjaan;
  String statusPerkawinan;

  Penduduk({
    required this.nik,
    required this.nama,
    required this.tempatLahir,
    required this.tanggalLahir,
    required this.alamat,
    required this.jenisKelamin,
    required this.pekerjaan,
    required this.statusPerkawinan,
  });
}

List<Penduduk> dataPenduduk = [
  Penduduk(
    nik: '2341283920310234',
    nama: 'Refi',
    tempatLahir: 'Bandung',
    tanggalLahir: '08-08-1999',
    alamat: 'Jl. Bandung no 12',
    jenisKelamin: 'Laki-laki',
    pekerjaan: 'Pegawai Negeri Sipil',
    statusPerkawinan: 'Kawin',
  ),
];
