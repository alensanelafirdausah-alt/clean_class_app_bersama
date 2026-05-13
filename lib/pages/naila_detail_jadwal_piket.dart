import 'package:flutter/material.dart';

class NailaDetailJadwalPiket extends StatefulWidget {
  const NailaDetailJadwalPiket({super.key});

  @override
  State<NailaDetailJadwalPiket> createState() => _NailaDetailJadwalPiketState();
}

class _NailaDetailJadwalPiketState extends State<NailaDetailJadwalPiket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.blue,
        title: Text("Detail Jadwal Piket"),
      ),
    );
  }
}
