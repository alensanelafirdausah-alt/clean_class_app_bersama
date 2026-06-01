import 'package:clean_class_app_bersama/pages/alensa_profile_page.dart';
import 'package:clean_class_app_bersama/pages/auth/alensa_login.dart';
import 'package:clean_class_app_bersama/pages/naila_keamanan_akun.dart';
import 'package:clean_class_app_bersama/pages/naila_notication.dart';
import 'package:flutter/material.dart';

class AlensaSettingPage extends StatefulWidget {
  const AlensaSettingPage({super.key});

  @override
  State<AlensaSettingPage> createState() => _AlensaSettingPageState();
}

class _AlensaSettingPageState extends State<AlensaSettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Setting",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                ListTile(
                  leading: IconButton(
                    icon: Icon(Icons.person_outline, size: 35),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AlensaProfilePage(),
                        ),
                      );
                    },
                  ),
                  title: Text(
                    'profile saya',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  subtitle: Text('Kelola informasi'),
                ),

                ListTile(
                  leading: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NailaKeamananAkun(),
                        ),
                      );
                    },
                    icon: Icon(Icons.lock_outline),
                  ),
                  title: Text(
                    'keamanan akun',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  subtitle: Text('ubah password'),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                ListTile(
                  leading: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NailaNotification(),
                        ),
                      );
                    },
                    icon: Icon(Icons.notifications),
                  ),
                  title: Text(
                    'notif',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  subtitle: Text('atur notifikasi'),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AlensaLogin(),
                            ),
                          );
                        },
                        icon: Icon(Icons.logout, size: 35),
                      ),
                      title: Text(
                        'Keluar',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      subtitle: Text('keluar dari akun saat ini'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
