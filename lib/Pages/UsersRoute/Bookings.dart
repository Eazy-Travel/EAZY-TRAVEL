
import 'package:flutter/material.dart';

import 'CancelledUserBookins.dart';
import 'CompletedTravelsuser.dart';
import 'UserIncomingBookings.dart';

class BookingsPage extends StatefulWidget {
  const BookingsPage({super.key});

  @override
  State<BookingsPage> createState() => _BookingsPageState();
}

class _BookingsPageState extends State<BookingsPage>with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _TabController=TabController(length:3, vsync: this);

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
                    IncomingBookingsUser(),
                    CompletedTravelBookingsuser(),
                    CancelledBookingsUser()
                  ],
                ),
              ),

            ]),

      ),


    );
  }
}