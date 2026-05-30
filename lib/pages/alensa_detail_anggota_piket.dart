import 'package:clean_class_app_bersama/service/alensa_anggota_piket_service.dart'
    show aln;
import 'package:flutter/material.dart';

class AlensaDetailAnggotaPiket extends StatefulWidget {
  final int id;
  const AlensaDetailAnggotaPiket({super.key, required this.id});

  @override
  State<AlensaDetailAnggotaPiket> createState() =>
      _AlensaDetailAnggotaPiketState();
}

class _AlensaDetailAnggotaPiketState extends State<AlensaDetailAnggotaPiket> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Detail anggota piket"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "hari",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(aln[widget.id].day),
            SizedBox(height: 10),
            Text(
              "anggota",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(aln[widget.id].anggota),
            SizedBox(height: 10),
            Text(
              "gambar",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Image.network(aln[widget.id].Image),
          ],
        ),
      ),
    );
  }
}
