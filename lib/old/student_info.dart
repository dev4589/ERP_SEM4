// import 'dart:ui';
// import 'package:erp_main_project/constants/constants.dart';
// import 'package:flutter/material.dart';
// import 'package:collection/collection.dart';
//
// class StudentInfo extends StatefulWidget {
//   const StudentInfo({Key? key}) : super(key: key);
//
//   @override
//   _StudentInfoState createState() => _StudentInfoState();
// }
//
// class _StudentInfoState extends State<StudentInfo> {
//   late List<Map> _students;
//   late List<Map> _showStud = [];
//   late List<bool> _selected = [];
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     _students = getStudData();
//     _selected = List<bool>.generate(_students.length, (int index) => false);
//
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//             width: size.width / 2,
//             height: double.infinity,
//             color: kPrimaryColor,
//           ),
//           Container(
//             child: ListView(children: [
//               Card(
//                 semanticContainer: true,
//                 margin: EdgeInsets.symmetric(vertical: 40, horizontal: 40),
//                 elevation: 20,
//                 child: Column(
//                   children: [
//                     Row(
//                       children: [
//                         Spacer(),
//                         Container(
//                           margin: EdgeInsets.all(20),
//                           child: TextButton(
//                               style: ButtonStyle(
//                                 padding: MaterialStateProperty.all<
//                                         EdgeInsetsDirectional>(
//                                     EdgeInsetsDirectional.all(10)),
//                                 foregroundColor:
//                                     MaterialStateProperty.all<Color>(
//                                         Colors.white),
//                                 backgroundColor:
//                                     MaterialStateProperty.all<Color>(
//                                         kPrimaryColor),
//                               ),
//                               onPressed: () {
//                                 print(_showStud);
//                               },
//                               child: Text('move')),
//                         )
//                       ],
//                     ),
//                     Container(
//                       margin: EdgeInsets.symmetric(horizontal: 20),
//                       child: DataTable(
//                         headingRowColor: MaterialStateProperty.all<Color>(
//                             Colors.grey.shade200),
//                         showCheckboxColumn: true,
//                         columns: <DataColumn>[
//                           DataColumn(label: Text('Sr. No'), numeric: true),
//                           DataColumn(label: Text('Name')),
//                           DataColumn(label: Text('University')),
//                           DataColumn(label: Text('Degree')),
//                           DataColumn(label: Text('Semester'), numeric: true),
//                         ],
//                         rows: _students
//                             .mapIndexed((index, stud) => (DataRow(
//                                     selected: _selected[index],
//                                     onSelectChanged: (b) {
//                                       setState(() {
//                                         _selected[index] =
//                                             _selected[index] ? false : true;
//                                         _selected[index]
//                                             ? _showStud.add(_students[index])
//                                             : _showStud
//                                                 .remove(_students[index]);
//                                       });
//                                     },
//                                     cells: [
//                                       DataCell(Text(stud['SrNo'].toString())),
//                                       DataCell(Text(stud['Name'])),
//                                       DataCell(Text(stud['University'])),
//                                       DataCell(Text(stud['Degree'])),
//                                       DataCell(
//                                           Text(stud['Semester'].toString())),
//                                     ])))
//                             .toList(),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ]),
//           ),
//         ],
//       ),
//     );
//   }
//
//   List<Map> getStudData() {
//     final List<Map> studMap = [
//       {
//         'SrNo': 1,
//         'Name': 'Devansh',
//         'University': 'GTU',
//         'Degree': 'MCA',
//         'Semester': 4,
//       },
//       {
//         'SrNo': 2,
//         'Name': 'Parth',
//         'University': 'GTU',
//         'Degree': 'MCA',
//         'Semester': 4,
//       },
//       {
//         'SrNo': 3,
//         'Name': 'Sahil',
//         'University': 'GTU',
//         'Degree': 'ME',
//         'Semester': 5,
//       },
//       {
//         'SrNo': 4,
//         'Name': 'Zeel',
//         'University': 'VNSGU',
//         'Degree': 'bsc',
//         'Semester': 5,
//       },
//       {
//         'SrNo': 5,
//         'Name': 'Geeta',
//         'University': 'GU',
//         'Degree': 'BCA',
//         'Semester': 1,
//       },
//     ];
//
//     return studMap;
//   }
// }
