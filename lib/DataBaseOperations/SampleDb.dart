import 'package:flutter/cupertino.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class SampleDb extends StatefulWidget {
  const SampleDb({super.key});

  @override
  State<SampleDb> createState() => _SampleDbState();
}


List<String> docIDs=[];

Future getDocsId() async{
  await FirebaseFirestore.instance.collection('Bus info').get().then(
          (snapshot) => snapshot.docs.forEach((document) {
        print(document.reference);
        docIDs.add(document.reference.id);

      }));
}
@override
void initState(){
  getDocsId();
  //Todo:implement initState

}
class _SampleDbState extends State<SampleDb> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(

           child:Column(
             children: [
               Text("List of users from the db"),
               Expanded(
                 child:FutureBuilder(
                     future: getDocsId(),
                     builder:(context,snapshot) {
                       return Container(
                         child: ListView.builder(
                       itemCount: docIDs.length,
    itemBuilder: (context, index)){

    };

                       );
                     }))
             ],
           )
        ),
      ),
    );
  }
}
