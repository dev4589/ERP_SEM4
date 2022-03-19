// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:dropdown_search/dropdown_search.dart';
// import 'package:erp_main_project/constants/constants.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:random_string/random_string.dart';
//
// class TableRow1 extends StatelessWidget {
//   final String? universityId;
//   final String? courseId;
//   TableRow1({this.universityId, this.courseId});
//   TableRow tableRow(
//       {BuildContext? context,
//       String? universityName,
//       String? courseName,
//       String? branchName,
//       String? branchShortName,
//       String? courseId,
//       String? branchId,
//       String? universityId}) {
//     return TableRow(children: [
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(universityName ?? ''),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(courseName ?? ''),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(branchName ?? ''),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(branchShortName ?? ''),
//         ),
//       ),
//       Center(
//         child: OutlinedButton.icon(
//             onPressed: () {
//               print("edit");
//             },
//             icon: Icon(Icons.edit),
//             label: Text("Edit")),
//       ),
//       Center(
//         child: OutlinedButton.icon(
//           onPressed: () async {
//             await FirebaseFirestore.instance
//                 .collection('Universities')
//                 .doc(universityId)
//                 .collection('Courses')
//                 .doc(courseId)
//                 .collection('Branches')
//                 .doc(branchId)
//                 .delete();
//           },
//           icon: Icon(
//             Icons.delete,
//             color: Colors.red,
//           ),
//           label: Text(
//             "Delete",
//             style: TextStyle(color: Colors.red),
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
//         stream: FirebaseFirestore.instance
//             .collection('Universities')
//             .doc(universityId)
//             .collection('Courses')
//             .doc(courseId)
//             .collection('Branches')
//             .snapshots(),
//         builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
//           if (snapshot.hasError) {
//             return Text("Something went Wrong !!");
//           } else if (snapshot.connectionState == ConnectionState.waiting) {
//             return CircularProgressIndicator(
//               backgroundColor: kPrimaryColor,
//               strokeWidth: 8,
//             );
//           } else
//             return Table(
//                 defaultVerticalAlignment: TableCellVerticalAlignment.middle,
//                 defaultColumnWidth: size < 480
//                     ? FixedColumnWidth(120.0)
//                     : (size < 800)
//                         ? FixedColumnWidth(180.0)
//                         : FixedColumnWidth(200.0),
//                 border: TableBorder(
//                     horizontalInside: BorderSide(
//                         width: 1,
//                         color: Colors.black12,
//                         style: BorderStyle.solid)),
//                 children: [
//                   TableRow(
//                       decoration: BoxDecoration(
//                         color: kPrimaryColor.withOpacity(0.2),
//                       ),
//                       children: [
//                         TableCell(
//                           child: Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Text("Manage Branch List"),
//                           ),
//                         ),
//                         TableCell(
//                           child: Text(""),
//                         ),
//                         TableCell(
//                           child: Text(""),
//                         ),
//                         TableCell(
//                           child: Text(""),
//                         ),
//                         TableCell(
//                           child: Text(""),
//                         ),
//                         TableCell(
//                           child: Text(""),
//                         ),
//                       ]),
//                   TableRow(children: [
//                     TableCell(
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Text(
//                           "University",
//                           style: TextStyle(color: kPrimaryColor),
//                         ),
//                       ),
//                     ),
//                     TableCell(
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Text(
//                           "Course",
//                           style: TextStyle(color: kPrimaryColor),
//                         ),
//                       ),
//                     ),
//                     TableCell(
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Text(
//                           "Branch Name",
//                           style: TextStyle(color: kPrimaryColor),
//                         ),
//                       ),
//                     ),
//                     TableCell(
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Text(
//                           "Short Branch Name",
//                           style: TextStyle(color: kPrimaryColor),
//                         ),
//                       ),
//                     ),
//                     TableCell(
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Center(
//                           child: Text(
//                             "Edit",
//                             style: TextStyle(color: kPrimaryColor),
//                           ),
//                         ),
//                       ),
//                     ),
//                     TableCell(
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Center(
//                           child: Text(
//                             "Delete",
//                             style: TextStyle(color: kPrimaryColor),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ]),
//                   for (var i = 0; i < snapshot.data!.size.toInt(); i++) ...[
//                     tableRow(
//                       context: context,
//                       universityName:
//                           snapshot.data!.docs[i]['universityName'].toString(),
//                       courseName:
//                           snapshot.data!.docs[i]['courseName'].toString(),
//                       branchShortName:
//                           snapshot.data!.docs[i]['branchShortName'].toString(),
//                       courseId: snapshot.data!.docs[i]['courseId'].toString(),
//                       universityId:
//                           snapshot.data!.docs[i]['universityId'].toString(),
//                       branchName:
//                           snapshot.data!.docs[i]['branchName'].toString(),
//                       branchId: snapshot.data!.docs[i]['branchId'].toString(),
//                     ),
//                   ],
//                   // tableRow('Gujarat University', 'MCA', 'IT',
//                   //     'Information Technology'),
//                   // tableRow('Gujarat Technical University', 'BE', 'CE',
//                   //     'Computer Engineering'),
//                   // tableRow('Gujarat Technical University', 'ME', 'CE',
//                   //     'Computer Engineering'),
//                 ]);
//         });
//   }
// }
//
// class ManageBranchForm extends StatefulWidget {
//   const ManageBranchForm({Key? key}) : super(key: key);
//   @override
//   _ManageBranchFormState createState() => _ManageBranchFormState();
// }
//
// class _ManageBranchFormState extends State<ManageBranchForm> {
//   TextStyle gridviewtext = new TextStyle(fontSize: 16);
//   TextEditingController shortbranch = new TextEditingController();
//   TextEditingController branch = new TextEditingController();
//   List<String> universities = [];
//   Map<String, String> universitiesId = {};
//   String viewUniversity = "";
//   String viewCourse = "";
//   List<String> courses = [];
//   Map<String, String> coursesId = {};
//   String university = "";
//   String course = "";
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
//                     child: Text(" Manage Branch ",
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
//                                             ? TextFormField(
//                                                 controller: branch,
//                                                 decoration: InputDecoration(
//                                                   //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                                   labelText: "Branch Name",
//                                                 ),
//                                               )
//                                             : Container(),
//                                         course != ''
//                                             ? TextFormField(
//                                                 controller: shortbranch,
//                                                 decoration: InputDecoration(
//                                                   //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                                   labelText:
//                                                       "Short Branch Name",
//                                                 ),
//                                               )
//                                             : Container(),
//                                         if (MediaQuery.of(context).size.width >=
//                                             1200)
//                                           Text(""),
//                                         if (MediaQuery.of(context).size.width >=
//                                             1200)
//                                           Text(""),
//                                         if (MediaQuery.of(context).size.width >=
//                                             1200)
//                                           Text(""),
//                                         course != ''
//                                             ? Center(
//                                                 child: FlatButton(
//                                                   height: 45,
//                                                   minWidth: 150,
//                                                   shape: RoundedRectangleBorder(
//                                                       borderRadius:
//                                                           BorderRadius.circular(
//                                                               18.0)),
//                                                   color: kPrimaryColor,
//                                                   onPressed: () async {
//                                                     String branchId = branch
//                                                             .text[0]
//                                                             .toUpperCase() +
//                                                         randomNumeric(6);
//                                                     await FirebaseFirestore
//                                                         .instance
//                                                         .collection(
//                                                             'Universities')
//                                                         .doc(universitiesId[
//                                                             university])
//                                                         .collection('Courses')
//                                                         .doc(coursesId[course])
//                                                         .collection('Branches')
//                                                         .doc(branchId)
//                                                         .set(
//                                                       {
//                                                         'branchName':
//                                                             branch.text,
//                                                         'branchShortName':
//                                                             shortbranch.text,
//                                                         'branchId': branchId,
//                                                         'universityName':
//                                                             university,
//                                                         'universityId':
//                                                             universitiesId[
//                                                                 university],
//                                                         'courseName': course,
//                                                         'courseId':
//                                                             coursesId[course],
//                                                       },
//                                                     );
//                                                   },
//                                                   child: Text(
//                                                     "Save",
//                                                     style: TextStyle(
//                                                         fontSize: 17,
//                                                         color: Colors.white),
//                                                   ),
//                                                 ),
//                                               )
//                                             : Container()
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
//                                   color: Colors.white,
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
//                                       // mainAxisSpacing: 9,
//                                       // crossAxisSpacing: 9,
//                                       shrinkWrap: true,
//                                       physics: BouncingScrollPhysics(),
//                                       children: [
//                                         Text(
//                                           'View Branch List',
//                                           style: TextStyle(
//                                             fontSize: 17,
//                                           ),
//                                         ),
//                                         if (MediaQuery.of(context).size.width >=
//                                             1200)
//                                           Text(""),
//                                         if (MediaQuery.of(context).size.width >=
//                                             1200)
//                                           Text(""),
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
//                                             } else if (snapshot
//                                                     .connectionState ==
//                                                 ConnectionState.waiting) {
//                                               return Center(
//                                                 child:
//                                                     CupertinoActivityIndicator(),
//                                               );
//                                             } else {
//                                               return DropdownSearch<String>(
//                                                 mode: Mode.MENU,
//                                                 // showSelectedItem: true,
//                                                 items: universities,
//                                                 selectedItem:
//                                                     viewUniversity == ''
//                                                         ? null
//                                                         : viewUniversity,
//
//                                                 label: "Select University",
//                                                 dropdownSearchDecoration:
//                                                     InputDecoration(
//                                                         border:
//                                                             InputBorder.none),
//                                                 // ...
//                                                 //controller:d,
//                                                 showSearchBox: true,
//
//                                                 onChanged: (val) {
//                                                   setState(
//                                                     () {
//                                                       viewUniversity = val!;
//                                                     },
//                                                   );
//                                                 },
//                                               );
//                                             }
//                                           },
//                                         ),
//                                         StreamBuilder(
//                                           stream: FirebaseFirestore.instance
//                                               .collection("Universities")
//                                               .doc(universitiesId[
//                                                   viewUniversity])
//                                               .collection('Courses')
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
//                                             if (snapshot.hasData) courses = [];
//                                             coursesId = {};
//                                             for (int i = 0;
//                                                 i < snapshot.data!.size.toInt();
//                                                 i++) {
//                                               DocumentSnapshot snap =
//                                                   snapshot.data!.docs[i];
//                                               courses.add(snap['courseName']
//                                                   .toString());
//                                               coursesId[snap['courseName']] =
//                                                   snap['courseId'];
//                                             }
//                                             return DropdownSearch<String>(
//                                               mode: Mode.MENU,
//                                               // showSelectedItem: true,
//                                               items: courses,
//                                               selectedItem: viewCourse == ''
//                                                   ? null
//                                                   : viewCourse,
//
//                                               label: "Select Course",
//                                               dropdownSearchDecoration:
//                                                   InputDecoration(
//                                                       border: InputBorder.none),
//                                               // ...
//                                               //controller:d,
//                                               showSearchBox: true,
//
//                                               onChanged: (val) {
//                                                 setState(
//                                                   () {
//                                                     viewCourse = val!;
//                                                   },
//                                                 );
//                                               },
//                                             );
//                                           },
//                                         )
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
//                                         child: TableRow1(
//                                           universityId:
//                                               universitiesId[viewUniversity],
//                                           courseId: coursesId[viewCourse],
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
