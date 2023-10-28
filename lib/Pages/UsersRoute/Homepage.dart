import 'package:flutter/material.dart';
import 'package:project_1/Pages/UsersRoute/MyHomeTabs.dart';
import '../ClientsRoute/MySettings.dart';
import 'Bookings.dart';

class HomePage extends StatefulWidget {

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController search = TextEditingController();
  int _currentIndex = 0;

  final List<Widget> _pages=<Widget> [
    HomeTab(),
    BookingsPage(),
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
          backgroundColor: Colors.deepOrange,
            selectedFontSize: 16,
            iconSize:18,

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
                label: "My Account",
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
