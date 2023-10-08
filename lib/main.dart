import 'package:flutter/material.dart';
//import 'package:project_1/Pages/CreateAccount.dart';
//import 'Pages/LoginPage.dart';
import 'Pages/SplashScreen.dart';
//import 'Pages/Homepage.dart';

void main()=>runApp(MyApp()
);
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Splash(),
      /*routes: {
          '/HomePage':(context)=>const HomePage(),
          '/LoginPage':(context)=>const LoginPage(),
          '/CreateAccountPage':(context)=>const CreateAccountPage(),
      },*/
    );}
}



/*class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //const HomePage ({Key? key,this.title}) :super(key:key);
  String buttonName="Login";
  int currentindex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar(
        title: Text('My First App'),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      body: Center(
        child: Row(
          children: [

            Container(
              //padding: EdgeInsets.all(20.0),
              //padding: EdgeInsets.symmetric(horizontal:30.0 ,vertical: 10.0),

              padding: EdgeInsets.all(20.0),
              //margin: EdgeInsets.all(5.0),
              //color:Colors.grey,
              alignment: Alignment.center,
              child: Row(
                children: [
                  ElevatedButton.icon(
                    onPressed:(){
                      setState(() {
                        buttonName="Message";
                      });
                    },
                    style:ElevatedButton.styleFrom(
                      //minimumSize: Size(100,80),
                        textStyle:TextStyle(fontSize: 20)),
                    icon: Icon(
                        Icons.mail
                    ),
                    label: Text( buttonName),

                  ),
                  ElevatedButton.icon(
                    onPressed:(){
                      setState(() {
                        buttonName="Email";
                      });
                    },
                    style:ElevatedButton.styleFrom(
                      //minimumSize: Size(100,80),
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        textStyle:TextStyle(fontSize: 20)),
                    icon: Icon(
                        Icons.mail
                    ),
                    label: Text( buttonName),

                  ),
                ],
              ),)
          ],

        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon:Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label:"Setting",
            icon: Icon(Icons.settings),
          ),

        ],
        currentIndex: currentindex,
        onTap: (int index){
          setState(() {
            currentindex=index;
          });

        },
      ),
    );

/*class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:HomePage( title: 'Product layout demo homepage'),
    );
  }
}
*/

    /*Center(
        child: ElevatedButton.icon(
          onPressed:(){},
          style:ElevatedButton.styleFrom(
            //minimumSize: Size(100,80),
            textStyle:TextStyle(fontSize: 20)

          ),
          icon: Icon(
              Icons.mail
          ),
          label: Text( "Login"),


        //child: Image(
         // image: AssetImage('assets/logo.jpg'),
       ),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },

        backgroundColor: Colors.blue[900],
        child:Text("click "),
      ),
    );*/
  }
}
*/