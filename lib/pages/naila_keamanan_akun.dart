import 'package:clean_class_app_bersama/services/naila_keamanan_akun_service.dart';
import 'package:flutter/material.dart';

class NailaKeamananAkun extends StatefulWidget {
  const NailaKeamananAkun({super.key});

  @override
  State<NailaKeamananAkun> createState() => _NailaKeamananAkunState();
}

class _NailaKeamananAkunState extends State<NailaKeamananAkun> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Keamanan Akun",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: SizedBox(
          width: 3000,
          height: 500,
          child: ListView.builder(
            itemCount: arga.length,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(arga[index].image),
                  SizedBox(height: 10),
                  Text(
                    "AMANKAN AKUN ANDA!!!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Lindungi akun Anda dari akses tidak sah',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Pastikan akun Anda tetap aman',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Aktifkan keamanan akun untuk perlindungan ekstra',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Keamanan akun adalah prioritas utama',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 20),
                  SwitchListTile(
                    subtitle: Text(
                      arga[index].title,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    selected: arga[index].isRead,
                    selectedTileColor: Colors.blueGrey.shade50,
                    value: arga[index].isRead,
                    onChanged: (value) {
                      setState(() {
                        arga[index].isRead = !arga[index].isRead;
                      });
                      arga.sort(
                        (a, b) =>
                            a.isRead.toString().compareTo(b.isRead.toString()),
                      );
                    },
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
