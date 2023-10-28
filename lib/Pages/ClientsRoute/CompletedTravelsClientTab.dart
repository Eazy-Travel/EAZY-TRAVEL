
import 'package:flutter/material.dart';
import '../../Widgets/BookingsTileWidget.dart';
import '../../Widgets/SquareBox.dart';

class CompletedTravelBookings extends StatefulWidget {
  const CompletedTravelBookings({super.key});

  @override
  State<CompletedTravelBookings> createState() => _CompletedTravelBookingsState();
}

class _CompletedTravelBookingsState extends State<CompletedTravelBookings> {
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

            ],
          ),

        ),
      ),
    );
  }
}