// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:erp_main_project/constants/constants.dart';
// import 'package:flutter/material.dart';
// import 'package:random_string/random_string.dart';
//
// class TableRow1 extends StatelessWidget {
//   const TableRow1({Key? key}) : super(key: key);
//   deletUniversity(String universityId) async {
//     await FirebaseFirestore.instance
//         .collection('Universities')
//         .doc(universityId)
//         .delete();
//   }
//
//   _displayDialog(BuildContext context, universityId) async {
//     return showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: Text('Delete Alert !!'),
//           content: Text("Are you sure want to delete this university ??"),
//           actions: <Widget>[
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 FlatButton(
//                   child:
//                       new Text('Cancel', style: TextStyle(color: Colors.red)),
//                   onPressed: () {
//                     Navigator.of(context).pop();
//                   },
//                 ),
//                 FlatButton(
//                   child: new Text('Delete',
//                       style: TextStyle(color: kPrimaryColor)),
//                   onPressed: () {
//                     deletUniversity(universityId);
//                     Navigator.of(context).pop();
//                   },
//                 ),
//               ],
//             )
//           ],
//         );
//       },
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size.width;
//     return StreamBuilder(
//       stream: FirebaseFirestore.instance
//           .collection("Universities")
//           .orderBy('universityName')
//           .snapshots(),
//       builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
//         if (snapshot.hasError) {
//           return Text("Something went Wrong !!");
//         }
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return CircularProgressIndicator(
//             backgroundColor: kPrimaryColor,
//             strokeWidth: 8,
//           );
//         }
//         return Table(
//           defaultVerticalAlignment: TableCellVerticalAlignment.middle,
//           defaultColumnWidth: size < 480
//               ? FixedColumnWidth(120.0)
//               : (size < 800)
//                   ? FixedColumnWidth(180.0)
//                   : FixedColumnWidth(250.0),
//           border: TableBorder(
//               horizontalInside: BorderSide(
//                   width: 1, color: Colors.black12, style: BorderStyle.solid)),
//           children: [
//             TableRow(
//                 decoration: BoxDecoration(
//                   color: kPrimaryColor.withOpacity(0.2),
//                 ),
//                 children: [
//                   TableCell(
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text("Manage University List"),
//                     ),
//                   ),
//                   TableCell(
//                     child: Text(""),
//                   ),
//                   TableCell(
//                     child: Text(""),
//                   ),
//                 ]),
//             TableRow(children: [
//               TableCell(
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Text(
//                     "University Unique ID",
//                     style: TextStyle(color: kPrimaryColor),
//                   ),
//                 ),
//               ),
//               TableCell(
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Text(
//                     "University",
//                     style: TextStyle(color: kPrimaryColor),
//                   ),
//                 ),
//               ),
//               TableCell(
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Center(
//                     child: Text(
//                       "Delete",
//                       style: TextStyle(color: kPrimaryColor),
//                     ),
//                   ),
//                 ),
//               ),
//             ]),
//             for (int i = 0; i < snapshot.data!.size.toInt(); i++) ...[
//               TableRow(
//                 children: [
//                   TableCell(
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text(
//                         snapshot.data!.docs[i]['universityCode'].toString(),
//                       ),
//                     ),
//                   ),
//                   TableCell(
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text(
//                         snapshot.data!.docs[i]['universityName'].toString(),
//                       ),
//                     ),
//                   ),
//                   Center(
//                     child: OutlinedButton.icon(
//                       onPressed: () {
//                         _displayDialog(
//                             context, snapshot.data!.docs[i]['universityId']);
//                       },
//                       icon: Icon(
//                         Icons.delete,
//                         color: Colors.red,
//                       ),
//                       label: Text(
//                         "Delete",
//                         style: TextStyle(color: Colors.red),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ],
//         );
//       },
//     );
//   }
// }
//
// class ManageUniversityForm extends StatefulWidget {
//   const ManageUniversityForm({Key? key}) : super(key: key);
//   @override
//   _ManageUniversityFormState createState() => _ManageUniversityFormState();
// }
//
// class _ManageUniversityFormState extends State<ManageUniversityForm> {
//   TextStyle gridviewtext = new TextStyle(fontSize: 16);
//   TextEditingController universityCode = new TextEditingController();
//   TextEditingController universityName = new TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//
//     final bool displayMobileLayout = MediaQuery.of(context).size.width < 800;
//     return Padding(
//       padding: EdgeInsets.all(16),
//       child: Center(
//         child: Card(
//           elevation: 4,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.all(
//               Radius.circular(25),
//             ),
//           ),
//           child: AnimatedContainer(
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(10),
//             ),
//             duration: Duration(milliseconds: 200),
//             height: size.height * 0.9,
//             width: 1400,
//             child: Center(
//                 child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(children: [
//                   Padding(
//                     padding: EdgeInsets.only(left: 20, right: 40, top: 20),
//                     child: InkWell(
//                       onTap: () {
//                         Navigator.pop(context);
//                       },
//                       child: Row(
//                         children: [
//                           Icon(Icons.arrow_back),
//                           Text(" Back ",
//                               style: TextStyle(color: kPrimaryColor)),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(left: 40, right: 40, top: 20),
//                     child: Text(" Manage University ",
//                         style: TextStyle(fontSize: 20, color: kPrimaryColor)),
//                   ),
//                 ]),
//                 Expanded(
//                     child: ListView(
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.all(20),
//                       child: Container(
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(7),
//                           ),
//                           width: MediaQuery.of(context).size.width,
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Container(
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(7),
//                                 ),
//                                 padding: (displayMobileLayout == true)
//                                     ? EdgeInsets.only(
//                                         left: 10, right: 10, bottom: 15)
//                                     : (MediaQuery.of(context).size.width < 1024)
//                                         ? EdgeInsets.only(
//                                             left: 15, right: 25, bottom: 20)
//                                         : EdgeInsets.only(
//                                             left: 15, right: 30, bottom: 25),
//                                 width: MediaQuery.of(context).size.width,
//                                 child: Card(
//                                   color: Color(0xfff8f9fa),
//                                   shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(15)),
//                                   elevation: 5,
//                                   child: Padding(
//                                     padding: EdgeInsets.all(20),
//                                     child: GridView.count(
//                                       childAspectRatio: MediaQuery.of(context)
//                                                   .size
//                                                   .width >
//                                               1024
//                                           ? (1 / 0.15)
//                                           : MediaQuery.of(context).size.width >
//                                                   640
//                                               ? (1 / 0.08)
//                                               : (1 / 0.15),
//                                       crossAxisCount: (displayMobileLayout ==
//                                               true)
//                                           ? 1
//                                           : (MediaQuery.of(context).size.width <
//                                                   1050)
//                                               ? 1
//                                               : 3,
//                                       mainAxisSpacing: 15,
//                                       crossAxisSpacing: 18,
//                                       shrinkWrap: true,
//                                       physics: BouncingScrollPhysics(),
//                                       children: [
//                                         TextFormField(
//                                           controller: universityCode,
//                                           decoration: InputDecoration(
//                                             //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                             labelText: "University Unique Id",
//                                           ),
//                                         ),
//                                         TextFormField(
//                                           controller: universityName,
//                                           decoration: InputDecoration(
//                                             //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                             labelText: "University Name",
//                                           ),
//                                         ),
//                                         Center(
//                                             child: FlatButton(
//                                                 height: 45,
//                                                 minWidth: 150,
//                                                 shape: RoundedRectangleBorder(
//                                                     borderRadius:
//                                                         BorderRadius.circular(
//                                                             18.0)),
//                                                 color: kPrimaryColor,
//                                                 onPressed: () async {
//                                                   String universityId =
//                                                       universityName.text[0]
//                                                               .toUpperCase() +
//                                                           randomNumeric(6);
//                                                   await FirebaseFirestore
//                                                       .instance
//                                                       .collection(
//                                                           'Universities')
//                                                       .doc(universityId)
//                                                       .set({
//                                                     'universityName':
//                                                         universityName.text,
//                                                     'universityCode':
//                                                         universityCode.text,
//                                                     'universityId':
//                                                         universityId,
//                                                   });
//                                                 },
//                                                 child: Text(
//                                                   "Save",
//                                                   style: TextStyle(
//                                                       fontSize: 17,
//                                                       color: Colors.white),
//                                                 )))
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Container(
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(7),
//                                 ),
//                                 padding: (displayMobileLayout == true)
//                                     ? EdgeInsets.only(
//                                         left: 10, right: 10, bottom: 15)
//                                     : (MediaQuery.of(context).size.width < 1024)
//                                         ? EdgeInsets.only(
//                                             left: 15, right: 25, bottom: 20)
//                                         : EdgeInsets.only(
//                                             left: 15, right: 30, bottom: 25),
//                                 width: MediaQuery.of(context).size.width,
//                                 child: Card(
//                                   shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(10)),
//                                   elevation: 5,
//                                   child: Padding(
//                                       padding: EdgeInsets.all(20),
//                                       child: SingleChildScrollView(
//                                         scrollDirection: Axis.horizontal,
//                                         child: TableRow1(),
//                                       )),
//                                 ),
//                               )
//                             ],
//                           )),
//                     ),
//                   ],
//                 ))
//               ],
//             )),
//           ),
//         ),
//       ),
//     );
//   }
// }
