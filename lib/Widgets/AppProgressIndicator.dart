import 'package:flutter/material.dart';

class AppProgressIndicator extends StatelessWidget {
   const AppProgressIndicator(Key? key):super(key: key);
      //({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: Colors.orangeAccent,
        backgroundColor: Colors.blueGrey,
        value: null,
      ),
    );
  }
}
