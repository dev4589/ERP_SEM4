// import 'package:erp_main_project/constants/constants.dart';
// import 'package:flutter/material.dart';
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
//                     child: Text("Section List"),
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
//                   "SLNo",
//                   style: TextStyle(color: kPrimaryColor),
//                 ),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text(
//                   "Subject Name",
//                   style: TextStyle(color: kPrimaryColor),
//                 ),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text(
//                   "Subject Type",
//                   style: TextStyle(color: kPrimaryColor),
//                 ),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text(
//                   "Subject Code",
//                   style: TextStyle(color: kPrimaryColor),
//                 ),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text(
//                   "Edit",
//                   style: TextStyle(color: kPrimaryColor),
//                 ),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text(
//                   "Delete",
//                   style: TextStyle(color: kPrimaryColor),
//                 ),
//               ),
//             ),
//           ]),
//           TableRow(children: [
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("1"),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("RDBMS"),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("Theory"),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("005"),
//               ),
//             ),
//             Align(
//               alignment: Alignment.topLeft,
//               child: OutlinedButton.icon(
//                   onPressed: () {
//                     print("delete");
//                   },
//                   icon: Icon(Icons.edit),
//                   label: Text("Edit")),
//             ),
//             Align(
//               alignment: Alignment.topLeft,
//               child: OutlinedButton.icon(
//                 onPressed: () {
//                   print("delete");
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
// class AddSubjectForm extends StatefulWidget {
//   const AddSubjectForm({Key? key}) : super(key: key);
//   @override
//   _AddSubjectFormState createState() => _AddSubjectFormState();
// }
//
// class _AddSubjectFormState extends State<AddSubjectForm> {
//   final TextEditingController sub_name = new TextEditingController();
//   final TextEditingController sub_code = new TextEditingController();
//   int _radioselected = -1;
//   String _radioval = "";
//   TextStyle gridviewtext = new TextStyle(fontSize: 16);
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//
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
//                       onTap: () {},
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
//                     child: Text(" Add Subject ",
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
//                                 width: 500,
//                                 child: Card(
//                                   color: Color(0xfff8f9fa),
//                                   shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(15)),
//                                   elevation: 5,
//                                   child: Padding(
//                                     padding: EdgeInsets.all(20),
//                                     child: Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         TextFormField(
//                                           controller: sub_name,
//                                           decoration: InputDecoration(
//                                             labelText: "Subject Name",
//                                           ),
//                                         ),
//                                         SizedBox(height: 20),
//                                         Wrap(
//                                           direction: Axis.vertical,
//                                           children: [
//                                             Row(children: [
//                                               Radio(
//                                                 value: 1,
//                                                 groupValue: _radioselected,
//                                                 onChanged: (value) {
//                                                   setState(() {
//                                                     _radioselected =
//                                                         value as int;
//                                                     _radioval = "Theory";
//                                                   });
//                                                 },
//                                               ),
//                                               Text("Theory")
//                                             ]),
//                                             Row(children: [
//                                               Radio(
//                                                 value: 2,
//                                                 groupValue: _radioselected,
//                                                 onChanged: (value) {
//                                                   setState(() {
//                                                     _radioselected =
//                                                         value as int;
//                                                     _radioval = "Practical";
//                                                   });
//                                                 },
//                                               ),
//                                               Text("Practical")
//                                             ])
//                                           ],
//                                         ),
//                                         SizedBox(height: 20),
//                                         TextFormField(
//                                           controller: sub_code,
//                                           decoration: InputDecoration(
//                                             labelText: "Subject Code",
//                                           ),
//                                         ),
//                                         SizedBox(height: 20),
//                                         Center(
//                                             child: FlatButton(
//                                                 height: 45,
//                                                 minWidth: 200,
//                                                 shape: RoundedRectangleBorder(
//                                                     borderRadius:
//                                                         BorderRadius.circular(
//                                                             18.0)),
//                                                 color: kPrimaryColor,
//                                                 onPressed: () {
//                                                   print(sub_name.text +
//                                                       sub_code.text +
//                                                       _radioval);
//                                                 },
//                                                 child: Text(
//                                                   "Add Subject",
//                                                   style: TextStyle(
//                                                       fontSize: 17,
//                                                       color: Colors.white),
//                                                 ))),
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
