import 'package:clean_class_app_bersama/models/naila_modeks_jadwal.dart';
import 'package:clean_class_app_bersama/pages/naila_detail_tambah_piket.dart';
import 'package:clean_class_app_bersama/services/naila_tambah_jadwal.dart';
import 'package:flutter/material.dart';

class NailaTambahJadwal extends StatefulWidget {
  const NailaTambahJadwal({super.key});

  @override
  State<NailaTambahJadwal> createState() => _NailaTambahJadwalState();
}

class _NailaTambahJadwalState extends State<NailaTambahJadwal> {
  final controler = TextEditingController();
  List<NailaModeksJadwal> neila = ni;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Tambah Jadwal",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Card(
            color: Colors.orange.shade50,
            child: TextField(
              controller: controler,
              decoration: InputDecoration(
                hintText: "Pilih hari",
                suffixIcon: Icon(Icons.search),
              ),
              onChanged: srch,
            ),
          ),
          Row(
            children: [
              Text(
                "Anggota Piket",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(20),
              itemCount: neila.length,
              itemBuilder: (context, v) {
                return ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            NailaDetailTambahPiket(id: ni[v].id),
                      ),
                    );
                  },
                  leading: Image.asset("assets/images/alensa.jpeg"),
                  title: Text(ni[v].hari),
                );
              },
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
            child: SizedBox(
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) =>
                        AlertDialog(title: Text("Jadwal tersimpan")),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange.shade50,
                ),
                child: Text(
                  'Simpan jadwal',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void srch(String query) {
    final suggestions = ni.where((search) {
      final bookTitle = search.hari.toLowerCase();
      final input = query.toLowerCase();
      return bookTitle.contains(input);
    }).toList();
    setState(() => neila = suggestions);
  }
}
