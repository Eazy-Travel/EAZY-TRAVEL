
import 'package:flutter/material.dart';
import '../../Widgets/BookingsTileWidget.dart';
import '../../Widgets/SquareBox.dart';

class CompletedTravelBookingsuser extends StatefulWidget {
  const CompletedTravelBookingsuser({super.key});

  @override
  State<CompletedTravelBookingsuser> createState() => _CompletedTravelBookingsState();
}

class _CompletedTravelBookingsState extends State<CompletedTravelBookingsuser> {
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