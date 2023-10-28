
import 'package:flutter/material.dart';
import '../../Widgets/SquareBox.dart';

class MySettingsPage extends StatelessWidget {
  const MySettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue[900],
        title: Text("Settings",
        ),
         leading: IconButton(onPressed: () {  }, icon:const Icon(Icons.arrow_back)),
        actions: [
          IconButton(onPressed: () {  }, icon:const Icon(Icons.help)),

        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            ListTile(
             // action: Icon(Icons.angle)
              leading: Icon(Icons.account_circle),
              title: Text("AYESIGA STEVEN",
                  style: TextStyle(color: Colors.black)),
              subtitle: Text("0706435972",
                  style: TextStyle(color: Colors.black)),
            ),
            ListTile(
              leading: Icon(Icons.remember_me),
              title: Text("Reminders",
                  style: TextStyle(color: Colors.black)),

            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("Help Center",
                  style: TextStyle(color: Colors.black)),

            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text("Contact Us",
              style: TextStyle(color: Colors.black)),

            ),
            ListTile(
              leading: Icon(Icons.receipt),
              title: Text("Terms and Privacy Policy",
                  style: TextStyle(color: Colors.black)),

            ),
            ListTile(
              leading: Icon(Icons.details),
              title: Text("App Info",
              style: TextStyle(color: Colors.black)),

            ),
            ListTile(
              leading: Icon(Icons.account_circle_rounded),
              title: Text("Log Out",
                  style: TextStyle(color: Colors.black)),
            )
          ],
        ),

      ),
    );
  }
}