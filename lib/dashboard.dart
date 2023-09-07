import 'package:admanpanal/Appdrawer/sessin2022-2025.dart';
import 'package:admanpanal/Timetable.dart';
import 'package:admanpanal/appDrawers/collegenews.dart';
import 'package:admanpanal/appDrawers/events.dart';
import 'package:admanpanal/colorsceem.dart';
import 'package:admanpanal/courses.dart';
import 'package:admanpanal/result.dart';
import 'package:admanpanal/studant_Attandance.dart';
import 'package:admanpanal/student.dart';
import 'package:flutter/material.dart';


  


class AdminPanal extends StatefulWidget {
  const AdminPanal({super.key});

  @override
  State<AdminPanal> createState() => _AdminPanalState();
}

class _AdminPanalState extends State<AdminPanal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('School Admin Panel'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('Admin'),
              accountEmail: Text('admin@example.com'),
              currentAccountPicture: CircleAvatar(
                child: Icon(Icons.person),
              ),
            ),
          
           ExpansionTile(
           title: const Text("Students"),
           leading: const Icon(Icons.people),
           childrenPadding: const EdgeInsets.only(left: 50),
              children: [
                ExpansionTile(
                  title: const Text("Session2022_2025"),
           leading: const Icon(Icons.people),
           childrenPadding: const EdgeInsets.only(left: 20),
                  children: [
                    ListTile(
                      leading: const Icon(Icons.person),
                      title: const Text('Morning'),
                    
                      onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>
                                      Session2022_2025(),
                                    )
                                    );
                        // Handle students tap
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.person),
                      title: const Text('Eveing'),
                    
                      onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>
                                      Session2022_2025(),
                                    )
                                    );
                        // Handle students tap
                      },
                    ),
                  ],
                ),
                ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text('Session 2023_2026'),
                
                  onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>
                                 const Studentsec(),
                                )
                                );
                    // Handle students tap
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text('Session 2024_2027'),
                
                  onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>
                                 const Studentsec(),
                                )
                                );
                    // Handle students tap
                  },
                ),
                ListTile(
                  leading:  Icon(Icons.person),
                  title: Text('Session 2025_2027'),
                
                  onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>
                                 const Studentsec(),
                                )
                                );
                    // Handle students tap
                  },
                ),
              ],
            ),
              ListTile(
              leading: const Icon(Icons.event),
              title: const Text('Events'),
              onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>
                                 const Events(),
                                )
                                );
                // Handle dashboard tap
              },
            ),
            ListTile(
              leading: const Icon(Icons.newspaper),
              title: const Text('College news'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>
                                 const Collegenews(),
                                )
                                );
                // Handle courses tap
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                // Handle settings tap
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {
                // Handle logout tap
              },
            ),
          ],
        ),
      ),
  
  body:  Container(
         
    child: Container(
      child: Padding
      (
          padding: const EdgeInsets.all(10.0),
          // ignore: sort_child_properties_last
          child: Card(
            
            shadowColor: const Color.fromARGB(255, 97, 86, 86),
            elevation: 10,
            child: GridView(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10),children: [
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const timetble()));
                },
                child: Card(
                  shadowColor: const Color.fromARGB(255, 97, 86, 86),
            elevation: 15,
                  child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),color:kblue,),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Icon(Icons.calendar_today_rounded,size: 50,color: Colors.white,),
                    Text("Time Table",style: TextStyle(color: Colors.white,fontSize: 30,
                    
                    ),)
                  ],),
                  ),
                ),
              ),
             InkWell(
                 onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const attandance()));
                },
               child: Card(
                shadowColor: const Color.fromARGB(255, 97, 86, 86),
            elevation: 15,
                 child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),color:kpink,),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Icon(Icons.how_to_reg_rounded,size: 50,color: Colors.white,),
                    Text("Attandance",style: TextStyle(color: Colors.white,fontSize: 30),)
                  ],),
                  ),
               ),
             ),
              InkWell(
                  onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const ResultSec()));
                },
                child: Card(
                  shadowColor: const Color.fromARGB(255, 97, 86, 86),
            elevation: 25,
                  child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),color:korange,),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Icon(Icons.grading_rounded,size: 50,color: Colors.white,),
                    Text("Result",style: TextStyle(color: Colors.white,fontSize: 30),)
                  ],),
                  ),
                ),
              ),
              InkWell(
                  onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> courseSec()));
                },
                child: Card(
                  shadowColor: const Color.fromARGB(255, 97, 86, 86),
            elevation: 25,
                  child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),color: kpurple,),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Icon(Icons.book,size: 50,color: Colors.white,),
                    Text("course OutLine",textAlign: TextAlign.center, style: TextStyle(color: Colors.white,fontSize: 30),)
                  ],),
                  ),
                ),
              ),
            ],
            ),
          ),
        ),
    ),
      ),
  );}}
  
