import 'package:flutter/material.dart';
import 'package:project_1/Pages/ClientsRoute/LoginPage.dart';
import '../Widgets/UserOrClient.dart';
import 'ClientsRoute/LoginPage.dart';
import 'UsersRoute/UserLoginPage.dart';

class ClientOrUser extends StatelessWidget {
  const ClientOrUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.only(right: 50, left: 50, top: 50),
            child: Center(
              child: Row(
                children: [
                  Expanded(
                    child: UserOrClient(
                      userType: "Client",
                      icon:  Icons.bus_alert_sharp,
                      onPress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ClientLoginPage(),
                            ));
                      },
                    ),
                  ),
                    SizedBox(width:15),
                  Expanded(
                    child: UserOrClient(
                      userType: "User",
                      icon: Icons.account_circle,
                      onPress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => UserLoginPage(),
                            ));
                      },
                    ),
                  ),
                ],
              ),
            )));
  }
}
