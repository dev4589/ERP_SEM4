// import 'package:dropdown_search/dropdown_search.dart';
// import 'package:erp_main_project/constants/constants.dart';
// import 'package:erp_main_project/constants/dropdown_values.dart';
// import 'package:flutter/material.dart';
//
// class TableRow1 extends StatelessWidget {
//   const TableRow1({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Table(
//         columnWidths: {
//           //0: FixedColumnWidth(120.0),
//         },
//         defaultVerticalAlignment: TableCellVerticalAlignment.middle,
//         defaultColumnWidth: FixedColumnWidth(150.0),
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
//                     child: Text("Class Period"),
//                   ),
//                 ),
//                 TableCell(
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Text("Saturday"),
//                   ),
//                 ),
//                 TableCell(
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Text("Sunday"),
//                   ),
//                 ),
//                 TableCell(
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Text("Monday"),
//                   ),
//                 ),
//                 TableCell(
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Text("Tuesday"),
//                   ),
//                 ),
//                 TableCell(
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Text("Wednesday"),
//                   ),
//                 ),
//                 TableCell(
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Text("Thusday"),
//                   ),
//                 ),
//                 TableCell(
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Text("Friday"),
//                   ),
//                 ),
//               ]),
//           TableRow(children: [
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("9:00 to 10:00"),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("Weekend"),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("Weekend"),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("English"),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("Science"),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("Music"),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("English"),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("+"),
//               ),
//             ),
//           ]),
//           TableRow(children: [
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("10:00 to 11:00"),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("Weekend"),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("Weekend"),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("English"),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("Science"),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("Music"),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("English"),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("+"),
//               ),
//             ),
//           ]),
//           TableRow(children: [
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("11:00 to 12:00"),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("Weekend"),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("Weekend"),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("English"),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("Science"),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("Music"),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("English"),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("+"),
//               ),
//             ),
//           ]),
//           TableRow(children: [
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("12:00 to 1:00"),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("Weekend"),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("Weekend"),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("English"),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("Science"),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("Music"),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("English"),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("+"),
//               ),
//             ),
//           ])
//         ]);
//   }
// }
//
// class ClassTimeTableForm extends StatefulWidget {
//   const ClassTimeTableForm({Key? key}) : super(key: key);
//   @override
//   _ClassTimeTableFormState createState() => _ClassTimeTableFormState();
// }
//
// class _ClassTimeTableFormState extends State<ClassTimeTableForm> {
//   final TextEditingController startdate = new TextEditingController();
//   final TextEditingController endclassdate = new TextEditingController();
//   TextStyle gridviewtext = new TextStyle(fontSize: 16);
//   String class2 = "";
//   String section = "";
//
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
//                                           ? (1 / 0.13)
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
//                                       children: [
//                                         DropdownSearch<String>(
//                                           mode: Mode.MENU,
//                                           //showSelectedItem: true,
//                                           items: Dropdown.departmentclass,
//                                           label: "Select Department",
//                                           dropdownSearchDecoration:
//                                               InputDecoration(
//                                                   border: InputBorder.none),
//                                           // ...
//                                           //controller:d,
//                                           showSearchBox: true,
//                                           onChanged: (val) {
//                                             setState(() {
//                                               class2 = val!;
//                                             });
//                                           },
//                                         ),
//                                         DropdownSearch<String>(
//                                           mode: Mode.MENU,
//                                           //showSelectedItem: true,
//                                           items: Dropdown.class2,
//                                           label: "Select Degree",
//                                           dropdownSearchDecoration:
//                                               InputDecoration(
//                                                   border: InputBorder.none),
//                                           // ...
//                                           //controller:d,
//                                           showSearchBox: true,
//                                           onChanged: (val) {
//                                             setState(() {
//                                               class2 = val!;
//                                             });
//                                           },
//                                         ),
//                                         DropdownSearch<String>(
//                                           mode: Mode.MENU,
//                                           //showSelectedItem: true,
//                                           items: Dropdown.section,
//                                           label: "Select Section",
//                                           showSearchBox: true,
//                                           onChanged: (val) {
//                                             setState(() {
//                                               section = val!;
//                                             });
//                                           },
//                                           dropdownSearchDecoration:
//                                               InputDecoration(
//                                                   border: InputBorder.none),
//                                         ),
//                                         DropdownSearch<String>(
//                                           mode: Mode.MENU,
//                                           //showSelectedItem: true,
//                                           items: Dropdown.teacher,
//                                           label: "Select Teacher",
//                                           showSearchBox: true,
//                                           onChanged: (val) {
//                                             setState(() {
//                                               section = val!;
//                                             });
//                                           },
//                                           dropdownSearchDecoration:
//                                               InputDecoration(
//                                                   border: InputBorder.none),
//                                         ),
//                                         TextFormField(
//                                           controller: startdate,
//                                           readOnly: true,
//                                           decoration: InputDecoration(
//                                               //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                               labelText: "Start Date & Time",
//                                               hintText:
//                                                   "Date Format must be DD-MM-YYYY",
//                                               suffixIcon: IconButton(
//                                                   onPressed: () async {
//                                                     DateTime? date =
//                                                         DateTime(1900);
//                                                     FocusScope.of(context)
//                                                         .requestFocus(
//                                                             new FocusNode());
//                                                     date = await showDatePicker(
//                                                         helpText:
//                                                             "Select Date Of Admission",
//                                                         context: context,
//                                                         initialDate:
//                                                             DateTime.now(),
//                                                         firstDate:
//                                                             DateTime(1900),
//                                                         lastDate:
//                                                             DateTime.now());
//                                                     startdate.text = date!.day
//                                                             .toString() +
//                                                         "/" +
//                                                         date.month.toString() +
//                                                         "/" +
//                                                         date.year.toString();
//                                                   },
//                                                   icon: Icon(Icons
//                                                       .calendar_today_outlined))),
//                                         ),
//                                         TextFormField(
//                                           controller: endclassdate,
//                                           readOnly: true,
//                                           decoration: InputDecoration(
//                                               //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                               labelText: "End Date & Time",
//                                               hintText:
//                                                   "Date Format must be DD-MM-YYYY",
//                                               suffixIcon: IconButton(
//                                                   onPressed: () async {
//                                                     DateTime? date =
//                                                         DateTime(1900);
//                                                     FocusScope.of(context)
//                                                         .requestFocus(
//                                                             new FocusNode());
//                                                     date = await showDatePicker(
//                                                         helpText:
//                                                             "Select Date Of Admission",
//                                                         context: context,
//                                                         initialDate:
//                                                             DateTime.now(),
//                                                         firstDate:
//                                                             DateTime(1900),
//                                                         lastDate:
//                                                             DateTime.now());
//                                                     endclassdate.text = date!
//                                                             .day
//                                                             .toString() +
//                                                         "/" +
//                                                         date.month.toString() +
//                                                         "/" +
//                                                         date.year.toString();
//                                                   },
//                                                   icon: Icon(Icons
//                                                       .calendar_today_outlined))),
//                                         ),
//                                         if (MediaQuery.of(context).size.width >=
//                                             1024)
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
//                                                   print(class2 +
//                                                       section +
//                                                       startdate.text +
//                                                       endclassdate.text);
//
//                                                   // print(formno.text+admissiondate.text+adyear.text+name.text+fname.text+sname.text+mname.text+cno1.text+cno2.text+email.text+dob.text+attentedclass.text+gender+nosibbling.text+sphoto.text+address.text+pcode.text+foccupation.text+moccupation.text+reference.text+sources+previosschooldet.text+desc.text+childname.text);
//                                                 },
//                                                 child: Text(
//                                                   "Add Class",
//                                                   style: TextStyle(
//                                                       fontSize: 17,
//                                                       color: Colors.white),
//                                                 )))
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Card(
//                                 shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(10)),
//                                 elevation: 5,
//                                 child: Padding(
//                                     padding: EdgeInsets.all(20),
//                                     child: SingleChildScrollView(
//                                       scrollDirection: Axis.horizontal,
//                                       child: TableRow1(),
//                                       // row2,row3,row4
//                                     )),
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
