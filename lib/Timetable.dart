




import 'package:admanpanal/addtimetable.dart';
import 'package:admanpanal/utils/utilses.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

import 'colorsceem.dart';

class timetble extends StatefulWidget {
  const timetble({super.key});

  @override
  State<timetble> createState() => _timetbleState();
}

class _timetbleState extends State<timetble> {
final auth = FirebaseAuth.instance;
final ref = FirebaseDatabase.instance.ref('Post');
final editController= TextEditingController();
  @override
  void initState(){
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         centerTitle: true,
        title: Text("Timetable"),
        backgroundColor: kpink,
        shadowColor: Colors.red,
      ),
      body: Column(
        children: [
          Expanded(child: FirebaseAnimatedList(query: ref,
          defaultChild: Text('Loading'),
          
           itemBuilder: (context,snapshot,animation,index){
            final title = snapshot.child('title').value?.toString();
            return ListTile(
              title: Text(snapshot.child('title').value.toString(),style: TextStyle(
      fontSize: 15,
      fontWeight:FontWeight.w700),),
              // subtitle: Text(snapshot.child('id').value.toString()),
              trailing: PopupMenuButton(itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  child: ListTile(
                    onTap: (){
                      Navigator.pop(context);
                      // ignore: unnecessary_cast
                      showMyDialog(title!,snapshot.child('id').value.toString() as String,);
                    },
                    leading: Icon(Icons.edit),
                title: Text('Edit'),
                ),
                ),
                   PopupMenuItem(
                  value: 1,
                  child: ListTile(
                    onTap: (){
                      Navigator.pop(context);
                      ref.child(snapshot.child('id').value.toString()).remove();
                    },
                    leading: Icon(Icons.edit),
                title: Text('Delet'),
                ),
                ),
                
              ]
             ),
             
              );
          }))
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder:(context) => const addtimesecreen()));
      },
      child:Icon(Icons.add),
      ),
    );
  }
  Future<void> showMyDialog(String title,String id)async{
    editController.text= title;
  return showDialog(
    context:context,
    builder:(BuildContext cont)
  // context:context,
  // builder:(BuildContext context) 
  
  
  {
return AlertDialog(
  title: Text('Update'),
  content:Container(
    child: TextField(
      controller: editController,
      decoration: InputDecoration(
        hintText: 'Edit'
      ),
    ),
  ),
  actions: [
    TextButton(onPressed: (){
      Navigator.pop(context);
    }, child: Text('Cancel'),
    ),
     TextButton(onPressed: (){
      Navigator.pop(context);
      ref.child(id).update({
        'title' : editController.text.toLowerCase()
      }).then((value){
        Utils().toestMessage('Post Updata');
      }).onError((error, stackTrace){
        Utils().toestMessage(error.toString());
      });
    }, child: Text('Update'),
    ),
  ],
);
  }
  );
}
}

