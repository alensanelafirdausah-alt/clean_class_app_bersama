import 'package:clean_class_app_bersama/services/naila_detail_jadwal_piket.dart';
import 'package:flutter/material.dart';

class NailaDetailJadwalPiket extends StatefulWidget {
  const NailaDetailJadwalPiket({super.key});

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
        title: Text("Detail Jadwal Piket"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        width: size.width,
        height: size.height,
        child: ListView.builder(
          itemCount: nai.length,
          itemBuilder: (context, i) {
            return Card(
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NailaDetailJadwalPiket(),
                    ),
                  );
                },
                leading: Text(nai[i].day),
                title: Text(nai[i].task),
                subtitle: Text(nai[i].date_time),
              ),
            );
          },
        ),
      ),
    );
  }
}
