import 'package:flutter/material.dart';
import 'package:project_1/Widgets/CustomButton.dart';
import '../../Widgets/BusSeatWidget.dart';
import '../../Widgets/SquareBox.dart';
import "package:provider/provider.dart";
import  '../../Providers/BusSeatProviders.dart';

class BookSeatPage extends StatelessWidget {
  const BookSeatPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height15= MediaQuery.of(context).size.height *0.6;
    var myList = context.watch<SelectSeatProvider>().myList;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue[900],
        title: Text("Bus UA2 670",
        ),
        leading: IconButton(onPressed: () {  }, icon:const Icon(Icons.arrow_back)),
        actions: [
          IconButton(onPressed: () {  }, icon:const Icon(Icons.help)),

        ],
      ),
      body: Container(
        padding: EdgeInsets.all(9.0),
        child: Column(
          children: [
            Expanded(
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,

                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child:Column(
                          children: [
                            Container(
                              height: 30,
                              width:30,
                              color: Colors.greenAccent,
                            ), Text("${context.watch<SelectSeatProvider>().count}Available")
                          ],
                        ),
                      ),
                      Container(
                        child:Column(
                          children: [
                            Container(
                              height: 30,
                              width:30,
                              color: Colors.redAccent,
                            ), Text("Already Booked")
                          ],
                        ),
                      ),


                    ],
                  ),
                )),
            Expanded(
              flex: 4,
              child: Column(
                  children:[
                    Container(
                      height: height15,
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 7),
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              context.read<SelectSeatProvider>().addSeat(index);
                              if(!myList.contains(index)){
                                context
                                    .read<SelectSeatProvider>();
                                //.addSeat(index);

                              }else{
                                context
                                    .read<SelectSeatProvider>()
                                    .RemoveSeat(index);
                              }
                            },
                            child: Container(
                                padding: EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(4),
                                  color: (index==2||index==3||index==9||index==10||index==16||index==17||index==23||index==24||index==30||index==31||index==37||index==38||index==44||index==45) ? Colors. white: myList.contains(index)?Colors.lightGreen:Colors.blueAccent,

                                  //child: Center(child: Text('$index')),
                                )),
                          );
                        },),
                    ),
                    SizedBox(height:15),
                    Container(
                      height: 30,
                      child: CustomButton(
                        text: "Back",
                        txtColor: Colors.black,
                        size: 125,
                        btnColor: Colors.greenAccent,
                        onTap: () {
                          Navigator.pop(context);
                        },),
                    )
                  ]


              ),
            ),
          ],
        ),
      ),
    );

  }
}