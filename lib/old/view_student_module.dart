// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:dropdown_search/dropdown_search.dart';
// import 'package:erp_main_project/constants/constants.dart';
// import 'package:erp_main_project/constants/dropdown_values.dart';
// import 'package:erp_main_project/models/student_document_snap_to_student.dart';
// import 'package:erp_main_project/screens/student_profile.dart';
// import 'package:flutter/material.dart';
//
// class TableRow1 extends StatelessWidget {
//   TableRow tablerow(BuildContext context, String uid, String name,
//       String university, String course, String branch) {
//     return TableRow(children: [
//       TableRowInkWell(
//         onTap: () async {
//           var result = await FirebaseFirestore.instance
//               .collection('Users')
//               .doc(uid)
//               .get();
//           ConvertSnapshotToStudent student = ConvertSnapshotToStudent(result);
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => StudentProfile(
//                 student: student.getStudent()!,
//               ),
//             ),
//           );
//         },
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             name,
//             // style: TextStyle(color: kPrimaryColor),
//           ),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             university,
//           ),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             course,
//           ),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             branch,
//           ),
//         ),
//       ),
//     ]);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size.width;
//     return StreamBuilder(
//       stream: FirebaseFirestore.instance.collection("Users").snapshots(),
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
//         if (snapshot.hasData)
//           return Table(
//               defaultVerticalAlignment: TableCellVerticalAlignment.middle,
//               defaultColumnWidth: size < 480
//                   ? FixedColumnWidth(120.0)
//                   : (size < 800)
//                       ? FixedColumnWidth(180.0)
//                       : FixedColumnWidth(250.0),
//               border: TableBorder(
//                   horizontalInside: BorderSide(
//                       width: 1,
//                       color: Colors.black12,
//                       style: BorderStyle.solid)),
//               children: [
//                 TableRow(
//                     decoration: BoxDecoration(
//                       color: kPrimaryColor.withOpacity(0.2),
//                     ),
//                     children: [
//                       TableCell(
//                         child: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Text("Manage Student List"),
//                         ),
//                       ),
//                       TableCell(
//                         child: Text(""),
//                       ),
//                       TableCell(
//                         child: Text(""),
//                       ),
//                       TableCell(
//                         child: Text(""),
//                       ),
//                     ]),
//                 TableRow(children: [
//                   // TableCell(
//                   //   child: Padding(
//                   //     padding: const EdgeInsets.all(8.0),
//                   //     child: Text(
//                   //       "Student UID",
//                   //       style: TextStyle(color: kPrimaryColor),
//                   //     ),
//                   //   ),
//                   // ),
//                   TableCell(
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text(
//                         "Student Name",
//                         style: TextStyle(color: kPrimaryColor),
//                       ),
//                     ),
//                   ),
//                   TableCell(
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text(
//                         "University",
//                         style: TextStyle(color: kPrimaryColor),
//                       ),
//                     ),
//                   ),
//                   TableCell(
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text(
//                         "Course",
//                         style: TextStyle(color: kPrimaryColor),
//                       ),
//                     ),
//                   ),
//                   TableCell(
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text(
//                         "Branch",
//                         style: TextStyle(color: kPrimaryColor),
//                       ),
//                     ),
//                   ),
//                 ]),
//                 for (var i = 0; i < snapshot.data!.size.toInt(); i++) ...[
//                   tablerow(
//                     context,
//                     snapshot.data!.docs[i]['uid'].toString(),
//                     snapshot.data!.docs[i]['firstName'].toString() +
//                         " " +
//                         snapshot.data!.docs[i]['middleName'].toString() +
//                         " " +
//                         snapshot.data!.docs[i]['lastName'].toString(),
//                     snapshot.data!.docs[i]['studentUniversity'].toString(),
//                     snapshot.data!.docs[i]['studentCourse'].toString(),
//                     snapshot.data!.docs[i]['studentBranch'].toString(),
//                   ),
//                 ],
//               ]);
//         return CircularProgressIndicator(
//           backgroundColor: kPrimaryColor,
//           strokeWidth: 8,
//         );
//       },
//     );
//   }
// }
//
// class ViewStudentForm extends StatefulWidget {
//   const ViewStudentForm({Key? key}) : super(key: key);
//   @override
//   _ViewStudentFormState createState() => _ViewStudentFormState();
// }
//
// class _ViewStudentFormState extends State<ViewStudentForm> {
//   TextStyle gridviewtext = new TextStyle(fontSize: 16);
//
//   String university = "";
//   String course = "";
//   String branch = "";
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
//                     child: Text(" Manage Student ",
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
//                                         DropdownSearch<String>(
//                                           mode: Mode.MENU,
//                                           //showSelectedItem: true,
//                                           items: Dropdown.university,
//                                           label: "Select University",
//                                           dropdownSearchDecoration:
//                                               InputDecoration(
//                                                   border: InputBorder.none),
//                                           // ...
//                                           //controller:d,
//                                           showSearchBox: true,
//                                           onChanged: (val) {
//                                             setState(() {
//                                               university = val!;
//                                             });
//                                           },
//                                         ),
//                                         DropdownSearch<String>(
//                                           mode: Mode.MENU,
//                                           //showSelectedItem: true,
//                                           items: Dropdown.course,
//                                           label: "Select Course",
//                                           dropdownSearchDecoration:
//                                               InputDecoration(
//                                                   border: InputBorder.none),
//                                           // ...
//                                           //controller:d,
//                                           showSearchBox: true,
//                                           onChanged: (val) {
//                                             setState(() {
//                                               course = val!;
//                                             });
//                                           },
//                                         ),
//                                         DropdownSearch<String>(
//                                           mode: Mode.MENU,
//                                           //showSelectedItem: true,
//                                           items: Dropdown.branch,
//                                           label: "Select Branch",
//                                           dropdownSearchDecoration:
//                                               InputDecoration(
//                                                   border: InputBorder.none),
//                                           // ...
//                                           //controller:d,
//                                           showSearchBox: true,
//                                           onChanged: (val) {
//                                             setState(() {
//                                               branch = val!;
//                                             });
//                                           },
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
