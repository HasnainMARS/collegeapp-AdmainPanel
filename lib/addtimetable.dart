import 'package:admanpanal/components/roundbutton.dart';
import 'package:admanpanal/utils/utilses.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';


class addtimesecreen extends StatefulWidget {
  const addtimesecreen({super.key});

  @override
  State<addtimesecreen> createState() => _addtimesecreenState();
}
final postController =TextEditingController();
bool loading = false;
final databaseRef = FirebaseDatabase.instance.ref('Post');
// ignore: camel_case_types
class _addtimesecreenState extends State<addtimesecreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: const Text("Add New Time"),
),
body: Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: Column(
    children:  [
      SizedBox(
        height: 30,
      ),
      TextFormField(
        
        maxLines: 4,
        controller: postController,
        decoration: InputDecoration(hintText: 'what is your',border:OutlineInputBorder()),
        
      ),

      
       SizedBox(
        height: 30,
      ),

      RoundButton(title: 'Add', 
      loading :loading,
      onTap:(){
        setState(() {
          loading = true;
        });
       String id = DateTime.now().millisecondsSinceEpoch.toString();
      databaseRef.child(id) .set({
        'title': postController.text.toString(),
        'id': id
      }) .then((value){
        Utils().toestMessage('Post added');
         setState(() {
          loading = true;
        });
      }).onError((error, stackTrace){
        Utils().toestMessage(error.toString());
         setState(() {
          loading = true;
        });
      });
      })
      
    ],
    
  ),
  ),
    );
  }
}

