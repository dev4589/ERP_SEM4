// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:dropdown_search/dropdown_search.dart';
// import 'package:erp_main_project/constants/constants.dart';
// import 'package:erp_main_project/constants/dropdown_values.dart';
// import 'package:flutter/cupertino.dart';
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
//                 : FixedColumnWidth(200.0),
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
//                     child: Text("Manage Semester List"),
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
//                   "University",
//                   style: TextStyle(color: kPrimaryColor),
//                 ),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text(
//                   "Course",
//                   style: TextStyle(color: kPrimaryColor),
//                 ),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text(
//                   "Branch",
//                   style: TextStyle(color: kPrimaryColor),
//                 ),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text(
//                   "Semester",
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
//                 child: Text("Gujarat University"),
//               ),
//             ),
//             TableCell(
//               child: Padding(
//                   padding: const EdgeInsets.all(8.0), child: Text("BCA")),
//             ),
//             TableCell(
//               child: Padding(
//                   padding: const EdgeInsets.all(8.0), child: Text("IT")),
//             ),
//             TableCell(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("Sem 1"),
//               ),
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
// class ManageSemesterForm extends StatefulWidget {
//   const ManageSemesterForm({Key? key}) : super(key: key);
//   @override
//   _ManageSemesterFormState createState() => _ManageSemesterFormState();
// }
//
// class _ManageSemesterFormState extends State<ManageSemesterForm> {
//   TextStyle gridviewtext = new TextStyle(fontSize: 16);
//   TextEditingController uniqueid = new TextEditingController();
//   String university = "";
//   String intervals = "";
//
//   List<String> universities = [];
//   Map<String, String> universitiesId = {};
//   String viewUniversity = "";
//   String viewCourse = "";
//   List<String> courses = [];
//   Map<String, String> coursesId = {};
//   List<String> branches = [];
//   Map<String, String> branchesId = {};
//   String course = "";
//   String branch = "";
//   String sem = "";
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
//                     child: Text(" Manage Semester",
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
//                                         StreamBuilder(
//                                           stream: FirebaseFirestore.instance
//                                               .collection("Universities")
//                                               .snapshots(),
//                                           builder: (BuildContext context,
//                                               AsyncSnapshot<QuerySnapshot>
//                                                   snapshot) {
//                                             if (snapshot.hasError) {
//                                               return Text(
//                                                   "Something went Wrong !!");
//                                             }
//                                             if (snapshot.connectionState ==
//                                                 ConnectionState.waiting) {
//                                               return Center(
//                                                 child:
//                                                     CupertinoActivityIndicator(),
//                                               );
//                                             }
//                                             if (snapshot.hasData)
//                                               for (int i = 0;
//                                                   i <
//                                                       snapshot.data!.size
//                                                           .toInt();
//                                                   i++) {
//                                                 DocumentSnapshot snap =
//                                                     snapshot.data!.docs[i];
//                                                 universities.add(
//                                                     snap['universityName']
//                                                         .toString());
//                                                 universitiesId[snap[
//                                                         'universityName']] =
//                                                     snap['universityId'];
//                                               }
//
//                                             return DropdownSearch<String>(
//                                               mode: Mode.MENU,
//                                               // showSelectedItem: true,
//                                               items: universities,
//                                               selectedItem: university == ''
//                                                   ? null
//                                                   : university,
//                                               label: "Select University",
//                                               dropdownSearchDecoration:
//                                                   InputDecoration(
//                                                       border: InputBorder.none),
//                                               // ...
//                                               //controller:d,
//                                               showSearchBox: true,
//                                               onChanged: (val) {
//                                                 university = val!;
//                                                 setState(() {});
//                                               },
//                                             );
//                                           },
//                                         ),
//                                         university != ''
//                                             ? StreamBuilder(
//                                                 stream: FirebaseFirestore
//                                                     .instance
//                                                     .collection("Universities")
//                                                     .doc(universitiesId[
//                                                         university])
//                                                     .collection('Courses')
//                                                     .snapshots(),
//                                                 builder: (BuildContext context,
//                                                     AsyncSnapshot<QuerySnapshot>
//                                                         snapshot) {
//                                                   if (snapshot.hasError) {
//                                                     return Text(
//                                                         "Something went Wrong !!");
//                                                   }
//                                                   if (snapshot
//                                                           .connectionState ==
//                                                       ConnectionState.waiting) {
//                                                     return Center(
//                                                       child:
//                                                           CupertinoActivityIndicator(),
//                                                     );
//                                                   }
//                                                   if (snapshot.hasData)
//                                                     courses = [];
//                                                   coursesId = {};
//                                                   for (int i = 0;
//                                                       i <
//                                                           snapshot.data!.size
//                                                               .toInt();
//                                                       i++) {
//                                                     DocumentSnapshot snap =
//                                                         snapshot.data!.docs[i];
//                                                     courses.add(
//                                                         snap['courseName']
//                                                             .toString());
//                                                     coursesId[snap[
//                                                             'courseName']] =
//                                                         snap['courseId'];
//                                                   }
//
//                                                   return DropdownSearch<String>(
//                                                     mode: Mode.MENU,
//                                                     // showSelectedItem: true,
//                                                     items: courses,
//                                                     selectedItem: course == ''
//                                                         ? null
//                                                         : course,
//                                                     label: "Select Course",
//                                                     dropdownSearchDecoration:
//                                                         InputDecoration(
//                                                             border: InputBorder
//                                                                 .none),
//                                                     // ...
//                                                     //controller:d,
//                                                     showSearchBox: true,
//                                                     onChanged: (val) {
//                                                       course = val!;
//                                                       setState(() {});
//                                                     },
//                                                   );
//                                                 },
//                                               )
//                                             : Container(),
//                                         course != ''
//                                             ? StreamBuilder(
//                                                 stream: FirebaseFirestore
//                                                     .instance
//                                                     .collection("Universities")
//                                                     .doc(universitiesId[
//                                                         university])
//                                                     .collection('Courses')
//                                                     .doc(coursesId[course])
//                                                     .collection('Branches')
//                                                     .snapshots(),
//                                                 builder: (BuildContext context,
//                                                     AsyncSnapshot<QuerySnapshot>
//                                                         snapshot) {
//                                                   if (snapshot.hasError) {
//                                                     return Text(
//                                                         "Something went Wrong !!");
//                                                   }
//                                                   if (snapshot
//                                                           .connectionState ==
//                                                       ConnectionState.waiting) {
//                                                     return Center(
//                                                       child:
//                                                           CupertinoActivityIndicator(),
//                                                     );
//                                                   }
//                                                   if (snapshot.hasData)
//                                                     branches = [];
//                                                   branchesId = {};
//                                                   for (int i = 0;
//                                                       i <
//                                                           snapshot.data!.size
//                                                               .toInt();
//                                                       i++) {
//                                                     DocumentSnapshot snap =
//                                                         snapshot.data!.docs[i];
//                                                     branches.add(
//                                                         snap['branchName']
//                                                             .toString());
//                                                     branchesId[snap[
//                                                             'branchName']] =
//                                                         snap['branchId'];
//                                                   }
//
//                                                   return DropdownSearch<String>(
//                                                     mode: Mode.MENU,
//                                                     // showSelectedItem: true,
//                                                     items: branches,
//                                                     selectedItem: branch == ''
//                                                         ? null
//                                                         : branch,
//                                                     label: "Select Branch",
//                                                     dropdownSearchDecoration:
//                                                         InputDecoration(
//                                                             border: InputBorder
//                                                                 .none),
//                                                     // ...
//                                                     //controller:d,
//                                                     showSearchBox: true,
//                                                     onChanged: (val) {
//                                                       branch = val!;
//                                                       setState(() {});
//                                                     },
//                                                   );
//                                                 },
//                                               )
//                                             : Container(),
//                                         branch != ''
//                                             ? DropdownSearch<String>(
//                                                 mode: Mode.MENU,
//                                                 //showSelectedItem: true,
//                                                 items: Dropdown.sem,
//                                                 label: "Select Semester",
//                                                 dropdownSearchDecoration:
//                                                     InputDecoration(
//                                                         border:
//                                                             InputBorder.none),
//                                                 // ...
//                                                 //controller:d,
//                                                 showSearchBox: true,
//                                                 onChanged: (val) {
//                                                   setState(() {
//                                                     university = val!;
//                                                   });
//                                                 },
//                                               )
//                                             : Container(),
//                                         branch != ''
//                                             ? DropdownSearch<String>(
//                                                 mode: Mode.MENU,
//                                                 //showSelectedItem: true,
//                                                 items: Dropdown.intervals,
//                                                 label: "Select Semester Intervals",
//                                                 dropdownSearchDecoration:
//                                                     InputDecoration(
//                                                         border:
//                                                             InputBorder.none),
//                                                 // ...
//                                                 //controller:d,
//                                                 showSearchBox: true,
//                                                 onChanged: (val) {
//                                                   setState(() {
//                                                     intervals = val!;
//                                                   });
//                                                 },
//                                               )
//                                             : Container(),
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
//
// // Code for Dropdown update without setstate use provider package
//
// //  await FirebaseFirestore.instance
//                                                   //   .collection("Universities")
//                                                   //   .doc(universitiesId[
//                                                   //       university])
//                                                   //   .collection('Courses')
//                                                   //   .get()
//                                                   //   .then((value) {
//                                                   // courses = [];
//                                                   // coursesId = {};
//                                                   // for (int i = 0;
//                                                   //     i < value.size.toInt();
//                                                   //     i++) {
//                                                   //   DocumentSnapshot snap =
//                                                   //       value.docs[i];
//                                                   //   courses.add(
//                                                   //       snap['courseName']
//                                                   //           .toString());
//                                                   //   coursesId[snap[
//                                                   //           'courseName']] =
//                                                   //       snap['courseId'];
//                                                   // }
//                                                   // print(courses);