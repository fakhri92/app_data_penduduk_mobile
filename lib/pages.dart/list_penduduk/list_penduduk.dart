import 'package:app_20552011166/models/penduduk.dart';
import 'package:flutter/material.dart';

class ListPendudukPage extends StatelessWidget {
  const ListPendudukPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1F1F1F),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Daftar Penduduk'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: dataPenduduk.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(bottom: 20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xff424242),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.account_circle,
                    size: 47,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'NIK',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Nama',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Tempat Lahir',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Tanggal Lahir',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Alamat',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Jenis Kelamin',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Pekerjaan',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Status Perkawinan',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ': ${dataPenduduk[index].nik}',
                          style: TextStyle(color: Colors.white),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          ': ${dataPenduduk[index].nama}',
                          style: TextStyle(color: Colors.white),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          ': ${dataPenduduk[index].tempatLahir}',
                          style: TextStyle(color: Colors.white),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          ': ${dataPenduduk[index].tanggalLahir}',
                          style: TextStyle(color: Colors.white),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          ': ${dataPenduduk[index].alamat}',
                          style: TextStyle(color: Colors.white),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          ': ${dataPenduduk[index].jenisKelamin}',
                          style: TextStyle(color: Colors.white),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          ': ${dataPenduduk[index].pekerjaan}',
                          style: TextStyle(color: Colors.white),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          ': ${dataPenduduk[index].statusPerkawinan}',
                          style: TextStyle(color: Colors.white),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
