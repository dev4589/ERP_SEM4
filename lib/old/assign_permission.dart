// import 'package:erp_main_project/constants/constants.dart';
// import 'package:erp_main_project/utility/assign_permission_module.dart';
// import 'package:flutter/material.dart';
//
// class AssignPermission extends StatefulWidget {
//   final String roleName;
//   final List<dynamic> selectedRoles;
//   AssignPermission(this.roleName, this.selectedRoles);
//   @override
//   _AssignPermissionState createState() => _AssignPermissionState();
// }
//
// class _AssignPermissionState extends State<AssignPermission> {
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
//             AssignPermissionForm(
//               roleName: widget.roleName,
//               selectedRoles: widget.selectedRoles.toSet(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
