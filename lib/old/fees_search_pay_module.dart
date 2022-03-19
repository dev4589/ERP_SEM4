// import 'package:erp_main_project/constants/constants.dart';
// import 'package:erp_main_project/constants/dropdown_values.dart';
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
//                     child: Text("Fees Payment List"),
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
//                   "Child Name",
//                   style: TextStyle(color: kPrimaryColor),
//                 ),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text(
//                   "Discount Code",
//                   style: TextStyle(color: kPrimaryColor),
//                 ),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text(
//                   "Discount Type",
//                   style: TextStyle(color: kPrimaryColor),
//                 ),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text(
//                   "Desription",
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
//                 child: Text("Class 1"),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                   padding: const EdgeInsets.all(8.0), child: Text("ZFD25012")),
//             ),
//             TableCell(
//               child: Padding(
//                   padding: const EdgeInsets.all(8.0), child: Text("Year")),
//             ),
//             TableCell(
//               child: Padding(
//                   padding: const EdgeInsets.all(8.0), child: Text("7500.00")),
//             ),
//             Center(
//               child: OutlinedButton.icon(
//                   onPressed: () {
//                     print("edit");
//                   },
//                   icon: Icon(Icons.edit),
//                   label: Text("Edit")),
//             ),
//             Center(
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
//           TableRow(children: [
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("Class 2 - 4"),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("REF85600"),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("7000.00"),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Text("Tuition Fees")),
//             ),
//             Center(
//               child: OutlinedButton.icon(
//                   onPressed: () {
//                     print("edit");
//                   },
//                   icon: Icon(Icons.edit),
//                   label: Text("Edit")),
//             ),
//             Center(
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
// class SearchFeesPaymentForm extends StatefulWidget {
//   const SearchFeesPaymentForm({Key? key}) : super(key: key);
//   @override
//   _SearchFeesPaymentFormState createState() => _SearchFeesPaymentFormState();
// }
//
// class _SearchFeesPaymentFormState extends State<SearchFeesPaymentForm> {
//   TextStyle gridviewtext = new TextStyle(fontSize: 16);
//   final TextEditingController search = new TextEditingController();
//   String class2 = "Select Class";
//   String section = "Select Section";
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
//                     child: Text(" Search Fees Payment ",
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
//                                         DropdownButton<String>(
//                                           borderRadius:
//                                               BorderRadius.circular(5),
//                                           hint: Text("Select Class"),
//                                           value: class2,
//                                           isExpanded: true,
//                                           items:
//                                               Dropdown.class3.map((String val) {
//                                             return DropdownMenuItem<String>(
//                                               value: val,
//                                               child: Text(val),
//                                             );
//                                           }).toList(),
//                                           onChanged: (String? num) async {
//                                             if (num != null) {
//                                               setState(() {
//                                                 class2 = num;
//                                               });
//                                             }
//                                           },
//                                         ),
//                                         DropdownButton<String>(
//                                           borderRadius:
//                                               BorderRadius.circular(5),
//                                           hint: Text("Select Section"),
//                                           value: section,
//                                           isExpanded: true,
//                                           items: Dropdown.section2
//                                               .map((String val) {
//                                             return DropdownMenuItem<String>(
//                                               value: val,
//                                               child: Text(val),
//                                             );
//                                           }).toList(),
//                                           onChanged: (String? num) async {
//                                             if (num != null) {
//                                               setState(() {
//                                                 section = num;
//                                               });
//                                             }
//                                           },
//                                         ),
//                                         TextFormField(
//                                           controller: search,
//                                           decoration: InputDecoration(
//                                               labelText: "Search",
//                                               hintText:
//                                                   "search Name,Admission no,Roll no"),
//                                         ),
//                                         if (MediaQuery.of(context).size.width >=
//                                             1200)
//                                           Text(""),
//                                         if (MediaQuery.of(context).size.width >=
//                                             1200)
//                                           Text(""),
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
//                                                   print("");
//                                                 },
//                                                 child: Text(
//                                                   "Search",
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
