import 'package:flutter/material.dart';
import 'package:project_1/Pages/CreateAccount.dart';
//import 'package:project_1/Pages/AccountRecovery.dart';
//import 'package:project_1/Pages/CreateAccount.dart';
//import 'package:project_1/Pages/Homepage.dart';
import 'package:project_1/Widgets/CustomButton.dart';
import 'package:project_1/Widgets/SquareTile.dart';
import 'package:project_1/Widgets/TextField.dart';

import 'AccountRecovery.dart';
import 'Homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
    //final height30=MediaQuery.of(context).size.height/30;

    return Scaffold(
      /*appBar: AppBar(
      title: Text(
        "Create an Account ",

      ),
      centerTitle: true,
      backgroundColor: Colors.black87,
    ),*/
      backgroundColor: Colors.white,
      body:SafeArea(child:

      SingleChildScrollView(
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
              SizedBox(height: 14,),
              TextFed(hintText: "Enter your password",
                  obscureText: true,
                  labeltext:"Enter your password",
                  controller:userPass),
              SizedBox(height: 14,),
              Padding(
                padding:EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>
                      CreateAccountPage(),));

                },
                    child:Text("Don't have an account"),
              ),
                    const SizedBox(width: 10),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>
                            RecoverAccount(),));
                      },
                      child:Text("Forgot Password",
                        style: TextStyle(
                        color: Colors.purple[600],
                      ),
                    ),),
                  ],
                ),
              ),
              SizedBox(height: 18,),
              CustomButton(
                text: "Sign Up",
                txtColor: Colors.white,
                size: width,
                btnColor: Colors.black,
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
                },),
              SizedBox(height: 18,),
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
      )
    );
  }
}
