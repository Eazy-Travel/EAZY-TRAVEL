import 'package:flutter/material.dart';
import '../../Widgets/SquareBox.dart';

class MyAccountPage extends StatelessWidget {
  const MyAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue[900],
        title: Text("My Account",
        // style: Theme.of(context).textTheme.headlineMedium),
              ),
        actions: [
          IconButton(onPressed: () {  }, icon:const Icon(Icons.share)),
          IconButton(onPressed: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyAccountPage()));},
              icon:const Icon(Icons.settings)),
        ],
    ),
    body: SingleChildScrollView(
        child: Column(
          children: [
            SquareBox(
              icon:Icon(Icons.upload),
              btnName: 'Update profile',
              BGcolor: Colors.white,
              textstyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 18),
            ),
            SizedBox(height:10),
            SquareBox(
              icon:Icon(Icons.account_box),
              btnName: 'ID verification',
              BGcolor: Colors.white,
              textstyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
              ),
            ),
            SizedBox(height:10),
            SquareBox(
              icon:Icon(Icons.account_circle_rounded),
              btnName: 'Rate us on PlayStore',
              BGcolor: Colors.white,
              textstyle: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
              ),
            ),
            SizedBox(height:10),
            SquareBox(
              icon:Icon(Icons.help),
              btnName: 'Help',
              BGcolor: Colors.white,
              textstyle: TextStyle(
                  color: Colors.black54,
                  fontSize: 18),
            ),
            SizedBox(height:10),

          ],
        ),
    ),
    );
  }
}
