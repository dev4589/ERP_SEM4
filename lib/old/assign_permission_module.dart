// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:erp_main_project/constants/constants.dart';
// import 'package:flutter/material.dart';
//
// Set selecteditem = {};
// List pages = [
//   'Profile',
//   'Pre Admission',
//   'Admission Form',
//   'Student Attendance',
//   'Staff Attendance',
//   'Add Staff',
//   "Fees Collection",
//   'Add Student Timetable',
//   'Add Faculty Timetable',
//   'Student Attendance',
//   'Staff Attendance',
//   'Upload Assignment',
//   'View Assignment',
//   'Upload Homework',
//   'View Homework',
//   'Manage Library',
//   'Library',
//   'Settings',
//   'Send Notification',
//   'Logout',
// ];
//
// class AssignPermissionForm extends StatefulWidget {
//   final String roleName;
//   final Set selectedRoles;
//   const AssignPermissionForm({
//     required this.roleName,
//     required this.selectedRoles,
//   });
//   @override
//   _AssignPermissionFormState createState() => _AssignPermissionFormState();
// }
//
// class _AssignPermissionFormState extends State<AssignPermissionForm> {
//   TextStyle gridviewtext = new TextStyle(fontSize: 16);
//   TextEditingController role = new TextEditingController();
//   @override
//   void initState() {
//     selecteditem = widget.selectedRoles;
//     super.initState();
//   }
//
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
//                           Icon(
//                             Icons.arrow_back,
//                             color: kPrimaryColor,
//                           ),
//                           Text(" Back ",
//                               style: TextStyle(color: kPrimaryColor)),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(left: 40, right: 40, top: 20),
//                     child: Text(" Assign Permission ",
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
//                                           ? (1 / 0.11)
//                                           : MediaQuery.of(context).size.width >
//                                                   640
//                                               ? (1 / 0.11)
//                                               : (1 / 0.12),
//                                       crossAxisCount: (displayMobileLayout ==
//                                               true)
//                                           ? 1
//                                           : (MediaQuery.of(context).size.width <
//                                                   1050)
//                                               ? 2
//                                               : 2,
//                                       mainAxisSpacing: 15,
//                                       crossAxisSpacing: 18,
//                                       shrinkWrap: true,
//                                       physics: BouncingScrollPhysics(),
//                                       children: [
//                                         for (int i = 0; i < pages.length; i++)
//                                           PermissionCard(
//                                             permissionName: pages[i],
//                                           ),
//                                         Center(
//                                             child: FlatButton(
//                                                 height: 50,
//                                                 minWidth: 180,
//                                                 shape: RoundedRectangleBorder(
//                                                     borderRadius:
//                                                         BorderRadius.circular(
//                                                             18.0)),
//                                                 color: kPrimaryColor,
//                                                 onPressed: () async {
//                                                   await FirebaseFirestore
//                                                       .instance
//                                                       .collection('Roles')
//                                                       .doc(widget.roleName)
//                                                       .update(
//                                                     {'pages': selecteditem},
//                                                   );
//                                                   await FirebaseFirestore
//                                                       .instance
//                                                       .collection('Users')
//                                                       .where('role',
//                                                           isEqualTo:
//                                                               widget.roleName)
//                                                       .get()
//                                                       .then(
//                                                     (value) async {
//                                                       if (value.docs.length >
//                                                           0) {
//                                                         for (int i = 0;
//                                                             i <
//                                                                 value.docs
//                                                                     .length;
//                                                             i++) {
//                                                           print(value.docs[i]
//                                                               .data()['userId']
//                                                               .toString());
//                                                           await FirebaseFirestore
//                                                               .instance
//                                                               .collection(
//                                                                   'Users')
//                                                               .doc(value.docs[i]
//                                                                   .data()[
//                                                                       'userId']
//                                                                   .toString())
//                                                               .update(
//                                                             {
//                                                               'pages':
//                                                                   selecteditem
//                                                             },
//                                                           );
//                                                         }
//                                                       }
//                                                     },
//                                                   );
//                                                 },
//                                                 child: Text(
//                                                   "Save Permission",
//                                                   style: TextStyle(
//                                                       fontSize: 17,
//                                                       color: Colors.white),
//                                                 )))
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),
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
// class PermissionCard extends StatefulWidget {
//   final String permissionName;
//   PermissionCard({required this.permissionName});
//
//   @override
//   _PermissionCardState createState() => _PermissionCardState();
// }
//
// bool checkBox = false;
//
// class _PermissionCardState extends State<PermissionCard> {
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: kPrimaryColor,
//       elevation: 4,
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Row(
//               children: [
//                 Checkbox(
//                   activeColor: Colors.white,
//                   checkColor: kPrimaryColor,
//                   value: checkBox =
//                       selecteditem.contains(widget.permissionName),
//                   onChanged: (bool? val) {
//                     setState(() {
//                       checkBox = val!;
//                       if (checkBox)
//                         selecteditem.add(widget.permissionName);
//                       else
//                         selecteditem.remove(widget.permissionName);
//                     });
//                   },
//                 ),
//                 SizedBox(
//                   width: 10,
//                 ),
//                 Text(
//                   widget.permissionName,
//                   overflow: TextOverflow.ellipsis,
//                   style: TextStyle(color: Colors.white, fontSize: 16),
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
