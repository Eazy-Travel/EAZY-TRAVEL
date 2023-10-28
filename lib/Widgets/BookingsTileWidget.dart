import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookingsTileWidget extends StatefulWidget {
  final String from;
  final String to;
  final String date;
  final String time;

  const BookingsTileWidget({super.key,
    required this.from,
    required this.to,
    required this.date,
    required this.time});

  @override
  State<BookingsTileWidget> createState() => _BookingsTileWidgetState();
}

class _BookingsTileWidgetState extends State<BookingsTileWidget> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
          // action: Icon(Icons.angle)
          leading: Icon(Icons.bus_alert),
          title: Text("KAMPALA to ARUA UAX 256",
              style: TextStyle(color: Colors.black)),
          subtitle: Text("24/5/2023",
              style: TextStyle(color: Colors.black)),
    );
  }
}
