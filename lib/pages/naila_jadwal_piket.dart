import 'package:clean_class_app_bersama/pages/naila_detail_jadwal_piket.dart';
import 'package:clean_class_app_bersama/services/naila_jadwal_kelas.dart';
import 'package:flutter/material.dart';

class NailaJadwalPiket extends StatefulWidget {
  const NailaJadwalPiket({super.key});

  @override
  State<NailaJadwalPiket> createState() => _NailaJadwalPiketState();
}

class _NailaJadwalPiketState extends State<NailaJadwalPiket> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Jadwal Piket",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),

      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.all(20),
        width: size.width,
        height: size.height,
        child: ListView.builder(
          itemCount: naila.length,
          itemBuilder: (context, i) {
            return Card(
              color: Colors.orangeAccent.shade100,
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NailaDetailJadwalPiket(),
                    ),
                  );
                },
                leading: Image.asset(naila[i].image),
                title: Text(naila[i].hari),
                subtitle: Text(naila[i].name),
              ),
            );
          },
        ),
      ),
    );
  }
}
