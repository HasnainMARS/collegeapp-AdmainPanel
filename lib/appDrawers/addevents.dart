import 'package:admanpanal/components/roundbutton.dart';
import 'package:admanpanal/utils/utilses.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';


class EventAdd extends StatefulWidget {
  const EventAdd({super.key});

  @override
  State<EventAdd> createState() => _EventAddState();
}

class _EventAddState extends State<EventAdd> {
final postController =TextEditingController();
bool loading = false;
final databaseRef = FirebaseDatabase.instance.ref('event');
  @override
  Widget build(BuildContext context) {
  

    return Scaffold(
appBar: AppBar(
  centerTitle: true,
  title: const Text("Add Event Details"),
),
body: Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: SingleChildScrollView(
    reverse: true,
    child: Column(
      children:  [
        SizedBox(
          
          height: 10,
        ),
        TextFormField(
          
          maxLines: 10,
          controller: postController,
          decoration: InputDecoration(hintText: 'Write about events ',border:OutlineInputBorder()),
          
        ),
  
        
         SizedBox(
          height: 30,
        ),
  
        RoundButton(title: 'Add', 
        
        loading :loading,
        onTap:(){
           Navigator.of(context).pop();
          setState(() {
            loading = true;
            // Navigator.of(context).pop();
          });
         String id = DateTime.now().millisecondsSinceEpoch.toString();
        databaseRef.child(id) .set({
          'title': postController.text.toString(),
          'id': id
        }) .then((value){
          Utils().toestMessage('Event added');
          // <<<this setstate couse errer that,s why comment out
          //  setState(() {
          //   loading = true;
          // });
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
  ),
    );
  }
}
