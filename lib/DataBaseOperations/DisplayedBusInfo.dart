import "package:flutter/material.dart";
import 'package:cloud_firestore/cloud_firestore.dart';

/*class BusInfoRepo extends GetxController{
  static BusInfoRepo get instance=> Get.find();
}*/
List<String> docIDs=[];

Future getDocsId() async{
  await FirebaseFirestore.instance.collection('Bus info').get().then(
          (snapshot) => snapshot.docs.forEach((element) {
            print(element.reference);
          }));
}
@override
void initState(){
  getDocsId();
  //Todo:implement initState

}
//get user name
class getName extends StatelessWidget {
  final String DocumentId;
  const getName({super.key, required this.DocumentId});

 
  @override
  Widget build(BuildContext context) {
    CollectionReference user2=FirebaseFirestore.instance.collection('Bus info');

    return FutureBuilder<DocumentSnapshot>(
         builder: ((context, snapshot){
           if(snapshot.connectionState==ConnectionState.done){
             Map<String, dynamic> data=
                 snapshot.data!.data() as Map<String, dynamic>;
             return Text('Bus: ${data['Bus']}');
           }
      return Text("Loading....");
    }),
      future: null);}
}
