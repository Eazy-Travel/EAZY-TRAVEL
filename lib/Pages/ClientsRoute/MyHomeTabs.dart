import 'package:flutter/material.dart';

import '../../Widgets/ClientHomePageSlider.dart';


class ClientHomeTab extends StatefulWidget {
  const ClientHomeTab({super.key});

  @override
  State<ClientHomeTab> createState() => _ClientHomeTabState();
}

class _ClientHomeTabState extends State<ClientHomeTab> {
  TextEditingController search = TextEditingController();

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
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/bus.webp"),
                            fit: BoxFit.cover)))),
            Positioned(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              top: 180,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(37),
                    topRight: Radius.circular(37),
                  ),
                  gradient: LinearGradient(colors: [
                    Colors.white38,
                    Colors.white70,
                  ]),
                ),
                child:ClientHomePageSlider()),
            )
          ]),
        ));
  }
}
