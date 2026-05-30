import 'package:clean_class_app_bersama/services/naila_tambah_jadwal.dart';
import 'package:flutter/material.dart';

class NailaDetailTambahPiket extends StatefulWidget {
  final int id;
  const NailaDetailTambahPiket({super.key, required this.id});

  @override
  State<NailaDetailTambahPiket> createState() => _NailaDetailTambahPiketState();
}

class _NailaDetailTambahPiketState extends State<NailaDetailTambahPiket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("detail tambah jadwal"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text("Name", style: TextStyle(fontWeight: FontWeight.bold)),
            Text(ni[widget.id].name),
            SizedBox(height: 10),
            Text("Hari", style: TextStyle(fontWeight: FontWeight.bold)),
            Text(ni[widget.id].hari),
            SizedBox(height: 10),
            Text("Gambar", style: TextStyle(fontWeight: FontWeight.bold)),
            Image.asset(width: 70, height: 70, ni[widget.id].image),
          ],
        ),
      ),
    );
  }
}
