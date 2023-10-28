/*import 'package:firebase_auth/firebase_auth.dart';*/
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Pages/SplashScreen.dart';
import "Providers/BusSeatProviders.dart";
import 'package:firebase_core/firebase_core.dart';


//Firebase.initializeApp()
/*void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();  //here we initialize our Firebase App
  runApp(const MyApp());


}
*/

void main(){
  runApp(
      MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => SelectSeatProvider(),)
          ],
      child:MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(primarySwatch: Colors.blue),
            home:Splash(),


    );
    }
}
/*
await Firebase.initializeApp(
options: DefaultFirebaseOptions.currentPlatform,
);
import 'firebase_options.dart';*/