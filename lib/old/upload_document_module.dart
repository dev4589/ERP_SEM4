// import 'dart:io';
//
// import 'package:flutter/material.dart';
// import 'package:erp_main_project/constants/constants.dart';
// import 'package:flutter/services.dart';
// import 'package:image_picker/image_picker.dart';
//
// class UploadDocumentForm extends StatefulWidget {
//   const UploadDocumentForm({Key? key}) : super(key: key);
//
//   @override
//   _UploadDocumentFormState createState() => _UploadDocumentFormState();
// }
//
// class _UploadDocumentFormState extends State<UploadDocumentForm> {
//   TextEditingController uid = TextEditingController();
//   File? image;
//   String name = "Zeel";
//   String fname = "Rajesh bhai";
//   String degree = "MCA";
//   String university = "Gujarat University";
//   String dob = "28/05/1999";
//   String mobileno = "9821856423";
//   TextStyle gridviewtext = new TextStyle(fontSize: 16);
//
//   Future pickimage(ImageSource src) async {
//     try {
//       final image = await ImagePicker().pickImage(source: src);
//       if (image == null) return;
//       final imageTemp = File(image.path);
//       setState(() {
//         this.image = imageTemp;
//       });
//     } on PlatformException catch (e) {
//       print("Failed to pick image : $e");
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
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
//               child: Column(children: [
//                 Row(
//                   children: [
//                     InkWell(
//                       onTap: () {
//                         Navigator.pop(context);
//                       },
//                       child: Padding(
//                         padding: EdgeInsets.only(left: 40, right: 40, top: 20),
//                         child: Row(children: [
//                           Icon(
//                             Icons.arrow_back,
//                             color: kPrimaryColor,
//                           ),
//                           Text(" Back", style: TextStyle(color: kPrimaryColor)),
//                         ]),
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.only(left: 40, right: 40, top: 20),
//                       child: Text(" Upload Document",
//                           style: TextStyle(fontSize: 20, color: kPrimaryColor)),
//                     ),
//                   ],
//                 ),
//                 Expanded(
//                     child: ListView(children: [
//                   Padding(
//                     padding: EdgeInsets.all(40),
//                     child: Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(7),
//                         ),
//                         //padding: (displayMobileLayout==true)?EdgeInsets.only(top:15,left: 10,right:10,bottom: 15):(MediaQuery.of(context).size.width<1024)?EdgeInsets.only(top:20,left: 25,right:25,bottom: 20):EdgeInsets.only(top:25,left: 30,right:30,bottom: 25),
//                         width: MediaQuery.of(context).size.width,
//                         child: Column(
//                           children: [
//                             Container(
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(7),
//                               ),
//                               padding: (displayMobileLayout == true)
//                                   ? EdgeInsets.only(
//                                       top: 15, left: 10, right: 10, bottom: 15)
//                                   : (MediaQuery.of(context).size.width < 1024)
//                                       ? EdgeInsets.only(
//                                           top: 20,
//                                           left: 25,
//                                           right: 25,
//                                           bottom: 20)
//                                       : EdgeInsets.only(
//                                           top: 25,
//                                           left: 30,
//                                           right: 30,
//                                           bottom: 25),
//                               width: MediaQuery.of(context).size.width,
//                               child: Container(
//                                   child: GridView.count(
//                                 childAspectRatio: MediaQuery.of(context)
//                                             .size
//                                             .width >
//                                         1024
//                                     ? (1 / 0.19)
//                                     : MediaQuery.of(context).size.width > 640
//                                         ? (1 / 0.10)
//                                         : (1 / 0.14),
//                                 crossAxisCount: (displayMobileLayout == true)
//                                     ? 1
//                                     : (MediaQuery.of(context).size.width < 1050)
//                                         ? 1
//                                         : (MediaQuery.of(context).size.width <
//                                                 1200)
//                                             ? 2
//                                             : 3,
//                                 mainAxisSpacing: 0,
//                                 crossAxisSpacing: 18,
//                                 shrinkWrap: true,
//                                 children: [
//                                   TextFormField(
//                                     controller: uid,
//                                     decoration: InputDecoration(
//                                       //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                       labelText: "User ID",
//                                     ),
//                                   ),
//                                   Center(
//                                       child: FlatButton(
//                                           height: 45,
//                                           minWidth: 150,
//                                           shape: RoundedRectangleBorder(
//                                               borderRadius:
//                                                   BorderRadius.circular(18.0)),
//                                           color: kPrimaryColor,
//                                           onPressed: () async {
//                                             print("s");
//                                           },
//                                           child: Text(
//                                             "Search User",
//                                             style: TextStyle(
//                                                 fontSize: 17,
//                                                 color: Colors.white),
//                                           ))),
//                                   if (MediaQuery.of(context).size.width >= 1200)
//                                     Text(""),
//                                   Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Text(
//                                         "Name :   " + name,
//                                         style: gridviewtext,
//                                       ),
//                                       Text(
//                                         "Father name :   " + fname,
//                                         style: gridviewtext,
//                                       )
//                                     ],
//                                   ),
//                                   Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Text(
//                                         "Degree :   " + degree,
//                                         style: gridviewtext,
//                                       ),
//                                       Text(
//                                         "University :   " + university,
//                                         style: gridviewtext,
//                                       )
//                                     ],
//                                   ),
//                                   Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Text(
//                                         "Date of Birth :   " + dob,
//                                         style: gridviewtext,
//                                       ),
//                                       Text(
//                                         "Mobile No :   " + mobileno,
//                                         style: gridviewtext,
//                                       )
//                                     ],
//                                   ),
//                                   if (MediaQuery.of(context).size.width >
//                                           1050 &&
//                                       MediaQuery.of(context).size.width <= 1200)
//                                     Text(""),
//                                   Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Text(
//                                         "UPLOAD DOCUMENTS ",
//                                         style: TextStyle(
//                                             fontSize: 18, color: kPrimaryColor),
//                                       ),
//                                       Divider(
//                                         thickness: 5,
//                                         color: kPrimaryColor,
//                                       ),
//                                     ],
//                                   ),
//                                   if (MediaQuery.of(context).size.width >= 1200)
//                                     Text(""),
//                                   if (MediaQuery.of(context).size.width > 1050)
//                                     Text(""),
//                                   TextFormField(
//                                     decoration: InputDecoration(
//                                       //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                       labelText: "10th Marksheet",
//                                       hintText: "10th marksheet seat no",
//                                       suffix: IconButton(
//                                         icon: Icon(
//                                             Icons.add_photo_alternate_outlined),
//                                         onPressed: () =>
//                                             pickimage(ImageSource.gallery),
//                                       ),
//                                     ),
//                                   ),
//                                   TextFormField(
//                                     decoration: InputDecoration(
//                                       //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                       labelText: "12th Markshhet",
//                                       hintText: "12th marksheet seat no",
//                                       suffix: IconButton(
//                                         icon: Icon(
//                                             Icons.add_photo_alternate_outlined),
//                                         onPressed: () =>
//                                             pickimage(ImageSource.gallery),
//                                       ),
//                                     ),
//                                   ),
//                                   TextFormField(
//                                     decoration: InputDecoration(
//                                       //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                       labelText: "Leaving Certificate",
//                                       hintText: "leaving certificate doc no",
//                                       suffix: IconButton(
//                                         icon: Icon(
//                                             Icons.add_photo_alternate_outlined),
//                                         onPressed: () =>
//                                             pickimage(ImageSource.gallery),
//                                       ),
//                                     ),
//                                   ),
//                                   TextFormField(
//                                     decoration: InputDecoration(
//                                       //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                       labelText: "Caste Certificate",
//                                       hintText: "caste certificate doc no",
//                                       suffix: IconButton(
//                                         icon: Icon(
//                                             Icons.add_photo_alternate_outlined),
//                                         onPressed: () =>
//                                             pickimage(ImageSource.gallery),
//                                       ),
//                                     ),
//                                   ),
//                                   TextFormField(
//                                     decoration: InputDecoration(
//                                       //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                       labelText: "Income Certificate",
//                                       hintText: "income certificate doc no",
//                                       suffix: IconButton(
//                                         icon: Icon(
//                                             Icons.add_photo_alternate_outlined),
//                                         onPressed: () =>
//                                             pickimage(ImageSource.gallery),
//                                       ),
//                                     ),
//                                   ),
//                                   if (MediaQuery.of(context).size.width >= 1200)
//                                     Text(""),
//                                   if (MediaQuery.of(context).size.width >= 1050)
//                                     Text(""),
//                                   Center(
//                                     child: FlatButton(
//                                       height: 45,
//                                       minWidth: 150,
//                                       shape: RoundedRectangleBorder(
//                                           borderRadius:
//                                               BorderRadius.circular(18.0)),
//                                       color: kPrimaryColor,
//                                       onPressed: () {
//                                         print("save");
//                                       },
//                                       child: Text(
//                                         "Save",
//                                         style: TextStyle(
//                                             fontSize: 17, color: Colors.white),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               )),
//                             ),
//                           ],
//                         )),
//                   ),
//                 ]))
//               ]),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
