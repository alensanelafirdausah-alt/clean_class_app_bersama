import 'package:clean_class_app_bersama/pages/naila_detail_notification.dart';
import 'package:clean_class_app_bersama/services/naila_notification_service.dart';
import 'package:flutter/material.dart';

class NailaNotification extends StatefulWidget {
  const NailaNotification({super.key});

  @override
  State<NailaNotification> createState() => _NailaNotificationState();
}

class _NailaNotificationState extends State<NailaNotification> {
  @override
  bool _apakahDipilih = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notification",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: naii.length,
        itemBuilder: (context, index) {
          return Card(
            child: SwitchListTile(
              title: Text(naii[index].title),
              subtitle: Text(
                naii[index].date_time,
                style: TextStyle(fontSize: 10),
              ),
              selected: naii[index].isRead,
              selectedTileColor: Colors.blueGrey.shade50,
              value: naii[index].isRead,
              onChanged: (value) {
                setState(() {
                  naii[index].isRead = true;
                });
                naii.sort(
                  (a, b) => a.isRead.toString().compareTo(b.isRead.toString()),
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        NailaNotificationDetail(id: naii[index].id),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
