// import 'package:erp_main_project/constants/constants.dart';
//
// import 'package:erp_main_project/utility/class_timetable_module.dart';
//
// import 'package:flutter/material.dart';
//
// class ClassTimeTable extends StatefulWidget {
//   const ClassTimeTable({Key? key}) : super(key: key);
//
//   @override
//   _ClassTimeTableState createState() => _ClassTimeTableState();
// }
//
// class _ClassTimeTableState extends State<ClassTimeTable> {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       body: Container(
//         width: size.width,
//         height: size.height,
//         child: Stack(
//           children: [
//             Row(
//               children: [
//                 Container(
//                   height: double.infinity,
//                   width: size.width / 2,
//                   color: kPrimaryColor,
//                 ),
//                 Container(
//                     height: double.infinity,
//                     width: size.width / 2,
//                     color: Colors.white),
//               ],
//             ),
//             ClassTimeTableForm()
//           ],
//         ),
//       ),
//     );
//   }
// }
