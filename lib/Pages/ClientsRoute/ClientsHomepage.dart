
import 'package:flutter/material.dart';
import 'package:project_1/Pages/UsersRoute/MyHomeTabs.dart';
import 'package:project_1/Widgets/Search_Bar.dart';
import 'package:project_1/Widgets/TextField.dart';
import '../../Widgets/FeaturedVehiclesBox.dart';
import '../../Widgets/TopRow.dart';
import '../UsersRoute/Bookings.dart';
import '../UsersRoute/MySettings.dart';
import 'BookingsTab.dart';
import 'MyHomeTabs.dart';




class ClientsHomePage extends StatefulWidget {
  const ClientsHomePage({super.key});

  @override
  State<ClientsHomePage> createState() => _ClientsHomePageState();
}

class _ClientsHomePageState extends State<ClientsHomePage> {
  TextEditingController search = TextEditingController();
  String buttonName = "Login";
  int _currentIndex = 0;

  final List<Widget> _pages=<Widget> [
    ClientHomeTab(),
    ClientBookingsPage(),
    MySettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: _pages.elementAt(_currentIndex),
        ),

        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          backgroundColor: Colors.deepOrangeAccent,
            selectedFontSize: 18,
            iconSize: 20,

            items: [
              BottomNavigationBarItem(
                label: "Home",
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: "Bookings",
                icon: Icon(Icons.receipt),
              ),
              BottomNavigationBarItem(
                label: "Settings",
                icon: Icon(Icons.verified_user),
              ),
            ],

            onTap: (int index) {
              setState(() {
                _currentIndex = index;
              });
            })
    );
  }
}
