import "package:flutter/material.dart";
import "package:project_1/Pages/ClientOrUserPage.dart";
import '../Widgets/CustomButton.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.maxFinite,
      height: double.maxFinite,
      child: Stack(children: <Widget>[
        Positioned(
            child: Container(
                width: double.maxFinite,
                height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/bus.webp"),
                        fit: BoxFit.cover)))),
        Positioned(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          top: 230,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(37),
                topRight: Radius.circular(37),
              ),
              gradient: LinearGradient(colors: [
                Colors.orange,
                Colors.deepOrange,
              ]),
            ),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(children: [
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Text("EAZY TRAVEL", style: TextStyle(fontSize: 25)),
                      SizedBox(height: 15),
                      Text("Your destination at a click"),
                      SizedBox(height: 15),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                CustomButton(
                  text: "Let's get Started",
                  txtColor: Colors.black,
                  size: 150,
                  btnColor: Colors.white,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ClientOrUser(),
                        ));
                  },
                ),
              ]),
            ),
          ),
        )
      ]),
    ));
  }
}
