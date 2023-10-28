import 'package:flutter/material.dart';
import 'package:project_1/Pages/UsersRoute/CreateAccount.dart';
import 'package:project_1/Widgets/CustomButton.dart';
import 'package:project_1/Widgets/TextField.dart';
//import 'package:firebase_storage/firebase_storage.dart';
import 'AccountRecovery.dart';
import 'ClientsHomepage.dart';




class ClientLoginPage extends StatefulWidget {
  const ClientLoginPage({super.key});

  @override
  State<ClientLoginPage> createState() => _ClientLoginPageState();
}

class _ClientLoginPageState extends State<ClientLoginPage> {
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
  /*  final storage = FirebaseStorage.instance;
    final storageRef = FirebaseStorage.instance.ref();
*/
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue[900],
        title: Text("Sign in",textAlign: TextAlign.center
        ),
       actions: [
          IconButton(onPressed: () {  }, icon:const Icon(Icons.help)),

        ],
      ),
      backgroundColor: Colors.white,
      body:SafeArea(child:

      SingleChildScrollView(
        child:Center(
          child:Column(
            children:[
              SizedBox(height: height7),
             Container(
               child: Image.asset("assets/Eazy travelLogo.jpg",
                 width: 150,
               ),
             ),
              SizedBox(height: 10),
              TextFed(hintText: 'Enter Company Name',
                  obscureText: false,
                  labeltext:' Enter Company Name',
                  controller:userName),
              SizedBox(height: 14),
              TextFed(hintText: "Enter  password",
                  obscureText: true,
                  labeltext:"Enter  password",
                  controller:userPass),
              SizedBox(height: 14),
              Padding(
                padding:EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    GestureDetector(
                      onTap: (){
                      Navigator.push(
                          context, MaterialPageRoute(
                          builder: (context) =>CreateAccountPage()
                      /*CreateAccountPage()*/));

                },
                    child:Text("Don't have an account?"),
              ),
                    const SizedBox(width: 10),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) =>
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
                text: "Sign in",
                txtColor: Colors.white,
                size: width,
                btnColor: Colors.black,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder:
                          (context) => ClientsHomePage()));
                }
                ),
            ],

          ),
        ),
      ),
      )
    );
  }
}
