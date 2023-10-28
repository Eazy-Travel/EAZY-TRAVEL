import 'package:project_1/Widgets/CustomButton.dart';
import 'package:project_1/Widgets/TextField.dart';
import 'package:flutter/material.dart';
import 'package:project_1/Widgets/TopRow.dart';

import '../../Widgets/PaymentTopRow.dart';
class PaymentMM extends StatefulWidget {
  const PaymentMM({super.key});

  @override
  State<PaymentMM> createState() => _PaymentMMState();
}

class _PaymentMMState extends State<PaymentMM> {
  TextEditingController userName=TextEditingController();
  TextEditingController userPass=TextEditingController();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width / 4;
    final height7 = MediaQuery.of(context).size.height / 7;
    final height10 = MediaQuery.of(context).size.height / 10;
    final height15= MediaQuery.of(context).size.height / 15;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.blue[900],
          title: Text("Payment"),
          actions: [
            IconButton(onPressed: () {  }, icon:const Icon(Icons.help)),

          ],
        ),
        body: SafeArea(
          child: Container(
              padding: EdgeInsets.only(right: 20,left: 20),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PaymentTopRow(text: "Mobile Money"),
                  SizedBox(height: height15),
                  Text("Phone Number"),
                  TextFed(hintText: '+256 xxxxxxxxx',
                      obscureText: false,
                      labeltext:' contact',
                      controller:userName),
                  SizedBox(height: 14),
                  Text("Amount"),
                  TextFed(hintText: "UGX __,___ ",
                      obscureText: true,
                      labeltext:"Amount",
                      controller:userPass),
                  SizedBox(height: 14),
                  CustomButton(
                      text: "Proceed",
                      txtColor: Colors.black,
                      size: 140,
                      btnColor: Colors.tealAccent,
                      onTap: (){})
                ],
              )
          ),
        ));
  }
}
