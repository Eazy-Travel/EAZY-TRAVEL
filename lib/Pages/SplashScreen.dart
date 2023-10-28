import 'dart:async';
import 'package:flutter/material.dart';
import 'package:project_1/Pages/UsersRoute/Homepage.dart';


import 'WelcomePage.dart';

class  Splash extends StatefulWidget {
  const Splash({Key?  key}): super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override

  void initState(){
    super.initState();

    _navigatetohome();
  }
  _navigatetohome()async{
    await Future.delayed(Duration(seconds: 7),(){});
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context)=>WelcomePage()));}
  /*Future<void> _navigatetohome(BuildContext context) async {
    Navigator.of(context).push(/*waiting dialog */);
    await Future.delayed(const Duration(seconds: 2));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

*/
/*/_navigatetohome()async{
  // await Future.delayed(Duration(milliseconds: 2000) ,(){});
   //
  //}*/
  @override
  Widget build(BuildContext context) {
    final fullHeight=MediaQuery.of(context).size.height/4;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: fullHeight,
                width: 200,
                child: Image.asset('assets/Eazy travelLogo.jpg')),
          CircularProgressIndicator(
            color: Colors.orangeAccent,
            backgroundColor: Colors.grey,
            value: null,
        ),
          ],
        ),
      ),
    );
  }
}

