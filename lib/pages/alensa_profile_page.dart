import 'package:flutter/material.dart';

class AlensaProfilePage extends StatefulWidget {
  const AlensaProfilePage({super.key});

  @override
  State<AlensaProfilePage> createState() => _AlensaProfilePageState();
}

class _AlensaProfilePageState extends State<AlensaProfilePage> {
  String name = "Alensa Ayu";
  String bio = "Add bio";
  String email = "alensa@gmail.com";

  TextEditingController yourName = TextEditingController();
  TextEditingController yourBio = TextEditingController();

  void editProfile() {
    yourName.text = name;
    yourBio.text = bio;
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Edit Profile"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: yourName,
                decoration: InputDecoration(labelText: "Name"),
              ),
              SizedBox(height: 10),
              TextField(
                controller: yourBio,
                decoration: InputDecoration(labelText: "Bio"),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("batal"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  name = yourName.text;
                  bio = yourBio.text;
                });
                Navigator.pop(context);
              },
              child: Text("simpan"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('profile'),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AlensaProfilePage()),
              );
            },
            icon: Icon(Icons.notifications),
          ),
        ],
      ),
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          SizedBox(height: 20),
          ClipOval(
            child: Image.network(
              'assets/images/alensa.jpeg',
              width: 120,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: ListTile(
              onTap: editProfile,
              tileColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              leading: Icon(Icons.person),
              title: Text(
                'name',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(name),
              trailing: Icon(Icons.edit),
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: ListTile(
              onTap: editProfile,
              tileColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              leading: Icon(Icons.link),
              title: Text('bio', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(bio),
              trailing: Icon(Icons.edit),
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: ListTile(
              tileColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              leading: Icon(Icons.email),
              title: Text(
                'email',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(email),
            ),
          ),
        ],
      ),
    );
  }
}
