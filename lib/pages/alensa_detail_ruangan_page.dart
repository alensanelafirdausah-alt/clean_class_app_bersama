import 'package:clean_class_app_bersama/service/alensa_ruangan_service.dart';
import 'package:flutter/material.dart';

class AlensaDetailRuanganPage extends StatefulWidget {
  final int id;
  const AlensaDetailRuanganPage({super.key, required this.id});

  @override
  State<AlensaDetailRuanganPage> createState() =>
      _AlensaDetailRuanganPageState();
}

class _AlensaDetailRuanganPageState extends State<AlensaDetailRuanganPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Detail ruangan"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Nama ruangan",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(alen[widget.id].namaRuangan),
            SizedBox(height: 10),
            Text(
              "kegiatan",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(alen[widget.id].kegiatann),
            SizedBox(height: 10),
            Text(
              "gambar",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Image.network(alen[widget.id].image),
          ],
        ),
      ),
    );
  }
}
