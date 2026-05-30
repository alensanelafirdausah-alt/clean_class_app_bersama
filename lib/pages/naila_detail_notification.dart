import 'package:clean_class_app_bersama/services/naila_notification_service.dart';
import 'package:flutter/material.dart';

class NailaNotificationDetail extends StatefulWidget {
  final int id;
  const NailaNotificationDetail({super.key, required this.id});

  @override
  State<NailaNotificationDetail> createState() =>
      _NailaNotificationDetailState();
}

class _NailaNotificationDetailState extends State<NailaNotificationDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Detail Notification",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(naii[widget.id].title),
            SizedBox(height: 10),
            Text(naii[widget.id].description),
            SizedBox(height: 10),
            Image.asset(naii[widget.id].image),
            SizedBox(height: 10),
            Text(naii[widget.id].date_time),
          ],
        ),
      ),
    );
  }
}
