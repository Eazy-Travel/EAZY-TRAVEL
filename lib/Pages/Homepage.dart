import 'package:flutter/material.dart' ;

class HomePage extends StatefulWidget {
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
      appBar: AppBar(
        title: Text('EAZY TRAVEL'),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      body: Container(
        //padding: EdgeInsets.all(20.0),
        //padding: EdgeInsets.symmetric(horizontal:30.0 ,vertical: 10.0),

          padding: EdgeInsets.all(20.0),
          //margin: EdgeInsets.all(5.0),
          //color:Colors.grey,
          alignment: Alignment.center,
          child: Row(
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    buttonName = "Message";
                  });
                },
                style: ElevatedButton.styleFrom(
                  //minimumSize: Size(100,80),
                    textStyle: TextStyle(fontSize: 20)),
                icon: Icon(
                    Icons.mail
                ),
                label: Text(buttonName),

              ),
              ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    buttonName = "Have an account";
                  });
                },
                style: ElevatedButton.styleFrom(
                  //minimumSize: Size(100,80),
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    textStyle: TextStyle(fontSize: 20)),
                icon: Icon(
                    Icons.mail
                ),
                label: Text(buttonName),

              ),



            ],

          ),

      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Setting",
            icon: Icon(Icons.settings),
          ),

        ],
        currentIndex: currentindex,
        onTap: (int index) {
          setState(() {
            currentindex = index;
          });
        },


      ),

    );
  }}