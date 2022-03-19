// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:dropdown_search/dropdown_search.dart';
// import 'package:erp_main_project/constants/constants.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:random_string/random_string.dart';
//
// class TableRow1 extends StatelessWidget {
//   final String? universityId;
//   TableRow1(this.universityId);
//   TableRow tablerow(
//       {BuildContext? context,
//       String? universityName,
//       String? courseName,
//       String? courseShortName,
//       String? courseId,
//       String? universityId}) {
//     return TableRow(children: [
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(universityName!),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(courseName!),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(courseShortName!),
//         ),
//       ),
//       Center(
//         child: OutlinedButton.icon(
//             onPressed: () {
//               print(universityId);
//               print(courseId!);
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
//                 .delete();
//
//             print("delete");
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
//       stream: FirebaseFirestore.instance
//           .collection('Universities')
//           .doc(universityId)
//           .collection('Courses')
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
//         if (snapshot.hasData)
//           return Table(
//             defaultVerticalAlignment: TableCellVerticalAlignment.middle,
//             defaultColumnWidth: size < 480
//                 ? FixedColumnWidth(120.0)
//                 : (size < 800)
//                     ? FixedColumnWidth(180.0)
//                     : FixedColumnWidth(250.0),
//             border: TableBorder(
//               horizontalInside: BorderSide(
//                   width: 1, color: Colors.black12, style: BorderStyle.solid),
//             ),
//             children: [
//               TableRow(
//                 decoration: BoxDecoration(
//                   color: kPrimaryColor.withOpacity(0.2),
//                 ),
//                 children: [
//                   TableCell(
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text("Manage Course List"),
//                     ),
//                   ),
//                   TableCell(
//                     child: Text(""),
//                   ),
//                   TableCell(
//                     child: Text(""),
//                   ),
//                   TableCell(
//                     child: Text(""),
//                   ),
//                   TableCell(
//                     child: Text(""),
//                   ),
//                 ],
//               ),
//               TableRow(
//                 children: [
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
//                         "Course Name",
//                         style: TextStyle(color: kPrimaryColor),
//                       ),
//                     ),
//                   ),
//                   TableCell(
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text(
//                         "Course Short Name",
//                         style: TextStyle(color: kPrimaryColor),
//                       ),
//                     ),
//                   ),
//                   TableCell(
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Center(
//                         child: Text(
//                           "Edit",
//                           style: TextStyle(color: kPrimaryColor),
//                         ),
//                       ),
//                     ),
//                   ),
//                   TableCell(
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Center(
//                         child: Text(
//                           "Delete",
//                           style: TextStyle(color: kPrimaryColor),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               for (var i = 0; i < snapshot.data!.size.toInt(); i++) ...[
//                 tablerow(
//                   context: context,
//                   universityName:
//                       snapshot.data!.docs[i]['universityName'].toString(),
//                   courseName: snapshot.data!.docs[i]['courseName'].toString(),
//                   courseShortName:
//                       snapshot.data!.docs[i]['courseShortName'].toString(),
//                   courseId: snapshot.data!.docs[i]['courseId'].toString(),
//                   universityId:
//                       snapshot.data!.docs[i]['universityId'].toString(),
//                 ),
//               ],
//             ],
//           );
//         return CircularProgressIndicator(
//           backgroundColor: kPrimaryColor,
//           strokeWidth: 8,
//         );
//       },
//     );
//   }
// }
//
// class ManageCourseForm extends StatefulWidget {
//   const ManageCourseForm({Key? key}) : super(key: key);
//   @override
//   _ManageCourseFormState createState() => _ManageCourseFormState();
// }
//
// class _ManageCourseFormState extends State<ManageCourseForm> {
//   TextStyle gridviewtext = new TextStyle(fontSize: 16);
//   List<String> universities = [];
//   Map<String, String> universitiesId = {};
//   TextEditingController courseName = new TextEditingController();
//   TextEditingController courseShortName = new TextEditingController();
//   String university = "";
//   String viewUniversity = "";
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
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(children: [
//                     Padding(
//                       padding: EdgeInsets.only(left: 20, right: 40, top: 20),
//                       child: InkWell(
//                         onTap: () {
//                           Navigator.pop(context);
//                         },
//                         child: Row(
//                           children: [
//                             Icon(Icons.arrow_back),
//                             Text(" Back ",
//                                 style: TextStyle(color: kPrimaryColor)),
//                           ],
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.only(left: 40, right: 40, top: 20),
//                       child: Text(" Manage Course ",
//                           style: TextStyle(fontSize: 20, color: kPrimaryColor)),
//                     ),
//                   ]),
//                   Expanded(
//                     child: ListView(
//                       children: [
//                         Padding(
//                           padding: EdgeInsets.all(20),
//                           child: Container(
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(7),
//                             ),
//                             width: MediaQuery.of(context).size.width,
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Container(
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(7),
//                                   ),
//                                   padding: (displayMobileLayout == true)
//                                       ? EdgeInsets.only(
//                                           left: 10, right: 10, bottom: 15)
//                                       : (MediaQuery.of(context).size.width <
//                                               1024)
//                                           ? EdgeInsets.only(
//                                               left: 15, right: 25, bottom: 20)
//                                           : EdgeInsets.only(
//                                               left: 15, right: 30, bottom: 25),
//                                   width: MediaQuery.of(context).size.width,
//                                   child: Card(
//                                     color: Color(0xfff8f9fa),
//                                     shape: RoundedRectangleBorder(
//                                         borderRadius:
//                                             BorderRadius.circular(15)),
//                                     elevation: 5,
//                                     child: Padding(
//                                       padding: EdgeInsets.all(20),
//                                       child: GridView.count(
//                                         childAspectRatio:
//                                             MediaQuery.of(context).size.width >
//                                                     1024
//                                                 ? (1 / 0.15)
//                                                 : MediaQuery.of(context)
//                                                             .size
//                                                             .width >
//                                                         640
//                                                     ? (1 / 0.08)
//                                                     : (1 / 0.15),
//                                         crossAxisCount:
//                                             (displayMobileLayout == true)
//                                                 ? 1
//                                                 : (MediaQuery.of(context)
//                                                             .size
//                                                             .width <
//                                                         1050)
//                                                     ? 1
//                                                     : 3,
//                                         mainAxisSpacing: 15,
//                                         crossAxisSpacing: 18,
//                                         shrinkWrap: true,
//                                         physics: BouncingScrollPhysics(),
//                                         children: [
//                                           StreamBuilder(
//                                               stream: FirebaseFirestore.instance
//                                                   .collection("Universities")
//                                                   .snapshots(),
//                                               builder: (BuildContext context,
//                                                   AsyncSnapshot<QuerySnapshot>
//                                                       snapshot) {
//                                                 if (snapshot.hasError) {
//                                                   return Text(
//                                                       "Something went Wrong !!");
//                                                 }
//                                                 if (snapshot.connectionState ==
//                                                     ConnectionState.waiting) {
//                                                   return Center(
//                                                     child:
//                                                         CupertinoActivityIndicator(),
//                                                   );
//                                                 }
//                                                 if (snapshot.hasData)
//                                                   for (int i = 0;
//                                                       i <
//                                                           snapshot.data!.size
//                                                               .toInt();
//                                                       i++) {
//                                                     DocumentSnapshot snap =
//                                                         snapshot.data!.docs[i];
//                                                     universities.add(
//                                                         snap['universityName']
//                                                             .toString());
//                                                     universitiesId[snap[
//                                                             'universityName']] =
//                                                         snap['universityId'];
//                                                   }
//
//                                                 return DropdownSearch<String>(
//                                                   mode: Mode.MENU,
//                                                   // showSelectedItem: true,
//                                                   items: universities,
//                                                   label: "Select University",
//                                                   dropdownSearchDecoration:
//                                                       InputDecoration(
//                                                           border:
//                                                               InputBorder.none),
//                                                   // ...
//                                                   //controller:d,
//                                                   showSearchBox: true,
//                                                   onChanged: (val) {
//                                                     university = val!;
//                                                   },
//                                                 );
//                                               }),
//                                           TextFormField(
//                                             controller: courseName,
//                                             decoration: InputDecoration(
//                                               //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                               labelText: "Course Name",
//                                             ),
//                                           ),
//                                           TextFormField(
//                                             controller: courseShortName,
//                                             decoration: InputDecoration(
//                                               //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                               labelText: "Course Short Name",
//                                             ),
//                                           ),
//                                           if (MediaQuery.of(context)
//                                                   .size
//                                                   .width >=
//                                               1200)
//                                             Text(""),
//                                           if (MediaQuery.of(context)
//                                                   .size
//                                                   .width >=
//                                               1200)
//                                             Text(""),
//                                           Center(
//                                             child: FlatButton(
//                                               height: 45,
//                                               minWidth: 150,
//                                               shape: RoundedRectangleBorder(
//                                                   borderRadius:
//                                                       BorderRadius.circular(
//                                                           18.0)),
//                                               color: kPrimaryColor,
//                                               onPressed: () async {
//                                                 String courseId = courseName
//                                                         .text[0]
//                                                         .toUpperCase() +
//                                                     randomNumeric(6);
//                                                 await FirebaseFirestore.instance
//                                                     .collection('Universities')
//                                                     .doc(universitiesId[
//                                                         university])
//                                                     .collection('Courses')
//                                                     .doc(courseId)
//                                                     .set(
//                                                   {
//                                                     'courseName':
//                                                         courseName.text,
//                                                     'courseShortName':
//                                                         courseShortName.text,
//                                                     'universityId':
//                                                         universitiesId[
//                                                             university],
//                                                     'universityName':
//                                                         university,
//                                                     'courseId': courseId,
//                                                   },
//                                                 );
//                                               },
//                                               child: Text(
//                                                 "Save",
//                                                 style: TextStyle(
//                                                     fontSize: 17,
//                                                     color: Colors.white),
//                                               ),
//                                             ),
//                                           )
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 Container(
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(7),
//                                   ),
//                                   padding: (displayMobileLayout == true)
//                                       ? EdgeInsets.only(
//                                           left: 10, right: 10, bottom: 15)
//                                       : (MediaQuery.of(context).size.width <
//                                               1024)
//                                           ? EdgeInsets.only(
//                                               left: 15, right: 25, bottom: 20)
//                                           : EdgeInsets.only(
//                                               left: 15, right: 30, bottom: 25),
//                                   width: MediaQuery.of(context).size.width,
//                                   child: Card(
//                                     color: Colors.white,
//                                     shape: RoundedRectangleBorder(
//                                         borderRadius:
//                                             BorderRadius.circular(15)),
//                                     elevation: 5,
//                                     child: Padding(
//                                       padding: EdgeInsets.all(20),
//                                       child: GridView.count(
//                                         childAspectRatio:
//                                             MediaQuery.of(context).size.width >
//                                                     1024
//                                                 ? (1 / 0.15)
//                                                 : MediaQuery.of(context)
//                                                             .size
//                                                             .width >
//                                                         640
//                                                     ? (1 / 0.08)
//                                                     : (1 / 0.15),
//                                         crossAxisCount:
//                                             (displayMobileLayout == true)
//                                                 ? 1
//                                                 : (MediaQuery.of(context)
//                                                             .size
//                                                             .width <
//                                                         1050)
//                                                     ? 1
//                                                     : 3,
//                                         // mainAxisSpacing: 9,
//                                         // crossAxisSpacing: 9,
//                                         shrinkWrap: true,
//                                         physics: BouncingScrollPhysics(),
//                                         children: [
//                                           Text(
//                                             'View Degrees List',
//                                             style: TextStyle(
//                                               fontSize: 17,
//                                             ),
//                                           ),
//                                           if (MediaQuery.of(context)
//                                                   .size
//                                                   .width >=
//                                               1200)
//                                             Text(""),
//                                           if (MediaQuery.of(context)
//                                                   .size
//                                                   .width >=
//                                               1200)
//                                             Text(""),
//                                           StreamBuilder(
//                                             stream: FirebaseFirestore.instance
//                                                 .collection("Universities")
//                                                 .snapshots(),
//                                             builder: (BuildContext context,
//                                                 AsyncSnapshot<QuerySnapshot>
//                                                     snapshot) {
//                                               if (snapshot.hasError) {
//                                                 return Text(
//                                                     "Something went Wrong !!");
//                                               }
//                                               if (snapshot.connectionState ==
//                                                   ConnectionState.waiting) {
//                                                 return Center(
//                                                   child:
//                                                       CupertinoActivityIndicator(),
//                                                 );
//                                               }
//                                               if (snapshot.hasData)
//                                                 for (int i = 0;
//                                                     i <
//                                                         snapshot.data!.size
//                                                             .toInt();
//                                                     i++) {
//                                                   DocumentSnapshot snap =
//                                                       snapshot.data!.docs[i];
//                                                   universities.add(
//                                                       snap['universityName']
//                                                           .toString());
//                                                   universitiesId[snap[
//                                                           'universityName']] =
//                                                       snap['universityId'];
//                                                 }
//
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
//                                                   setState(() {
//                                                     viewUniversity = val!;
//                                                   });
//                                                 },
//                                               );
//                                             },
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 if (viewUniversity != '')
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
//                                     width: MediaQuery.of(context).size.width,
//                                     child: Card(
//                                       shape: RoundedRectangleBorder(
//                                           borderRadius:
//                                               BorderRadius.circular(10)),
//                                       elevation: 5,
//                                       child: Padding(
//                                         padding: EdgeInsets.all(20),
//                                         child: SingleChildScrollView(
//                                           scrollDirection: Axis.horizontal,
//                                           child: TableRow1(
//                                             universitiesId[viewUniversity],
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   )
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
