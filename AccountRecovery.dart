import 'package:flutter/material.dart';

import 'Homepage.dart';

class RecoverAccount extends StatefulWidget {
  const RecoverAccount({super.key});

  @override
  State<RecoverAccount> createState() => _RecoverAccountState();
}

class _RecoverAccountState extends State<RecoverAccount> {
  String buttonName='Submit';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Account Recovery'),
      ),
      body:Container(
        child:ElevatedButton.icon(
          onPressed: () {
            setState(() {
              buttonName = "Submit";
            });
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
              return HomePage();
            },
            ),);
          },
          style: ElevatedButton.styleFrom(
            //minimumSize: Size(100,80),
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              textStyle: TextStyle(fontSize: 20)),
          icon: Icon(
              Icons.mail
          ),
          label: Text(buttonName),

        ),
      ),
    );
  }
}
