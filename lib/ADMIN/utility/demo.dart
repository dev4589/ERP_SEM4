// import 'package:flutter/material.dart';
// import 'dart:html';
// import 'dart:typed_data';
//
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker_web/image_picker_web.dart';
// import 'package:firebase_storage/firebase_storage.dart';
//
// import '../../constants/constants.dart';
//
// class Demo extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => _DemoState();
// }
//
// class _DemoState extends State<Demo> {
//   late final String documentId;
//
//   final _pickedImages = <Image>[];
//   String _imageInfo = '';
//
//   Future<void> _pickImage() async {
//     final fromPicker = await ImagePickerWeb.getImageAsWidget();
//     final infos = await ImagePickerWeb.getImageInfo;
//     final data = infos?.data;
//     if (fromPicker != null) {
//       setState(() {
//         _pickedImages.add(fromPicker);
//         _pickedImages.add(Image.memory(data!, semanticLabel: infos?.fileName));
//         _imageInfo = '${infos?.toJson()}';
//       });
//     }
//   }
//
//   late List<String> name;
//   void getName() {
//     FirebaseFirestore.instance
//         .collection('student_registration')
//         .get()
//         .then((QuerySnapshot querySnapshot) {
//       querySnapshot.docs.forEach((doc) {
//         name.add(doc["stud_name"]);
//       });
//     });
//   }
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     // data=getName();
//     getDataNew();
//
//   }
//   // Future<void> _getImgInfo() async {
//   //   final infos = await ImagePickerWeb.getImageInfo;
//   //   final data = infos?.data;
//   //   if (data != null) {
//   //     setState(() {
//   //       _pickedImages.add(Image.memory(data, semanticLabel: infos?.fileName));
//   //       _imageInfo = '${infos?.toJson()}';
//   //     });
//   //   }
//   // }
//
//   late DocumentSnapshot snapshot;
//
//   void getData() async {
//     //use a Async-await function to get the data
//     final data = await FirebaseFirestore.instance
//         .collection("student_registration")
//         .doc('1UkFdMfIyjrFeXJmsHXh')
//         .get(); //get the data
//     DocumentSnapshot snapshot = data;
//   }
//
//   // @override
//   // Widget build(BuildContext context) {
//   //   // CollectionReference users = FirebaseFirestore.instance.collection('users');
//   //
//   //   return Scaffold(
//   //     appBar: AppBar(
//   //       title: const Text('Sample 1'),
//   //     ),
//   //     body: Center(
//   //       // child: Column(
//   //       //     mainAxisAlignment: MainAxisAlignment.center,
//   //       //     crossAxisAlignment: CrossAxisAlignment.center,
//   //       //     mainAxisSize: MainAxisSize.min,
//   //       //     children: <Widget>[
//   //       //       Wrap(
//   //       //         // spacing: 15.0,
//   //       //         children: <Widget>[
//   //       //           AnimatedSwitcher(
//   //       //             duration: const Duration(milliseconds: 300),
//   //       //             switchInCurve: Curves.easeIn,
//   //       //             child: SizedBox(
//   //       //               width: 500,
//   //       //               height: 200,
//   //       //               child: _pickedImages.length > 0
//   //       //                   ? _pickedImages.first
//   //       //                   : Text("hello"),
//   //       //             ),
//   //       //           ),
//   //       //           Container(
//   //       //             height: 200,
//   //       //             width: 200,
//   //       //             child: Text(_imageInfo, overflow: TextOverflow.ellipsis),
//   //       //           ),
//   //       //         ],
//   //       //       ),
//   //       //       ButtonBar(alignment: MainAxisAlignment.center, children: <Widget>[
//   //       //         ElevatedButton(
//   //       //           onPressed: _pickImage,
//   //       //           child: const Text('Select Image'),
//   //       //         ),
//   //       //       ]),
//   //       //     ]),
//   //       // child: GetUserName("1UkFdMfIyjrFeXJmsHXh"),
//   //       child: ListView(
//   //           children: [
//   //             // GetUserName("1UkFdMfIyjrFeXJmsHXh"),
//   //             // Text(stud_reg("getlost")),
//   //             Text(snapshot.data().toString())
//   //           ]
//   //       ),
//   //     ),
//   //   );
//   // }
//   // // List<stud_reg> stud=[stud_reg("admit")];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(body: ListTile(
//     title: Text(""),//here error
//     ),);
//   }
//
//   dynamic data;
//
//   Future<dynamic> getDataNew() async {
//
//     final DocumentReference document =   FirebaseFirestore.instance.collection("student_registration").doc('1UkFdMfIyjrFeXJmsHXh');
//
//     await document.get().then<dynamic>(( DocumentSnapshot snapshot) async{
//       setState(() {
//         data =snapshot.data;
//       });
//     });
//   }
//   List<stud_reg> stud = [];
// }
//
// class GetUserName extends StatelessWidget {
//   final String documentId;
//
//   GetUserName(this.documentId);
//
//   @override
//   Widget build(BuildContext context) {
//     CollectionReference users =
//         FirebaseFirestore.instance.collection('student_registration');
//
//     return FutureBuilder<DocumentSnapshot>(
//       future: users.doc(documentId).get(),
//       builder:
//           (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
//         if (snapshot.hasError) {
//           return Text("Something went wrong");
//         }
//
//         if (snapshot.hasData && !snapshot.data!.exists) {
//           return Text("Document does not exist");
//         }
//
//         if (snapshot.connectionState == ConnectionState.done) {
//           Map<String, dynamic> data =
//               snapshot.data!.data() as Map<String, dynamic>;
//           stud_reg(data['status']);
//           return Text("Full Name: ${data['status']} ${data['stud_name']}");
//         }
//
//         return Text("loading");
//       },
//     );
//   }
// }
//
// class stud_reg {
//   String status;
//   stud_reg(this.status);
// }
//
// class ProductList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(),
//         body: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: <Widget>[
//               Container(
//                 decoration:
//                     BoxDecoration(border: Border.all(color: Colors.black)),
//                 child: ListTile(
//                   title: Text(""), //ok no errors.
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

//
// class Demo extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
// body: FutureBuilder<DocumentSnapshot>(
//           future: users.doc(documentId).get(),
//           builder:
//               (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
//
//             if (snapshot.hasError) {
//               return Text("Something went wrong");
//             }
//
//             if (snapshot.hasData && !snapshot.data!.exists) {
//               return Text("Document does not exist");
//             }
//
//             if (snapshot.connectionState == ConnectionState.done) {
//               Map<String, dynamic> data = snapshot.data!.data() as Map<String, dynamic>;
//               return Text("Full Name: ${data['status']} ${data['stud_name']}");
//             }
//
//             return Text("loading");
//           },
//         ),
//     );
//   }
// }
//
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:erp_sem4/constants/constants.dart';
//
// import 'package:flutter/material.dart';
//
// class TableRow1 extends StatelessWidget {
//   final Map<String, dynamic> map;
//   TableRow1(this.map);
//
//   @override
//   Widget build(BuildContext context) {
//     // Map<String,dynamic> map=data;
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
//                 color: Colors.blue.withOpacity(0.2),
//               ),
//               children: [
//                 TableCell(
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Text("Student Registeration List"),
//                   ),
//                 ),
//                 for (int i = 0; i < 48; i++) ...[
//                   TableCell(
//                     child: Text(""),
//                   ),
//                 ]
//               ]),
//           TableCells(),
//           TableCells2(map),
//           TableCells2(map),
//         ]);
//   }
//
// //title of table
//   TableRow TableCells() {
//     return TableRow(children: [
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             "Status",
//             style: TextStyle(color: kPrimaryColor),
//           ),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             "Student Name",
//             style: TextStyle(color: kPrimaryColor),
//           ),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             "Address",
//             style: TextStyle(color: kPrimaryColor),
//           ),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             "Mobile Number",
//             style: TextStyle(color: kPrimaryColor),
//           ),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             "Email Address",
//             style: TextStyle(color: kPrimaryColor),
//           ),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             "Date Of Birth",
//             style: TextStyle(color: kPrimaryColor),
//           ),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             "Birth Place",
//             style: TextStyle(color: kPrimaryColor),
//           ),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             "Academic Year",
//             style: TextStyle(color: kPrimaryColor),
//           ),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             "Blood Group",
//             style: TextStyle(color: kPrimaryColor),
//           ),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             "Gender",
//             style: TextStyle(color: kPrimaryColor),
//           ),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             "Nationality",
//             style: TextStyle(color: kPrimaryColor),
//           ),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             "Caste",
//             style: TextStyle(color: kPrimaryColor),
//           ),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             "Sub Caste",
//             style: TextStyle(color: kPrimaryColor),
//           ),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             "Non Creamylayer",
//             style: TextStyle(color: kPrimaryColor),
//           ),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             "Physically Handicapped",
//             style: TextStyle(color: kPrimaryColor),
//           ),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             "Minority",
//             style: TextStyle(color: kPrimaryColor),
//           ),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             "Qualifying Exam board",
//             style: TextStyle(color: kPrimaryColor),
//           ),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             "Qualifying Exam name",
//             style: TextStyle(color: kPrimaryColor),
//           ),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             "Qualifying Exam Percentage",
//             style: TextStyle(color: kPrimaryColor),
//           ),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             "Seat Number",
//             style: TextStyle(color: kPrimaryColor),
//           ),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             "Passing Year",
//             style: TextStyle(color: kPrimaryColor),
//           ),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             "State",
//             style: TextStyle(color: kPrimaryColor),
//           ),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             "GR Number",
//             style: TextStyle(color: kPrimaryColor),
//           ),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             "Gap Details",
//             style: TextStyle(color: kPrimaryColor),
//           ),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             "Degree",
//             style: TextStyle(color: kPrimaryColor),
//           ),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             "University",
//             style: TextStyle(color: kPrimaryColor),
//           ),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             "Branch",
//             style: TextStyle(color: kPrimaryColor),
//           ),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             "Shift",
//             style: TextStyle(color: kPrimaryColor),
//           ),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             "Year",
//             style: TextStyle(color: kPrimaryColor),
//           ),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             "Batch",
//             style: TextStyle(color: kPrimaryColor),
//           ),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             "Sub Batch",
//             style: TextStyle(color: kPrimaryColor),
//           ),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             "Father Name",
//             style: TextStyle(color: kPrimaryColor),
//           ),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             "Father's Mobile no",
//             style: TextStyle(color: kPrimaryColor),
//           ),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             "Father's Email address",
//             style: TextStyle(color: kPrimaryColor),
//           ),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             "Father's Office address",
//             style: TextStyle(color: kPrimaryColor),
//           ),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             "Father's Office Mobile no",
//             style: TextStyle(color: kPrimaryColor),
//           ),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             "Annual Income",
//             style: TextStyle(color: kPrimaryColor),
//           ),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             "Mother Name",
//             style: TextStyle(color: kPrimaryColor),
//           ),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             "Mother's Occupation",
//             style: TextStyle(color: kPrimaryColor),
//           ),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             "Mother's Education",
//             style: TextStyle(color: kPrimaryColor),
//           ),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             "Annual Income",
//             style: TextStyle(color: kPrimaryColor),
//           ),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             "Mother's Mobile no",
//             style: TextStyle(color: kPrimaryColor),
//           ),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             "Mother's Email id",
//             style: TextStyle(color: kPrimaryColor),
//           ),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             "Mother's Office Address",
//             style: TextStyle(color: kPrimaryColor),
//           ),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             "Mohter's Office Mobile no",
//             style: TextStyle(color: kPrimaryColor),
//           ),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             "Annual Income",
//             style: TextStyle(color: kPrimaryColor),
//           ),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             "Residential Address",
//             style: TextStyle(color: kPrimaryColor),
//           ),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             "Permanent Address",
//             style: TextStyle(color: kPrimaryColor),
//           ),
//         ),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             "Transport",
//             style: TextStyle(color: kPrimaryColor),
//           ),
//         ),
//       ),
//     ]);
//   }
//
// //real data
//   TableRow TableCells2(Map<String, dynamic> map) {
//     if (map['value'] == 0) {
//       return TableRow(children: [
//         TableCell(
//           child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(
//                 // "Admitted",
//                 map['status'],
//                 style: TextStyle(color: Colors.green),
//               )),
//         )
//       ]);
//     }
//     return TableRow(children: [
//       TableCell(
//         child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text(
//               // "Admitted",
//               map['status'],
//               style: TextStyle(color: Colors.green),
//             )),
//       ),
//       TableCell(
//         child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text("shyam rajeshbhai patel")),
//       ),
//       TableCell(
//         child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text(
//                 "468/8 city bunglows, Shyamal cross road,ahmedabad,380001")),
//       ),
//       TableCell(
//         child: Padding(
//             padding: const EdgeInsets.all(8.0), child: Text("8460785956")),
//       ),
//       TableCell(
//         child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text("shyam1234@gmail.com")),
//       ),
//       TableCell(
//         child: Padding(
//             padding: const EdgeInsets.all(8.0), child: Text("28/05/2000")),
//       ),
//       TableCell(
//         child: Padding(
//             padding: const EdgeInsets.all(8.0), child: Text("Ahmedabad")),
//       ),
//       TableCell(
//         child: Padding(padding: const EdgeInsets.all(8.0), child: Text("2021")),
//       ),
//       TableCell(
//         child: Padding(padding: const EdgeInsets.all(8.0), child: Text("A+")),
//       ),
//       TableCell(
//         child: Padding(padding: const EdgeInsets.all(8.0), child: Text("Male")),
//       ),
//       TableCell(
//         child:
//             Padding(padding: const EdgeInsets.all(8.0), child: Text("Indian")),
//       ),
//       TableCell(
//         child:
//             Padding(padding: const EdgeInsets.all(8.0), child: Text("Hindu")),
//       ),
//       TableCell(
//         child:
//             Padding(padding: const EdgeInsets.all(8.0), child: Text("Mochi")),
//       ),
//       TableCell(
//         child: Padding(padding: const EdgeInsets.all(8.0), child: Text("Yes")),
//       ),
//       TableCell(
//         child: Padding(padding: const EdgeInsets.all(8.0), child: Text("No")),
//       ),
//       TableCell(
//         child: Padding(padding: const EdgeInsets.all(8.0), child: Text("No")),
//       ),
//       TableCell(
//         child: Padding(
//             padding: const EdgeInsets.all(8.0), child: Text("Gujarat Board")),
//       ),
//       TableCell(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             "Qualifying Exam name",
//             style: TextStyle(color: kPrimaryColor),
//           ),
//         ),
//       ),
//       TableCell(
//         child: Padding(padding: const EdgeInsets.all(8.0), child: Text("73%")),
//       ),
//       TableCell(
//         child:
//             Padding(padding: const EdgeInsets.all(8.0), child: Text("G104650")),
//       ),
//       TableCell(
//         child: Padding(padding: const EdgeInsets.all(8.0), child: Text("2017")),
//       ),
//       TableCell(
//         child:
//             Padding(padding: const EdgeInsets.all(8.0), child: Text("Gujarat")),
//       ),
//       TableCell(
//         child: Padding(padding: const EdgeInsets.all(8.0), child: Text("1758")),
//       ),
//       TableCell(
//         child:
//             Padding(padding: const EdgeInsets.all(8.0), child: Text("No Gap")),
//       ),
//       TableCell(
//         child: Padding(padding: const EdgeInsets.all(8.0), child: Text("MCA")),
//       ),
//       TableCell(
//         child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text("Gujarat Tech. University")),
//       ),
//       TableCell(
//         child: Padding(padding: const EdgeInsets.all(8.0), child: Text("IT")),
//       ),
//       TableCell(
//         child: Padding(padding: const EdgeInsets.all(8.0), child: Text("Noon")),
//       ),
//       TableCell(
//         child: Padding(padding: const EdgeInsets.all(8.0), child: Text("2021")),
//       ),
//       TableCell(
//         child: Padding(padding: const EdgeInsets.all(8.0), child: Text("A")),
//       ),
//       TableCell(
//         child: Padding(padding: const EdgeInsets.all(8.0), child: Text("A3")),
//       ),
//       TableCell(
//         child: Padding(
//             padding: const EdgeInsets.all(8.0), child: Text("Rajesh bhai")),
//       ),
//       TableCell(
//         child: Padding(
//             padding: const EdgeInsets.all(8.0), child: Text("8460770855")),
//       ),
//       TableCell(
//         child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text("rajesh@gmail.com")),
//       ),
//       TableCell(
//         child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text("85/2 anand apartments")),
//       ),
//       TableCell(
//         child: Padding(
//             padding: const EdgeInsets.all(8.0), child: Text("7505633546")),
//       ),
//       TableCell(
//         child:
//             Padding(padding: const EdgeInsets.all(8.0), child: Text("5000000")),
//       ),
//       TableCell(
//         child: Padding(
//             padding: const EdgeInsets.all(8.0), child: Text("Mamta ben")),
//       ),
//       TableCell(
//         child:
//             Padding(padding: const EdgeInsets.all(8.0), child: Text("Teacher")),
//       ),
//       TableCell(
//         child: Padding(padding: const EdgeInsets.all(8.0), child: Text("B.ed")),
//       ),
//       TableCell(
//         child:
//             Padding(padding: const EdgeInsets.all(8.0), child: Text("150000")),
//       ),
//       TableCell(
//         child: Padding(
//             padding: const EdgeInsets.all(8.0), child: Text("1234567890")),
//       ),
//       TableCell(
//         child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text("mamta345@gmail.com")),
//       ),
//       TableCell(
//         child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text("Anupam school near Ak Society")),
//       ),
//       TableCell(
//         child: Padding(
//             padding: const EdgeInsets.all(8.0), child: Text("8432459620")),
//       ),
//       TableCell(
//         child:
//             Padding(padding: const EdgeInsets.all(8.0), child: Text("450000")),
//       ),
//       TableCell(
//         child: Padding(
//             padding: const EdgeInsets.all(8.0), child: Text("same as above")),
//       ),
//       TableCell(
//         child: Padding(
//             padding: const EdgeInsets.all(8.0), child: Text("same as above")),
//       ),
//       TableCell(
//         child: Padding(padding: const EdgeInsets.all(8.0), child: Text("yes")),
//       ),
//     ]);
//   }
// }
//
// class ShowDataForm extends StatefulWidget {
//   const ShowDataForm({Key? key}) : super(key: key);
//   @override
//   _ShowRegisterDataFormState createState() => _ShowRegisterDataFormState();
// }
//
// class _ShowRegisterDataFormState extends State<ShowDataForm> {
//   final String documentId = "1UkFdMfIyjrFeXJmsHXh";
//
//   TextStyle gridviewtext = new TextStyle(fontSize: 16);
//   final TextEditingController search = new TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     CollectionReference users =
//         FirebaseFirestore.instance.collection('student_registration');
//     // final Stream<QuerySnapshot> _usersStream = FirebaseFirestore.instance
//     //     .collection('student_registration')
//     //     .snapshots();
//
//     Size size = MediaQuery.of(context).size;
//
//     final bool displayMobileLayout = MediaQuery.of(context).size.width < 800;
//     return Scaffold(
//       body: Padding(
//         padding: EdgeInsets.all(size.height > 770
//             ? 64
//             : size.height > 670
//                 ? 32
//                 : 16),
//         child: Center(
//           child: Card(
//             elevation: 4,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.all(
//                 Radius.circular(25),
//               ),
//             ),
//             child: AnimatedContainer(
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               duration: Duration(milliseconds: 200),
//               height: size.height * 0.9,
//               width: 1400,
//               child: Center(
//                   child: Column(
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
//                       child: Text(" Student Registration Info ",
//                           style: TextStyle(fontSize: 20, color: kPrimaryColor)),
//                     ),
//                   ]),
//                   Expanded(
//                       child: ListView(
//                     children: [
//                       Padding(
//                         padding: EdgeInsets.all(20),
//                         child: Container(
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
//                                           TextFormField(
//                                             controller: search,
//                                             decoration: InputDecoration(
//                                                 labelText: "Search",
//                                                 hintText:
//                                                     "Search by Name,admission no,form id"),
//                                           ),
//                                           if (MediaQuery.of(context)
//                                                   .size
//                                                   .width >=
//                                               1200)
//                                             Text(""),
//                                           Center(
//                                               child: FlatButton(
//                                                   height: 45,
//                                                   minWidth: 150,
//                                                   shape: RoundedRectangleBorder(
//                                                       borderRadius:
//                                                           BorderRadius.circular(
//                                                               18.0)),
//                                                   color: kPrimaryColor,
//                                                   onPressed: () {
//                                                     print("");
//                                                   },
//                                                   child: Text(
//                                                     "Search",
//                                                     style: TextStyle(
//                                                         fontSize: 17,
//                                                         color: Colors.white),
//                                                   )))
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
//                                     shape: RoundedRectangleBorder(
//                                         borderRadius:
//                                             BorderRadius.circular(10)),
//                                     elevation: 5,
//                                     child: Padding(
//                                         padding: EdgeInsets.all(20),
//                                         child: SingleChildScrollView(
//                                           scrollDirection: Axis.horizontal,
//                                           // child: FutureBuilder<DocumentSnapshot>(
//                                           //   future: users.doc(documentId).get(),
//                                           //   builder:
//                                           //       (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
//                                           //
//                                           //     if (snapshot.hasError) {
//                                           //       return Text("Something went wrong");
//                                           //     }
//                                           //
//                                           //     if (snapshot.hasData && !snapshot.data!.exists) {
//                                           //       return Text("Document does not exist");
//                                           //     }
//                                           //
//                                           //     if (snapshot.connectionState == ConnectionState.done) {
//                                           //       Map<String, dynamic> data = snapshot.data!.data() as Map<String, dynamic>;
//                                           //       return TableRow1(data);
//                                           //     }
//                                           //
//                                           //     return Text("loading");
//                                           //   },
//                                           // ),
//                                           child: StreamBuilder<QuerySnapshot>(
//                                             stream: _usersStream,
//                                             builder: (BuildContext context,
//                                                 AsyncSnapshot<QuerySnapshot>
//                                                     snapshot) {
//                                               if (snapshot.hasError) {
//                                                 return Text(
//                                                     'Something went wrong');
//                                               }
//
//                                               if (snapshot.connectionState ==
//                                                   ConnectionState.waiting) {
//                                                 return Text("Loading");
//                                               }
//
//                                               snapshot.data!.docs.map(
//                                                   (DocumentSnapshot document) {
//                                                 Map<String, dynamic> data =
//                                                     document.data()!
//                                                         as Map<String, dynamic>;
//                                                 return TableRow1(data);
//                                               });
//                                               return TableRow1({"value": 0});
//                                             },
//                                           ),
//                                         )),
//                                   ),
//                                 )
//                               ],
//                             )),
//                       ),
//                     ],
//                   ))
//                 ],
//               )),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }






import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:erp_sem4/constants/constants.dart';

import 'package:flutter/material.dart';

class TableRow1 extends StatelessWidget {

  final List<Map<String,dynamic>> map;
  TableRow1(this.map);

  @override
  Widget build(BuildContext context) {
    // Map<String,dynamic> map=data;
    var size = MediaQuery.of(context).size.width;
    return Table(
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        defaultColumnWidth: size < 480
            ? FixedColumnWidth(120.0)
            : (size < 800)
            ? FixedColumnWidth(180.0)
            : FixedColumnWidth(250.0),
        border: TableBorder(
            horizontalInside: BorderSide(
                width: 1, color: Colors.black12, style: BorderStyle.solid)),
        children: [
          TableRow(
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.2),
              ),
              children: [
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Student Registeration List"),
                  ),
                ),
                for (int i = 0; i < 48; i++) ...[
                  TableCell(
                    child: Text(""),
                  ),
                ]
              ]),
          TableCells(),
          for(int i=0;i<map.length;i++)
            TableCells2(map[i]),
          // TableCells2(map),
        ]);
  }

//title of table
  TableRow TableCells() {
    return TableRow(children: [
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Status",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Student Name",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Address",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Mobile Number",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Email Address",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Date Of Birth",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Birth Place",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Academic Year",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Blood Group",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Gender",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Nationality",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Caste",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Sub Caste",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Non Creamylayer",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Physically Handicapped",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Minority",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Qualifying Exam board",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Qualifying Exam name",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Qualifying Exam Percentage",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Seat Number",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Passing Year",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "State",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "GR Number",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Gap Details",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Degree",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "University",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Branch",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Shift",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Year",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Batch",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Sub Batch",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Father Name",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Father's Mobile no",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Father's Email address",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Father's Office address",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Father's Office Mobile no",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Annual Income",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Mother Name",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Mother's Occupation",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Mother's Education",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Annual Income",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Mother's Mobile no",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Mother's Email id",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Mother's Office Address",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Mohter's Office Mobile no",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Annual Income",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Residential Address",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Permanent Address",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Transport",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
    ]);
  }

//real data
  TableRow TableCells2(Map<String, dynamic> map) {
    return TableRow(children: [
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              // "Admitted",
              map['status'],
              style: TextStyle(color: Colors.green),
            )),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text( map['stud_name'])),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                "468/8 city bunglows, Shyamal cross road,ahmedabad,380001")),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0), child: Text("8460785956")),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("shyam1234@gmail.com")),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0), child: Text("28/05/2000")),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0), child: Text("Ahmedabad")),
      ),
      TableCell(
        child: Padding(padding: const EdgeInsets.all(8.0), child: Text("2021")),
      ),
      TableCell(
        child: Padding(padding: const EdgeInsets.all(8.0), child: Text("A+")),
      ),
      TableCell(
        child: Padding(padding: const EdgeInsets.all(8.0), child: Text("Male")),
      ),
      TableCell(
        child:
        Padding(padding: const EdgeInsets.all(8.0), child: Text("Indian")),
      ),
      TableCell(
        child:
        Padding(padding: const EdgeInsets.all(8.0), child: Text("Hindu")),
      ),
      TableCell(
        child:
        Padding(padding: const EdgeInsets.all(8.0), child: Text("Mochi")),
      ),
      TableCell(
        child: Padding(padding: const EdgeInsets.all(8.0), child: Text("Yes")),
      ),
      TableCell(
        child: Padding(padding: const EdgeInsets.all(8.0), child: Text("No")),
      ),
      TableCell(
        child: Padding(padding: const EdgeInsets.all(8.0), child: Text("No")),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0), child: Text("Gujarat Board")),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Qualifying Exam name",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(padding: const EdgeInsets.all(8.0), child: Text("73%")),
      ),
      TableCell(
        child:
        Padding(padding: const EdgeInsets.all(8.0), child: Text("G104650")),
      ),
      TableCell(
        child: Padding(padding: const EdgeInsets.all(8.0), child: Text("2017")),
      ),
      TableCell(
        child:
        Padding(padding: const EdgeInsets.all(8.0), child: Text("Gujarat")),
      ),
      TableCell(
        child: Padding(padding: const EdgeInsets.all(8.0), child: Text("1758")),
      ),
      TableCell(
        child:
        Padding(padding: const EdgeInsets.all(8.0), child: Text("No Gap")),
      ),
      TableCell(
        child: Padding(padding: const EdgeInsets.all(8.0), child: Text("MCA")),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Gujarat Tech. University")),
      ),
      TableCell(
        child: Padding(padding: const EdgeInsets.all(8.0), child: Text("IT")),
      ),
      TableCell(
        child: Padding(padding: const EdgeInsets.all(8.0), child: Text("Noon")),
      ),
      TableCell(
        child: Padding(padding: const EdgeInsets.all(8.0), child: Text("2021")),
      ),
      TableCell(
        child: Padding(padding: const EdgeInsets.all(8.0), child: Text("A")),
      ),
      TableCell(
        child: Padding(padding: const EdgeInsets.all(8.0), child: Text("A3")),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0), child: Text("Rajesh bhai")),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0), child: Text("8460770855")),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("rajesh@gmail.com")),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("85/2 anand apartments")),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0), child: Text("7505633546")),
      ),
      TableCell(
        child:
        Padding(padding: const EdgeInsets.all(8.0), child: Text("5000000")),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0), child: Text("Mamta ben")),
      ),
      TableCell(
        child:
        Padding(padding: const EdgeInsets.all(8.0), child: Text("Teacher")),
      ),
      TableCell(
        child: Padding(padding: const EdgeInsets.all(8.0), child: Text("B.ed")),
      ),
      TableCell(
        child:
        Padding(padding: const EdgeInsets.all(8.0), child: Text("150000")),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0), child: Text("1234567890")),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("mamta345@gmail.com")),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Anupam school near Ak Society")),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0), child: Text("8432459620")),
      ),
      TableCell(
        child:
        Padding(padding: const EdgeInsets.all(8.0), child: Text("450000")),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0), child: Text("same as above")),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0), child: Text("same as above")),
      ),
      TableCell(
        child: Padding(padding: const EdgeInsets.all(8.0), child: Text("yes")),
      ),
    ]);
  }
}

class ShowDataForm extends StatefulWidget {
  const ShowDataForm({Key? key}) : super(key: key);
  @override
  _ShowDataFormState createState() => _ShowDataFormState();
}

class _ShowDataFormState extends State<ShowDataForm> {

  final String documentId="1UkFdMfIyjrFeXJmsHXh";

  TextStyle gridviewtext = new TextStyle(fontSize: 16);
  final TextEditingController search = new TextEditingController();

  late List<Map<String , dynamic>> mapFromData=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FirebaseFirestore.instance.collection("student_registration").get().then(
          (value) {
        value.docs.forEach(
              (element) {
            mapFromData.add(element.data());
          },
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('student_registration');
    Size size = MediaQuery.of(context).size;

    final bool displayMobileLayout = MediaQuery.of(context).size.width < 800;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(size.height > 770
            ? 64
            : size.height > 670
            ? 32
            : 16),
        child: Center(
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(25),
              ),
            ),
            child: AnimatedContainer(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              duration: Duration(milliseconds: 200),
              height: size.height * 0.9,
              width: 1400,
              child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 40, top: 20),
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Row(
                              children: [
                                Icon(Icons.arrow_back),
                                Text(" Back ",
                                    style: TextStyle(color: kPrimaryColor)),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 40, right: 40, top: 20),
                          child: Text(" Student Registration Info ",
                              style: TextStyle(fontSize: 20, color: kPrimaryColor)),
                        ),
                      ]),
                      Expanded(
                          child: ListView(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(20),
                                child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                    width: MediaQuery.of(context).size.width,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(7),
                                          ),
                                          padding: (displayMobileLayout == true)
                                              ? EdgeInsets.only(
                                              left: 10, right: 10, bottom: 15)
                                              : (MediaQuery.of(context).size.width <
                                              1024)
                                              ? EdgeInsets.only(
                                              left: 15, right: 25, bottom: 20)
                                              : EdgeInsets.only(
                                              left: 15, right: 30, bottom: 25),
                                          width: MediaQuery.of(context).size.width,
                                          child: Card(
                                            color: Color(0xfff8f9fa),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(15)),
                                            elevation: 5,
                                            child: Padding(
                                              padding: EdgeInsets.all(20),
                                              child: GridView.count(
                                                childAspectRatio:
                                                MediaQuery.of(context).size.width >
                                                    1024
                                                    ? (1 / 0.15)
                                                    : MediaQuery.of(context)
                                                    .size
                                                    .width >
                                                    640
                                                    ? (1 / 0.08)
                                                    : (1 / 0.15),
                                                crossAxisCount:
                                                (displayMobileLayout == true)
                                                    ? 1
                                                    : (MediaQuery.of(context)
                                                    .size
                                                    .width <
                                                    1050)
                                                    ? 1
                                                    : 3,
                                                mainAxisSpacing: 15,
                                                crossAxisSpacing: 18,
                                                shrinkWrap: true,
                                                physics: BouncingScrollPhysics(),
                                                children: [
                                                  TextFormField(
                                                    controller: search,
                                                    decoration: InputDecoration(
                                                        labelText: "Search",
                                                        hintText:
                                                        "Search by Name,admission no,form id"),
                                                  ),
                                                  if (MediaQuery.of(context)
                                                      .size
                                                      .width >=
                                                      1200)
                                                    Text(""),
                                                  Center(
                                                      child: FlatButton(
                                                          height: 45,
                                                          minWidth: 150,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                              BorderRadius.circular(
                                                                  18.0)),
                                                          color: kPrimaryColor,
                                                          onPressed: () {
                                                            print("");
                                                          },
                                                          child: Text(
                                                            "Search",
                                                            style: TextStyle(
                                                                fontSize: 17,
                                                                color: Colors.white),
                                                          )))
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(7),
                                          ),
                                          padding: (displayMobileLayout == true)
                                              ? EdgeInsets.only(
                                              left: 10, right: 10, bottom: 15)
                                              : (MediaQuery.of(context).size.width <
                                              1024)
                                              ? EdgeInsets.only(
                                              left: 15, right: 25, bottom: 20)
                                              : EdgeInsets.only(
                                              left: 15, right: 30, bottom: 25),
                                          width: MediaQuery.of(context).size.width,
                                          child: Card(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(10)),
                                            elevation: 5,
                                            child: Padding(
                                                padding: EdgeInsets.all(20),
                                                child: SingleChildScrollView(
                                                  scrollDirection: Axis.horizontal,
                                                  child: FutureBuilder<DocumentSnapshot>(
                                                    future: users.doc(documentId).get(),
                                                    builder:
                                                        (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {

                                                      if (snapshot.hasError) {
                                                        return Text("Something went wrong");
                                                      }

                                                      if (snapshot.hasData && !snapshot.data!.exists) {
                                                        return Text("Document does not exist");
                                                      }

                                                      if (snapshot.connectionState == ConnectionState.done) {
                                                        Map<String, dynamic> data = snapshot.data!.data() as Map<String, dynamic>;
                                                        // print(mapFromData);
                                                        return TableRow1(mapFromData);
                                                      }

                                                      return Text("loading");
                                                    },
                                                  ),
                                                )),
                                          ),
                                        )
                                      ],
                                    )),
                              ),
                            ],
                          ))
                    ],
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
