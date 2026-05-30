import 'package:clean_class_app_bersama/pages/naila_menu_utama.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CleanClasApp());
}

class CleanClasApp extends StatefulWidget {
  const CleanClasApp({super.key});

  @override
  State<CleanClasApp> createState() => _CleanClasAppState();
}

class _CleanClasAppState extends State<CleanClasApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NailaMenuUtama(),
    );
  }
}
