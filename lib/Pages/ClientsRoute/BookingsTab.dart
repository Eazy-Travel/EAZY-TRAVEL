import 'package:flutter/material.dart';
import 'package:project_1/Pages/ClientsRoute/CancelledBookingsTab.dart';
import 'package:project_1/Pages/ClientsRoute/IncomingBookingsClientTab.dart';
import 'CompletedTravelsClientTab.dart';

class ClientBookingsPage extends StatefulWidget {
  const ClientBookingsPage({super.key});

  @override
  State<ClientBookingsPage> createState() => _ClientBookingsPageState();
}

class _ClientBookingsPageState extends State<ClientBookingsPage> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    TabController _TabController=TabController(length:3, vsync:this);
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.blue[900],
          title: Text(
            "Bookings",
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.help)),
          ],
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                child: Align(
                  alignment: Alignment.center,
                  child: TabBar(

                      controller: _TabController,
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.black45,
                      isScrollable: true,
                      indicatorColor: Colors.teal,
                      indicatorSize: TabBarIndicatorSize.label,
                      tabs: [
                    Tab(
                    text: "Upcoming"
                  ),
                  Tab(text: "Completed"),
                  Tab(text: "Cancelled")]),
                )),

              Container(
                height: 300,
                width: double.maxFinite,
                child:TabBarView(
                  controller: _TabController,
                  children: [
                    IncomingBookingsClient(),
                    CompletedTravelBookings(),
                    CancelledBookings()
                  ],
                ),
              ),

              ]),

          ),


    );
  }
}
