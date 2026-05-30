import 'package:flutter/material.dart';

import '../services/naila_detail_jadwal_piket.dart';

class NailaDetailJadwalPiket extends StatefulWidget {
  final int id;
  const NailaDetailJadwalPiket({super.key, required this.id});

  @override
  State<NailaDetailJadwalPiket> createState() => _NailaDetailJadwalPiketState();
}

class _NailaDetailJadwalPiketState extends State<NailaDetailJadwalPiket> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Detail Jadwal Piket",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Day",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(naila[widget.id].day),
            SizedBox(height: 10),
            Text(
              "Task",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(naila[widget.id].task),
            SizedBox(height: 10),
            Text(
              "Date Time",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(naila[widget.id].date_time),
            SizedBox(height: 10),
            Text(
              "Anggota",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(naila[widget.id].anggota),
            SizedBox(height: 10),
            Text(
              "gambar",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Image.asset(naila[widget.id].image),
          ],
        ),
      ),
    );
  }
}
