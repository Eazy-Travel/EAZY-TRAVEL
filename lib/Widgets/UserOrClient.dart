import 'package:flutter/material.dart';

class UserOrClient extends StatelessWidget {
  final  IconData? icon;
  final String userType;
  final  VoidCallback onPress;

  const UserOrClient({super.key,this.icon,
    required this.userType,
    required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
     onTap: onPress,
      child: Container(

          width: 100,
          height: 100,
          padding: EdgeInsets.all(17),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(16),
            color: Colors.grey[200],
          ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon),
                SizedBox(height: 15),
                Expanded(
                    child:Text(userType,
                        style:TextStyle(
                            fontSize: 17
                        )),

                )
              ],
            ),

      ),
    );
  }
}
