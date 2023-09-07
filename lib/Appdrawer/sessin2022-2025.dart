

// ignore_for_file: non_constant_identifier_names, use_build_context_synchronously

import 'package:admanpanal/colorsceem.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Session2022_2025 extends StatefulWidget {
  Session2022_2025({super.key});

  @override
  State<Session2022_2025> createState() => _Session2022_2025State();
}

class _Session2022_2025State extends State<Session2022_2025> {
  final TextEditingController _NameController = TextEditingController();
  final TextEditingController _college_Roll_numberController = TextEditingController();
  final TextEditingController _University_RollController = TextEditingController();
  final TextEditingController _CourseController = TextEditingController();
  final TextEditingController _DepartmentController = TextEditingController();
  final TextEditingController _House_addressController = TextEditingController();
  final TextEditingController _phone_numberController = TextEditingController();
  final TextEditingController _Blood_GroupController = TextEditingController();
  final TextEditingController _EmailController = TextEditingController();

   final CollectionReference _session = FirebaseFirestore.instance.collection('session2022-2025');
  //  for create operatin
  Future<void> _create([DocumentSnapshot? documentSnapshot]) async{
    await showModalBottomSheet(
      isScrollControlled: true,
      context: context, builder:(BuildContext ctx) {
        return Padding(padding: EdgeInsets.only(
          top: 5,
          right: 20,
          left: 20,
          bottom:MediaQuery.of(ctx).viewInsets.bottom + 0
        ),
        child: SingleChildScrollView(
          reverse: true,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text("Fill student form",
                style: TextStyle(fontSize: 20,
                fontWeight: FontWeight.bold
                ),
                ),
              ),
              TextField(controller: _NameController,
              decoration: const InputDecoration(
                labelText:'Name',hintText: 'eg.Hasnain'
              ),
              ),
              TextField(controller: _college_Roll_numberController,
              decoration: const InputDecoration(
                labelText:'college_Roll_number',hintText: '1234'
              ),
              ),
               TextField(controller:_University_RollController,
              decoration: const InputDecoration(
                labelText:'University Roll_number',hintText: '123456'
              ),
              ),
               
               TextField(controller: _CourseController,
              decoration: const InputDecoration(
                labelText:'Course',hintText: 'BS'
              ),
              ),
               TextField(controller: _DepartmentController,
              decoration: const InputDecoration(
                labelText:'Department',hintText: 'Computer science'
              ),
              ),
               TextField(controller: _House_addressController,
              decoration: const InputDecoration(
                labelText:'House address',hintText: '126.c Gail road Faisalabad'
              ),
              ),
               TextField(controller: _phone_numberController,
              decoration: const InputDecoration(
                labelText:'Phone_number',hintText: '0322225401'
              ),
              ),
              
              TextField(controller: _Blood_GroupController,
              decoration: const InputDecoration(
                labelText:'Blood_Group & Medical_Detail',hintText: 'B+,Heart patient'
              ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: () async{
              final String Name = _NameController.text;
              final int? college_Roll_number =int.tryParse(_college_Roll_numberController.text);
              final int? University_Roll =int.tryParse(_University_RollController.text);
              final String Course = _CourseController.text;
              final String Department = _DepartmentController.text;
              final String House_address = _House_addressController.text;
              final String phone_number = _phone_numberController.text;
              final String Blood_Group = _Blood_GroupController.text;
              if (University_Roll !=null) {
                await _session.add({
              "Name":Name,"college_Roll_number":college_Roll_number,"University_Roll":University_Roll,"Course":Course,
              "Department":Department,"House_address":House_address,"phone_number":phone_number,
              "Blood_Group":Blood_Group,
             });
              }
             _NameController.text='';
             _college_Roll_numberController.text='';
             _University_RollController.text='';
             _CourseController.text='';
             _DepartmentController.text='';
             _House_addressController.text='';
             _phone_numberController.text='';
            _Blood_GroupController.text='';
            Navigator.of(context).pop();
              }, child: const Text("create")),
            ],
        
          ),
        ),
        );
      }
      
      );
  }
  // for update operation
   Future<void> _update([DocumentSnapshot? documentSnapshot]) async{
    
    if (documentSnapshot != null) {
      _NameController.text=documentSnapshot['Name'];
           _college_Roll_numberController.text=documentSnapshot['college_Roll_number'].toString();
            _University_RollController.text=documentSnapshot['University_Roll'].toString();
           _CourseController.text=documentSnapshot['Course'];
           _DepartmentController.text=documentSnapshot['Department'];
           _House_addressController.text=documentSnapshot['House_address'];
           _phone_numberController.text=documentSnapshot['phone_number'];
          _Blood_GroupController.text=documentSnapshot['Blood_Group'];
          
    }
    
    await showModalBottomSheet(
      isScrollControlled: true,
      context: context, builder:(BuildContext ctx) {
        return Padding(padding: EdgeInsets.only(
          top: 5,
          right: 20,
          left: 20,
          bottom:MediaQuery.of(ctx).viewInsets.bottom + 0
        ),
        child: SingleChildScrollView(
          reverse: true,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text("Update",
                style: TextStyle(fontSize: 20,
                fontWeight: FontWeight.bold
                ),
                ),
              ),
              TextField(controller: _NameController,
              decoration: const InputDecoration(
                labelText:'Name',hintText: 'eg.Hasnain'
              ),
              ),
               
               TextField(controller: _college_Roll_numberController,
              decoration: const InputDecoration(
                labelText:'college_Roll_number',hintText: '1234'
              ),
              ),
              TextField(controller:_University_RollController,
              decoration: const InputDecoration(
                labelText:'University Roll_number',hintText: '123456'
              ),
              ),
               TextField(controller: _CourseController,
              decoration: const InputDecoration(
                labelText:'Course',hintText: 'BS'
              ),
              ),
               TextField(controller: _DepartmentController,
              decoration: const InputDecoration(
                labelText:'Department',hintText: 'Computer science'
              ),
              ),
               TextField(controller: _House_addressController,
              decoration: const InputDecoration(
                labelText:'House address',hintText: '126.c Gail road Faisalabad'
              ),
              ),
               TextField(controller: _phone_numberController,
              decoration: const InputDecoration(
                labelText:'phone_number',hintText: '0312121200'
              ),
              ),
              //  TextField(controller: _AgeController,
              // decoration: InputDecoration(
              //   labelText:'Student_Age',hintText: '19'
              // ),
              // ),
              TextField(controller: _Blood_GroupController,
              decoration: const InputDecoration(
                labelText:'Age,Blood_Group & Medical_Detail',hintText: 'B+,Heart patient'
              ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: () async{
              final String Name = _NameController.text;
              final int? college_Roll_number =int.tryParse(_college_Roll_numberController.text);
              final int? University_Roll =int.tryParse(_University_RollController.text);
              final String Course = _CourseController.text;
              final String Department = _DepartmentController.text;
              final String House_address = _House_addressController.text;
              final String phone_number = _phone_numberController.text;
              
              final String Blood_Group = _Blood_GroupController.text;
              if (University_Roll !=null){
                await _session
              .doc(documentSnapshot!.id)
             .update({
              "Name":Name,"college_Roll_number":college_Roll_number,"University_Roll":University_Roll,"Course":Course,
              "Department":Department,"House_address":House_address,"phone_number":phone_number,
              "Blood_Group":Blood_Group,
             });
             _NameController.text='';
             _college_Roll_numberController.text='';
             _University_RollController.text='';
             _CourseController.text='';
             _DepartmentController.text='';
             _House_addressController.text='';
             _phone_numberController.text='';
             
            _Blood_GroupController.text='';
            Navigator.of(context).pop();
               } }, child: const Text("Update")),
            ],
        
          ),
        ),
        );
      }
      
      );
  }
   // for delete operation
  Future<void> _delete(String productID) async {
    await _session.doc(productID).delete();

    // for snackBar
    ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("You have successfully deleted a itmes")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(title: const Text("Session 2022-2025"),),
      body: StreamBuilder(stream:_session.snapshots(), 
      builder:(context,AsyncSnapshot<QuerySnapshot> streamSnapshot) {
       if (streamSnapshot.hasData){
        return ListView.builder(
        itemCount: streamSnapshot.data!.docs.length,
        itemBuilder: (context, index){
         
          final DocumentSnapshot documentSnapshot = streamSnapshot.data!.docs[index];
          return Card(color: Colors.grey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          ),
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              
              ExpansionTile(
              
                title:Text(documentSnapshot['Name'].toString(),
                style: const TextStyle(
                   fontWeight: FontWeight.bold,
                      color: Colors.black,
                ),
                
                ),
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.blue,
                  child: Text(
                    documentSnapshot['college_Roll_number'].toString(),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      
                    ),
                  ),
                ),
               // ignore: sort_child_properties_last
               children: [
                ListTile(
                  title: const Align(alignment: Alignment.bottomLeft,
                    child: Text(
                      "University ROLL",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                    ),
                    
                  ),
                  subtitle:  Text(documentSnapshot['University_Roll'].toString()),
                ),
                ListTile(
                  title: const Align(alignment: Alignment.bottomLeft,
                    child: Text(
                      "Course",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                    ),
                    
                  ),
                  subtitle:  Text(documentSnapshot['Course'].toString()),
                ),
                ListTile(
                  title: const Align(alignment: Alignment.bottomLeft,
                    child: Text(
                      "Faculty",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                    ),
                    
                  ),
                  subtitle:  Text(documentSnapshot['Department'].toString()),
                ),
               
                    ListTile(
                      title: const Align(alignment: Alignment.bottomLeft,
                        child: Text(
                          "Address",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                        ),
                        
                      ),
                      subtitle:  Text(documentSnapshot['House_address'].toString()),
                    ),
                     ListTile(
                      title: const Align(alignment: Alignment.bottomLeft,
                        child: Text(
                          "phone_number",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                        ),
                        
                      ),
                      subtitle:  Text(documentSnapshot['phone_number'].toString()),
                    ),
                     
                    
                     ListTile(
                      title: const Align(alignment: Alignment.bottomLeft,
                        child: Text(
                          "Bloodgroup",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                        ),
                        
                      ),
                      subtitle:  Text(documentSnapshot['Blood_Group'].toString()),
                      
                    ),
                  
               ],
               
               onExpansionChanged: (isExpandad){
                // ignore: avoid_print
                print('Expanded: $isExpandad');
               },
                trailing: 
                 
                SizedBox(
                  
                  width: 100,
                  child: Row(
                    children: [
                      
                      IconButton(
                         alignment: Alignment.bottomLeft,
                        color: Colors.black,
                        onPressed: () =>_update(documentSnapshot), icon: const Icon(Icons.edit),),
                        IconButton(
                          alignment: Alignment.bottomRight,
                        color: Colors.black,
                        onPressed: () => _delete(documentSnapshot.id),icon: const Icon(Icons.delete),),
                    ],
                  ),
                ),
                ),
                
            ],
          )
            
          
            
          );
        }
        );
       }
       return const Center();
      }),
      floatingActionButton: FloatingActionButton(onPressed: () => _create(),
      
      backgroundColor:Colors.blue,
      child: const Icon(Icons.add),
      ),
    );
  }
}

// Text(documentSnapshot['Name'].toString()),
    
            // title: Container(
            //   child: const Column(
            //     children: [
            //       Align(alignment: Alignment.bottomLeft,
            //         child: Text(
            //           "Name",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
            //         ),
                    
            //       ),
                  
            //       Text(
            //         "uni",
            //         textAlign: TextAlign.right,
            //         style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black
                    
            //       ),
            //       ),
            //     ],
            //   ),
              
            // ),
            // subtitle: Column(
            //   children: [
            //     Text(documentSnapshot['Name'].toString()),
            //     Text(documentSnapshot['Universte_Roll number'].toString()),
            //   ],