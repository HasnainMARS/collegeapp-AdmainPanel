// class Session2022_2025 extends StatefulWidget {
//   const Session2022_2025({super.key});

//   @override
//   State<Session2022_2025> createState() => _Session2022_2025State();
// }

// class _Session2022_2025State extends State<Session2022_2025> {
//   var firestoreDB =FirebaseFirestore.instance.collection('session2022-2025').snapshots();
//    late TextEditingController nameInputController;
//    late TextEditingController titleInputController;
//    late TextEditingController descriptionInputController;

//   @override
//   void initState(){
//     super.initState();
//     nameInputController = TextEditingController();
//     titleInputController = TextEditingController();
//     descriptionInputController = TextEditingController();
//   }
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//          centerTitle: true,
//         title: const Text("Session 2022-2025"),
//         backgroundColor: kpink,
//         shadowColor: Colors.red,
//       ),
//       body: StreamBuilder(stream: firestoreDB, builder: (context,AsyncSnapshot  snapshot){
//         if(snapshot.data ==null) return  const CircularProgressIndicator();
//         return ListView.builder(
//         itemCount: snapshot.data.docs.length,
        
//         itemBuilder:(context,int index){
//           return CustumCard( snapshot: snapshot.data, index: index);
//         });
//       }
      
//       ),
//       floatingActionButton: FloatingActionButton(onPressed: (){
//         _showDialog(context);
//       },
//       child:const Icon(Icons.add),
//       ),
//     );
    
//   }
  


//  _showDialog(BuildContext context) {
//   showDialog(context: context, builder: (context)=> AlertDialog(
//     contentPadding: const EdgeInsets.all(10),
//     content:Column(
//       children: [
//         Text("Please Fill out the Form"),
       
//         Expanded(child: TextField(
//           autofocus: true,
//           autocorrect: true,
//           decoration: InputDecoration(labelText:"yOUR name" ),
//           controller:nameInputController,

//         ),
//         ),
//          Expanded(child: TextField(
//           autofocus: true,
//           autocorrect: true,
//           decoration: InputDecoration(labelText:"Title" ),
//           controller: titleInputController,
//         ),
//         ),
//          Expanded(child: TextField(
//           autofocus: true,
//           autocorrect: true,
//           decoration: InputDecoration(labelText:"Descriptin" ),
//           controller: descriptionInputController,

//         ),
//         ),
//       ],
//     ),
//     actions: [
//       TextButton(onPressed: (){
//         nameInputController.clear();
//         titleInputController.clear();
//         descriptionInputController.clear();
//         Navigator.pop(context);
//       }, child:Text("Cancel")
//       ),
//       TextButton(onPressed: (){
//         if(titleInputController.text.isNotEmpty && nameInputController.text.isNotEmpty && descriptionInputController.text.isNotEmpty);
//           FirebaseFirestore.instance.collection("session2022-2025").add({
//           "name":nameInputController.text,
//           "title":titleInputController.text,
//           "descriptin":descriptionInputController.text,
//           "timestamp": DateTime.now()
//         }).then((value) {
//           print(value.id);
//            nameInputController.clear();
//         titleInputController.clear();
//         descriptionInputController.clear();
//         Navigator.pop(context);
//         // ignore: invalid_return_type_for_catch_error
//         }).catchError((error)=> print(error));                  
//                            },
        
//        child:Text("Save"))
//     ],
//   ) );
// }}



// class CustumCard extends StatelessWidget {
// final QuerySnapshot snapshot;
// final int index;

//   const CustumCard({ required this.snapshot, required this.index}) :
//     super();

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     var timeToDate = DateTime.fromMillisecondsSinceEpoch(snapshot.docs[index]['timestamp'].seconds *1000);
//     var FormattedDate =  DateFormat("EEEE,MMM d").format(timeToDate);
//     var snapshotData= snapshot.docs[index];
//     var docid = snapshot.docs[index];

//     TextEditingController nameInputController= TextEditingController(text: snapshotData['name']);
//     TextEditingController descriptionInputController= TextEditingController(text: snapshotData['descriptin']);
//     TextEditingController titleInputController= TextEditingController(text: snapshotData['title']);
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Container(
//           height: 170,
//           child: Card(
//             elevation: 9,
//             child: Column(
//               children: [
//                 ListTile(
//                   title: Text(snapshot.docs[index]['title']),
//                   subtitle: Text(snapshot.docs[index]['descriptin']),
//                   leading: CircleAvatar(
//                     radius: 34,
//                     child: Text(snapshot.docs[index]['title'][0]),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       const Text("By:(snapshot.doc[index]['name'])"),
//                       Text(FormattedDate)
//                     ],
//                   ),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     IconButton(icon: Icon(FontAwesomeIcons.edit,size: 15,),onPressed: (){
//                       showDialog(context: context, builder: (context)=> AlertDialog(
//                         contentPadding: EdgeInsets.all(10),
//                         content: Column(
//                          children: [
//                            Text("Please Fill out the Form"),
       
//         Expanded(child: TextField(
//           autofocus: true,
//           autocorrect: true,
//           decoration: InputDecoration(labelText:"yOUR name" ),
//           controller:nameInputController,

//         ),
//         ),
//          Expanded(child: TextField(
//           autofocus: true,
//           autocorrect: true,
//           decoration: InputDecoration(labelText:"Title" ),
//           controller: titleInputController,
//         ),
//         ),
//          Expanded(child: TextField(
//           autofocus: true,
//           autocorrect: true,
//           decoration: InputDecoration(labelText:"Descriptin" ),
//           controller: descriptionInputController,

//         ),
//         ),
//       ]
    
      
//                         ),
//                         actions: [
//                            TextButton(onPressed: (){
//         nameInputController.clear();
//         titleInputController.clear();
//         descriptionInputController.clear();
//         Navigator.pop(context);
//       }, child:Text("Cancel")
//                            ),
//                            TextButton(onPressed: (){
//                             if(titleInputController.text.isNotEmpty && nameInputController.text.isNotEmpty && descriptionInputController.text.isNotEmpty);
//                             FirebaseFirestore.instance.collection("session2022-2025").doc(docid as String?).update({
//                               "name":nameInputController.text,
//                               "descriptin":descriptionInputController.text,
//                               "title":titleInputController.text,
//                             }).then((value){
//                               Navigator.pop(context);
//                             });
//                            }, child:Text("Update"))
//                         ],
//                       ));

//                     },),
//                     IconButton(icon: Icon(FontAwesomeIcons.trashCan,size: 15,),onPressed: () {
//                       var CollectionReference = FirebaseFirestore.instance.collection("session2022-2025");
//                        CollectionReference.doc(docid as String?).delete();
//                     },)
//                   ],
//                 )

//               ],
//             ),
//           ),
//         ),
//       ],
//     );

//   }}