import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project_1/Widgets/CustomButton.dart';

import '../../Widgets/TextField.dart';
import 'Homepage.dart';

class RecoverAccount extends StatefulWidget {
  const RecoverAccount({super.key});


  @override
  State<RecoverAccount> createState() => _RecoverAccountState();
}

class _RecoverAccountState extends State<RecoverAccount> {
  TextEditingController useremail=TextEditingController();
  String buttonName='Submit';

@override
void dispose(){
  useremail.dispose();
      super.dispose();
}
  Future passwordReset() async {
  try{
  await FirebaseAuth.instance.sendPasswordResetEmail(email:useremail.text.trim());
  showDialog(
    context: context,
    builder: (context){
      return AlertDialog(
        content:Text("Password Reset Link sent: Check your email"),
      );
    },
  );
  } on FirebaseAuthException catch (e){
    print(e);
    showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          content:Text(e.message.toString()),
          );
      },
    );
  }
      }


  @override
  Widget build(BuildContext context) {
    final buttonwidth=MediaQuery.of(context).size.width*0.25;
    //final height7=MediaQuery.of(context).size.height/7;
    final height10=MediaQuery.of(context).size.height/10;
    final height20=MediaQuery.of(context).size.height/20;

    String buttonName="Forgot Password";
    return  Scaffold(
      appBar: AppBar(
        title: Text('Account Recovery'),
        backgroundColor: Colors.blue[900],
      ),
      body:SafeArea(
          child:Column(
            children: [
            SizedBox(height:height10),
              Text("RESET PASSWORD",
                    style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 27,
               // fontSize: MediaQuery.of(context).size.width/4;
              )),
              SizedBox(height: 14,),
              Text("Please enter email address associated with this account",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),

              SizedBox(height: 14,),
              TextFed(hintText: 'user@gmail.com',
                  obscureText: false,
                  labeltext:' Enter your Name',
                  controller: useremail),
              SizedBox(height: height20),
              CustomButton(
                text: buttonName,
                txtColor: Colors.white,
                size: buttonwidth,
                btnColor: Colors.black,
                onTap: () {
                  passwordReset();
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
                },),

      ],

          ),

      ),
    );
  }
}

