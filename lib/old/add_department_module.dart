// import 'package:erp_main_project/constants/constants.dart';
// import 'package:flutter/material.dart';
//
// class TableRow1 extends StatelessWidget {
//   const TableRow1({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Table(
//         defaultVerticalAlignment: TableCellVerticalAlignment.middle,
//         defaultColumnWidth: FixedColumnWidth(200.0),
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
//                     child: Text("Department Details"),
//                   ),
//                 ),
//                 TableCell(
//                   child: Text(""),
//                 ),
//               ]),
//           TableRow(children: [
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("Department Unique Id"),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("Department Name"),
//               ),
//             ),
//           ]),
//           TableRow(children: [
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("Infy125"),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("Information technology"),
//               ),
//             ),
//           ]),
//           TableRow(children: [
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("CE854"),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("CE"),
//               ),
//             ),
//           ]),
//           TableRow(children: [
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("Sci8545"),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("Psychology"),
//               ),
//             ),
//           ]),
//           TableRow(children: [
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("C45223"),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("Chemical"),
//               ),
//             ),
//           ])
//         ]);
//   }
// }
//
// class TableRow2 extends StatelessWidget {
//   const TableRow2({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Table(
//         defaultVerticalAlignment: TableCellVerticalAlignment.middle,
//         defaultColumnWidth: FixedColumnWidth(200.0),
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
//                     child: Text("Degree Details"),
//                   ),
//                 ),
//                 TableCell(
//                   child: Text(""),
//                 ),
//               ]),
//           TableRow(children: [
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("Degree Unique Id"),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("Degree Name"),
//               ),
//             ),
//           ]),
//           TableRow(children: [
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("MC856221"),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("MCA"),
//               ),
//             ),
//           ]),
//           TableRow(children: [
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("BC4562"),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("BCA"),
//               ),
//             ),
//           ]),
//           TableRow(children: [
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("BSC1554657"),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("Bsc"),
//               ),
//             ),
//           ]),
//         ]);
//   }
// }
//
// class AddAddDepartmentForm extends StatefulWidget {
//   const AddAddDepartmentForm({Key? key}) : super(key: key);
//   @override
//   _AddAddDepartmentFormState createState() => _AddAddDepartmentFormState();
// }
//
// class _AddAddDepartmentFormState extends State<AddAddDepartmentForm> {
//   final TextEditingController departmentuid = new TextEditingController();
//   final TextEditingController departmentname = new TextEditingController();
//   final TextEditingController degreeuid = new TextEditingController();
//   final TextEditingController degreename = new TextEditingController();
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
//                     child: Text(" Class Routine ",
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
//                                           controller: departmentuid,
//                                           decoration: InputDecoration(
//                                             labelText: "Department Unique ID",
//                                           ),
//                                         ),
//                                         TextFormField(
//                                           controller: departmentname,
//                                           decoration: InputDecoration(
//                                             labelText: "Department Name",
//                                           ),
//                                         ),
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
//                                                   print(departmentuid.text +
//                                                       departmentname.text);
//                                                 },
//                                                 child: Text(
//                                                   "Add Department",
//                                                   style: TextStyle(
//                                                       fontSize: 17,
//                                                       color: Colors.white),
//                                                 ))),
//                                         TextFormField(
//                                           controller: degreeuid,
//                                           decoration: InputDecoration(
//                                             labelText: "Degree Unique ID",
//                                           ),
//                                         ),
//                                         TextFormField(
//                                           controller: degreename,
//                                           decoration: InputDecoration(
//                                             labelText: "Degree Name",
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
//                                                 onPressed: () {
//                                                   print(degreeuid.text +
//                                                       degreename.text);
//                                                 },
//                                                 child: Text(
//                                                   "Add Degree",
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
//                                       child: GridView.count(
//                                         mainAxisSpacing: 10,
//                                         crossAxisSpacing: 10,
//                                         shrinkWrap: true,
//                                         crossAxisCount:
//                                             (displayMobileLayout == true)
//                                                 ? 1
//                                                 : 2,
//                                         children: [
//                                           TableRow1(),
//                                           TableRow2(),
//                                         ],
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
