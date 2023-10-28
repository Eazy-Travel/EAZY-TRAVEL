import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:project_1/Pages/UsersRoute/AccountRecovery.dart';
import 'package:project_1/Pages/UsersRoute/Homepage.dart';
import 'package:project_1/Widgets/CustomButton.dart';
import 'package:project_1/Widgets/TextField.dart';
import '../../Widgets/SquareTile.dart';


class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  TextEditingController userName=TextEditingController();
  TextEditingController userPass=TextEditingController();
  String buttonName1="CreateAccount";
  String buttonName2="Log in";
  String buttonName="Forgot Password";



  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width/4;
    final height7=MediaQuery.of(context).size.height/7;
    final height10=MediaQuery.of(context).size.height/10;
    final height20=MediaQuery.of(context).size.height/20;

    return Scaffold(appBar: AppBar(
      title: Text(
        "Please Create an Account ",

      ),
      centerTitle: true,
      backgroundColor: Colors.blue[900],
    ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child:Center(
          child:Column(
            children:[
              SizedBox(height: height7),
              Text("SIGN IN",
                style: TextStyle(
                  fontSize: 27,
                ),
              ),
              SizedBox(height: height10,),
              TextFed(hintText: 'Enter Name',
                  obscureText: false,
                  labeltext:' Enter your Name',
                  controller:userName),
              SizedBox(height: height20,),
              TextFed(hintText: "Enter your password",
                  obscureText: true,
                  labeltext:"Enter your password",
                  controller:userPass),
              SizedBox(height: height20,),
              TextFed(hintText: "enter your password",
                  obscureText: true,
                  labeltext: "Renter your password",
                  controller:userPass),
              SizedBox(height: height20,),
              CustomButton(
                  text: "Sign Up",
                  txtColor: Colors.white,
                  size: width,
                  btnColor: Colors.black, onTap: () {
                     Navigator.push(context,
                         MaterialPageRoute(
                           builder: (context) => HomePage(
                           //name:userName.text,
                         ),));
              },),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    )),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text("or continue with",
                        style: TextStyle(
                            color:Colors.grey[400]),
                      ),
                    ),
                    Expanded(child:
                    Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),),

                  ],

                ),

              ),
              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:const [
                  SquareTile(imagePath: 'assets/google.png'),
                  SizedBox(width: 10),
                  SquareTile(imagePath: 'assets/apple.jpg'),
                ],),


            ],

          ),
        ),
      ),

    );
  }
}
