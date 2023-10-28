import "package:flutter/material.dart";

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    var isDark=MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.blue[900],
          //leading:IconButton(onPressed:(){}, icon: Icon.,),
          title: Text(
            "Profile",
          ),
          actions: [
            IconButton(onPressed: () {}, icon:  Icon(isDark? Icons.sunny:  Icons.shield_moon_sharp)),
          ],
        ),
        body: SingleChildScrollView(
          child:Container(
 padding: EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(
                  width: 120,
                  height:120,
                  child:Icon(Icons.account_circle)
                 
                ),
                const SizedBox(height: 10),
                Text("Ayesiga steven",style: TextStyle(color: Colors.black),),
                Text("ayesteve18@gmail.com",style: TextStyle(color: Colors.black),),
                Text("0741293535",style: TextStyle(color: Colors.black),),
                SizedBox(height:20),
                ElevatedButton(onPressed: (){},
                    child: Text("Update Profile"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  side:BorderSide.none, shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))
                ),),
                const SizedBox(height: 20),
                const Divider(),
                const SizedBox(height: 10),
                ProfileList(
                  title: "Log out",
                  endIcon: false,
                  icon: Icons.logout,
                  onPress: () {

                  },
                ),
              ],
            ),

          ),

        ));
  }
}

class ProfileList extends StatelessWidget {
  const ProfileList({
    super.key,
    required this.title,
    required this.icon,
    required this.onPress,
    this.endIcon=true,
  });
final String title;
final IconData icon;
final  VoidCallback onPress;
final bool endIcon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      leading: Container(
        width: 40,
        height: 30,
        decoration: BoxDecoration(
          borderRadius:  BorderRadius.circular(100),
          color: Colors.white38.withOpacity(0.1),
        ),
        child: Icon(icon, color:Colors.blue),
      ),
      title: Text(title),
      trailing:endIcon? Container(
        width: 40,
        height: 30,
        decoration: BoxDecoration(
          borderRadius:  BorderRadius.circular(100),
          color: Colors.white38.withOpacity(0.1),
        ),
        child:const Icon(Icons.settings,
            size: 18.0,
            color:Colors.blue),
      ):null,

    );
  }
}
