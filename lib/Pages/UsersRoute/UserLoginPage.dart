import 'package:flutter/material.dart';
import 'package:project_1/Pages/UsersRoute/CreateAccount.dart';
import 'package:project_1/Widgets/CustomButton.dart';
import 'package:project_1/Widgets/SquareTile.dart';
import 'package:project_1/Widgets/TextField.dart';
import 'AccountRecovery.dart';
import 'Homepage.dart';

class UserLoginPage extends StatefulWidget {
  const UserLoginPage({super.key});

  @override
  State<UserLoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<UserLoginPage> {
  TextEditingController userName = TextEditingController();
  TextEditingController userPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width / 4;
    final height7 = MediaQuery.of(context).size.height / 7;
    final height10 = MediaQuery.of(context).size.height / 10;

    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.blue[900],
          title:Center(

            child:Text("Sign in"),
          ),

          leading:
              IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.help)),
          ],
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: height10),
                  Container(
                    child: Image.asset(
                      "assets/Eazy travelLogo.jpg",
                      width: 150,
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFed(
                      hintText: 'user@gmail.com',
                      obscureText: false,
                      labeltext: ' Enter your Name',
                      controller: userName),
                  SizedBox(
                    height: 14,
                  ),
                  TextFed(
                      hintText: "Enter your password",
                      obscureText: true,
                      labeltext: "Enter your password",
                      controller: userPass),
                  SizedBox(
                    height: 14,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        CreateAccountPage() /*CreateAccountPage()*/));
                          },
                          child: Text("Don't have an account!",
                              style: TextStyle(color: Colors.lightBlue)),
                        ),
                        const SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RecoverAccount(),
                                ));
                          },
                          child: Text(
                            "Forgot Password",
                            style: TextStyle(
                              color: Colors.purple[600],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  CustomButton(
                    text: "Sign in",
                    txtColor: Colors.white,
                    size: width,
                    btnColor: Colors.black,
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                  ),
                  SizedBox(height: 18),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      children: [
                        Expanded(
                            child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        )),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            "or continue with",
                            style: TextStyle(color: Colors.grey[400]),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SquareTile(imagePath: 'assets/google.png'),
                      SizedBox(width: 10),
                      SquareTile(imagePath: 'assets/apple.jpg'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
