import 'package:admanpanal/components/roundbutton.dart';
import 'package:admanpanal/utils/utilses.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';


class Addnews extends StatefulWidget {
  const Addnews({super.key});

  @override
  State<Addnews> createState() => _AddnewsState();
}

class _AddnewsState extends State<Addnews> {
final postController =TextEditingController();
bool loading = false;
final databaseRef = FirebaseDatabase.instance.ref('news');

  @override
  Widget build(BuildContext context) {
  

    return Scaffold(
appBar: AppBar(
  centerTitle: true,
  title: const Text("Add College News"),
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
          
          maxLines: 18,
          controller: postController,
          decoration: InputDecoration(hintText: 'Write News',border:OutlineInputBorder()),
          
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
          Utils().toestMessage('News added');
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

// ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text("You have successfully deleted a itmes")));