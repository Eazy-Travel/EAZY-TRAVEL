import 'package:flutter/material.dart';
class  SearchBarz extends StatelessWidget {
  const SearchBarz({super.key,
    });


  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        height: 45,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          SizedBox(
            width: 250,
            child: TextField(

            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(30.0))
              ),
              focusedBorder: OutlineInputBorder(
                borderSide:     BorderSide(color: Colors.grey.shade50,
                ),

              ),
              fillColor: Colors.grey.shade200,
              filled: true,
              hintText:"Where would you like to go" ,

            ),
        ),
          ),
            SizedBox(width:10),
            Icon(Icons.search,
            color:Colors.black,
            )
          ],
        ));
  }
}

