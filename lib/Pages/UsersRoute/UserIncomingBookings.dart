
import 'package:flutter/material.dart';
import '../../Widgets/BookingsTileWidget.dart';
import '../../Widgets/SquareBox.dart';

class IncomingBookingsUser extends StatefulWidget {
  const IncomingBookingsUser({super.key});

  @override
  State<IncomingBookingsUser> createState() => _IncomingBookingsUserState();
}

class _IncomingBookingsUserState extends State<IncomingBookingsUser> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              BookingsTileWidget(from: 'Kampala',
                date: "02/03/04",
                time: "09:10",
                to: "Kabale",
              ),
              BookingsTileWidget(from: 'Kampala',
                date: "02/03/04",
                time: "09:10",
                to: "Kabale",
              ),
            ],
          ),

        ),
      ),
    );
  }
}