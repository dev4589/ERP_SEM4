// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:erp_main_project/constants/constants.dart';
// import 'package:erp_main_project/screens/assign_permission.dart';
// import 'package:flutter/material.dart';
//
// class TableRow1 extends StatelessWidget {
//   final CollectionReference role =
//       FirebaseFirestore.instance.collection('Roles');
//
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size.width;
//     return StreamBuilder(
//       stream: FirebaseFirestore.instance
//           .collection("Roles")
//           .orderBy('name')
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
//                       child: Text("Manage Role List"),
//                     ),
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
//                     "Role",
//                     style: TextStyle(color: kPrimaryColor),
//                   ),
//                 ),
//               ),
//               TableCell(
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Center(
//                     child: Text(
//                       "Assign Permission",
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
//                         snapshot.data!.docs[i]['name'].toString(),
//                       ),
//                     ),
//                   ),
//                   Center(
//                     child: OutlinedButton.icon(
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => AssignPermission(
//                               snapshot.data!.docs[i]['name'].toString(),
//                               snapshot.data!.docs[i]['pages'],
//                             ),
//                           ),
//                         );
//                       },
//                       icon: Icon(Icons.lock),
//                       label: Text("Assign Permission"),
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
// class AddRoleForm extends StatefulWidget {
//   const AddRoleForm({Key? key}) : super(key: key);
//   @override
//   _AddRoleFormState createState() => _AddRoleFormState();
// }
//
// class _AddRoleFormState extends State<AddRoleForm> {
//   TextStyle gridviewtext = new TextStyle(fontSize: 16);
//
//   TextEditingController role = new TextEditingController();
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
//                           Icon(
//                             Icons.arrow_back,
//                             color: kPrimaryColor,
//                           ),
//                           Text(" Back ",
//                               style: TextStyle(color: kPrimaryColor)),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(left: 40, right: 40, top: 20),
//                     child: Text(" Manage Role ",
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
//                                           controller: role,
//                                           maxLines: 3,
//                                           decoration: InputDecoration(
//                                             //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                             labelText: "Role",
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
//                                                   print('in this');
//                                                   await FirebaseFirestore
//                                                       .instance
//                                                       .collection('Roles')
//                                                       .doc(role.text)
//                                                       .set({
//                                                     'name': role.text,
//                                                     'pages': [],
//                                                   });
//                                                 },
//                                                 child: Text(
//                                                   "Save Role",
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
