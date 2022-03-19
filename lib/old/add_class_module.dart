// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:erp_main_project/constants/constants.dart';
// import 'package:flutter/material.dart';
//
// class Section extends StatelessWidget {
//   const Section({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size.width;
//     return Table(
//         defaultVerticalAlignment: TableCellVerticalAlignment.middle,
//         defaultColumnWidth: size < 480
//             ? FixedColumnWidth(60.0)
//             : (size < 800)
//                 ? FixedColumnWidth(120.0)
//                 : FixedColumnWidth(130.0),
//         border: TableBorder(
//             horizontalInside: BorderSide(
//                 width: 1, color: Colors.black12, style: BorderStyle.solid)),
//         children: [
//           TableRow(
//               decoration: BoxDecoration(
//                 color: kPrimaryColor.withOpacity(0.2),
//               ),
//               children: [
//                 TableCell(
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Text("Section List"),
//                   ),
//                 ),
//                 TableCell(
//                   child: Text(""),
//                 ),
//                 TableCell(
//                   child: Text(""),
//                 ),
//               ]),
//           TableRow(children: [
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text(
//                   "section",
//                   style: TextStyle(color: kPrimaryColor),
//                 ),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Center(
//                   child: Text(
//                     "Edit",
//                     style: TextStyle(color: kPrimaryColor),
//                   ),
//                 ),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Center(
//                   child: Text(
//                     "Delete",
//                     style: TextStyle(color: kPrimaryColor),
//                   ),
//                 ),
//               ),
//             ),
//           ]),
//           TableRow(children: [
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("A"),
//               ),
//             ),
//             Center(
//               child: OutlinedButton.icon(
//                   onPressed: () {
//                     print("s");
//                   },
//                   icon: Icon(Icons.edit),
//                   label: Text("Edit")),
//             ),
//             Center(
//               child: OutlinedButton.icon(
//                 onPressed: () {
//                   print("s");
//                 },
//                 icon: Icon(
//                   Icons.delete,
//                   color: Colors.red,
//                 ),
//                 label: Text(
//                   "Delete",
//                   style: TextStyle(color: Colors.red),
//                 ),
//               ),
//             ),
//           ]),
//           TableRow(children: [
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("B"),
//               ),
//             ),
//             Center(
//               child: OutlinedButton.icon(
//                   onPressed: () {
//                     print("s");
//                   },
//                   icon: Icon(Icons.edit),
//                   label: Text("Edit")),
//             ),
//             Center(
//               child: OutlinedButton.icon(
//                 onPressed: () {
//                   print("s");
//                 },
//                 icon: Icon(
//                   Icons.delete,
//                   color: Colors.red,
//                 ),
//                 label: Text(
//                   "Delete",
//                   style: TextStyle(color: Colors.red),
//                 ),
//               ),
//             ),
//           ]),
//         ]);
//   }
// }
//
// class TableRow1 extends StatelessWidget {
//   const TableRow1({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size.width;
//     return Table(
//         defaultVerticalAlignment: TableCellVerticalAlignment.middle,
//         defaultColumnWidth: size < 480
//             ? FixedColumnWidth(120.0)
//             : (size < 800)
//                 ? FixedColumnWidth(180.0)
//                 : FixedColumnWidth(250.0),
//         border: TableBorder(
//             horizontalInside: BorderSide(
//                 width: 1, color: Colors.black12, style: BorderStyle.solid)),
//         children: [
//           TableRow(
//               decoration: BoxDecoration(
//                 color: kPrimaryColor.withOpacity(0.2),
//               ),
//               children: [
//                 TableCell(
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Text("Class List"),
//                   ),
//                 ),
//                 TableCell(
//                   child: Text(""),
//                 ),
//                 TableCell(
//                   child: Text(""),
//                 ),
//                 TableCell(
//                   child: Text(""),
//                 ),
//               ]),
//           TableRow(children: [
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text(
//                   "Class",
//                   style: TextStyle(color: kPrimaryColor),
//                 ),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text(
//                   "Section",
//                   style: TextStyle(color: kPrimaryColor),
//                 ),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Center(
//                   child: Text(
//                     "Edit",
//                     style: TextStyle(color: kPrimaryColor),
//                   ),
//                 ),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Center(
//                   child: Text(
//                     "Delete",
//                     style: TextStyle(color: kPrimaryColor),
//                   ),
//                 ),
//               ),
//             ),
//           ]),
//           TableRow(children: [
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("Juniear KG"),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Column(
//                   children: [
//                     Text("A"),
//                     Text("B"),
//                     Text("C"),
//                   ],
//                 ),
//               ),
//             ),
//             Center(
//               child: OutlinedButton.icon(
//                   onPressed: () {
//                     print("s");
//                   },
//                   icon: Icon(Icons.edit),
//                   label: Text("Edit")),
//             ),
//             Center(
//               child: OutlinedButton.icon(
//                 onPressed: () {
//                   print("s");
//                 },
//                 icon: Icon(
//                   Icons.delete,
//                   color: Colors.red,
//                 ),
//                 label: Text(
//                   "Delete",
//                   style: TextStyle(color: Colors.red),
//                 ),
//               ),
//             ),
//           ]),
//           TableRow(children: [
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("1st Class"),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Column(
//                   children: [
//                     Text("A"),
//                     Text("B"),
//                   ],
//                 ),
//               ),
//             ),
//             Center(
//               child: OutlinedButton.icon(
//                   onPressed: () {
//                     print("s");
//                   },
//                   icon: Icon(Icons.edit),
//                   label: Text("Edit")),
//             ),
//             Center(
//               child: OutlinedButton.icon(
//                 onPressed: () {
//                   print("s");
//                 },
//                 icon: Icon(
//                   Icons.delete,
//                   color: Colors.red,
//                 ),
//                 label: Text(
//                   "Delete",
//                   style: TextStyle(color: Colors.red),
//                 ),
//               ),
//             ),
//           ]),
//         ]);
//   }
// }
//
// class AddClassForm extends StatefulWidget {
//   const AddClassForm({Key? key}) : super(key: key);
//   @override
//   _AddClassFormState createState() => _AddClassFormState();
// }
//
// class _AddClassFormState extends State<AddClassForm> {
//   final TextEditingController section = new TextEditingController();
//   TextStyle gridviewtext = new TextStyle(fontSize: 16);
//
//   //insert data into firebase
//   CollectionReference sections =
//       FirebaseFirestore.instance.collection("section");
//   Future<void> insert_section() {
//     return sections
//         .add({'section': section.text})
//         .then((value) => print("Section added"))
//         .catchError((error) => print("Error : $error"));
//   }
//
//   final TextEditingController classname = new TextEditingController();
//   bool check1 = false;
//   bool check2 = false;
//   bool check3 = false;
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     final bool displayMobileLayout = MediaQuery.of(context).size.width < 800;
//     return Padding(
//       padding: EdgeInsets.all(size.height > 770
//           ? 64
//           : size.height > 670
//               ? 32
//               : 16),
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
//                     child: Text(" Add Class/Section ",
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
//                               GridView.count(
//                                 childAspectRatio: MediaQuery.of(context)
//                                             .size
//                                             .width >
//                                         1200
//                                     ? (1 / 0.60)
//                                     : MediaQuery.of(context).size.width > 640
//                                         ? (1 / 0.90)
//                                         : (1 / 0.85),
//                                 crossAxisCount: (displayMobileLayout == true)
//                                     ? 1
//                                     : (MediaQuery.of(context).size.width < 1050)
//                                         ? 2
//                                         : (MediaQuery.of(context).size.width <
//                                                 1200)
//                                             ? 2
//                                             : 2,
//                                 mainAxisSpacing: 0,
//                                 crossAxisSpacing: 18,
//                                 shrinkWrap: true,
//                                 children: [
//                                   Container(
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(7),
//                                     ),
//                                     padding: (displayMobileLayout == true)
//                                         ? EdgeInsets.only(
//                                             left: 10, right: 10, bottom: 15)
//                                         : (MediaQuery.of(context).size.width <
//                                                 1024)
//                                             ? EdgeInsets.only(
//                                                 left: 15, right: 25, bottom: 20)
//                                             : EdgeInsets.only(
//                                                 left: 15,
//                                                 right: 30,
//                                                 bottom: 25),
//                                     width: 500,
//                                     child: Card(
//                                       color: Color(0xfff8f9fa),
//                                       shape: RoundedRectangleBorder(
//                                           borderRadius:
//                                               BorderRadius.circular(15)),
//                                       elevation: 5,
//                                       child: Padding(
//                                         padding: EdgeInsets.all(20),
//                                         child: Column(
//                                           children: [
//                                             TextFormField(
//                                               controller: section,
//                                               decoration: InputDecoration(
//                                                   labelText: "Section",
//                                                   hintText:
//                                                       "section eq. A,B,C"),
//                                             ),
//                                             SizedBox(height: 20),
//                                             Align(
//                                                 alignment: Alignment.centerLeft,
//                                                 child: FlatButton(
//                                                     height: 45,
//                                                     minWidth: 200,
//                                                     shape:
//                                                         RoundedRectangleBorder(
//                                                             borderRadius:
//                                                                 BorderRadius
//                                                                     .circular(
//                                                                         18.0)),
//                                                     color: kPrimaryColor,
//                                                     onPressed: insert_section,
//                                                     child: Text(
//                                                       "Add Section",
//                                                       style: TextStyle(
//                                                           fontSize: 17,
//                                                           color: Colors.white),
//                                                     ))),
//                                           ],
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   Container(
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(7),
//                                     ),
//                                     padding: (displayMobileLayout == true)
//                                         ? EdgeInsets.only(
//                                             left: 10, right: 10, bottom: 15)
//                                         : (MediaQuery.of(context).size.width <
//                                                 1024)
//                                             ? EdgeInsets.only(
//                                                 left: 15, right: 25, bottom: 20)
//                                             : EdgeInsets.only(
//                                                 left: 15,
//                                                 right: 30,
//                                                 bottom: 25),
//                                     width: 600,
//                                     child: Card(
//                                       color: Color(0xfff8f9fa),
//                                       shape: RoundedRectangleBorder(
//                                           borderRadius:
//                                               BorderRadius.circular(15)),
//                                       elevation: 5,
//                                       child: Padding(
//                                         padding: EdgeInsets.all(20),
//                                         child: Column(
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           children: [
//                                             TextFormField(
//                                               controller: classname,
//                                               decoration: InputDecoration(
//                                                 labelText: "Class Name",
//                                               ),
//                                             ),
//                                             SizedBox(
//                                               height: 20,
//                                             ),
//                                             Text("Section : "),
//                                             SizedBox(
//                                               height: 5,
//                                             ),
//                                             Wrap(
//                                               direction: Axis.horizontal,
//                                               children: [
//                                                 Row(
//                                                   children: [
//                                                     Checkbox(
//                                                         value: check1,
//                                                         onChanged: (bool? val) {
//                                                           setState(() {
//                                                             check1 = val!;
//                                                           });
//                                                         }),
//                                                     Text("A"),
//                                                   ],
//                                                 ),
//                                                 Row(
//                                                   children: [
//                                                     Checkbox(
//                                                         value: check2,
//                                                         onChanged: (bool? val) {
//                                                           setState(() {
//                                                             check2 = val!;
//                                                           });
//                                                         }),
//                                                     Text("B"),
//                                                   ],
//                                                 ),
//                                                 Row(
//                                                   children: [
//                                                     Checkbox(
//                                                         value: check3,
//                                                         onChanged: (bool? val) {
//                                                           setState(() {
//                                                             check3 = val!;
//                                                           });
//                                                         }),
//                                                     Text("C"),
//                                                   ],
//                                                 ),
//                                               ],
//                                             ),
//                                             SizedBox(
//                                               height: 20,
//                                             ),
//                                             FlatButton(
//                                                 height: 45,
//                                                 minWidth: 200,
//                                                 shape: RoundedRectangleBorder(
//                                                     borderRadius:
//                                                         BorderRadius.circular(
//                                                             18.0)),
//                                                 color: kPrimaryColor,
//                                                 onPressed: () {
//                                                   print(classname.text +
//                                                       check1.toString() +
//                                                       check2.toString() +
//                                                       check3.toString());
//                                                 },
//                                                 child: Text(
//                                                   "Add Class",
//                                                   style: TextStyle(
//                                                       fontSize: 17,
//                                                       color: Colors.white),
//                                                 )),
//                                           ],
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
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
//                                         child: Row(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.start,
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           children: [
//                                             Section(),
//                                             SizedBox(width: 20),
//                                             TableRow1(),
//                                           ],
//                                         ),
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
