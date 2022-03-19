// import 'dart:io';
//
// import 'package:erp_main_project/constants/dropdown_values.dart';
// import 'package:flutter/material.dart';
// import 'package:erp_main_project/constants/constants.dart';
// import 'package:flutter/services.dart';
// import 'package:image_picker/image_picker.dart';
//
// class StaffRegisterForm extends StatefulWidget {
//   const StaffRegisterForm({Key? key}) : super(key: key);
//
//   @override
//   _StaffRegisterFormState createState() => _StaffRegisterFormState();
// }
//
// class _StaffRegisterFormState extends State<StaffRegisterForm> {
//   File? image;
//
//   TextEditingController sno = TextEditingController();
//   String role = "Select Role";
//   String department = "Department";
//   String designation = "Designation";
//   TextEditingController fname = TextEditingController();
//   TextEditingController lname = TextEditingController();
//   TextEditingController fathernm = TextEditingController();
//   TextEditingController mothernm = TextEditingController();
//   TextEditingController email = TextEditingController();
//   String gender = "Select Gender";
//   TextEditingController dob = TextEditingController();
//   TextEditingController dojoin = TextEditingController();
//   TextEditingController mno = TextEditingController();
//   String mstatus = "Merital Status";
//   TextEditingController emno = TextEditingController();
//   TextEditingController dlicense = TextEditingController();
//   TextEditingController sphoto = TextEditingController();
//   TextEditingController caddress = TextEditingController();
//   TextEditingController paddress = TextEditingController();
//   TextEditingController qualification = TextEditingController();
//   TextEditingController exprience = TextEditingController();
//   TextEditingController epfno = TextEditingController();
//   TextEditingController bsalary = TextEditingController();
//   String contract = "Contract Type";
//   TextEditingController location = TextEditingController();
//   TextEditingController bankacnm = TextEditingController();
//   TextEditingController bankacno = TextEditingController();
//   TextEditingController banknm = TextEditingController();
//   TextEditingController branchnm = TextEditingController();
//   TextEditingController fburl = TextEditingController();
//   TextEditingController twitterurl = TextEditingController();
//   TextEditingController linkedinurl = TextEditingController();
//   TextEditingController instraurl = TextEditingController();
//   TextEditingController resume = TextEditingController();
//   TextEditingController joinletter = TextEditingController();
//   TextEditingController other = TextEditingController();
//
//   Future pick_image(ImageSource src) async {
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
//             // (size.height > 770
//             // ? 0.7
//             // : size.height > 670
//             // ? 0.8
//             // : 0.9),
//             width: 1400,
//             child: Center(
//               child: Column(
//                 children: [
//                   InkWell(
//                     onTap: () {
//                       Navigator.pop(context);
//                     },
//                     child: Padding(
//                       padding: EdgeInsets.only(left: 40, right: 40, top: 20),
//                       child: Row(children: [
//                         Icon(
//                           Icons.arrow_back,
//                           color: kPrimaryColor,
//                         ),
//                         Text(" Back", style: TextStyle(color: kPrimaryColor)),
//                       ]),
//                     ),
//                   ),
//                   Expanded(
//                       child: ListView(children: [
//                     Padding(
//                       padding: EdgeInsets.all(40),
//                       child: Container(
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(7),
//                           ),
//                           //padding: (displayMobileLayout==true)?EdgeInsets.only(top:15,left: 10,right:10,bottom: 15):(MediaQuery.of(context).size.width<1024)?EdgeInsets.only(top:20,left: 25,right:25,bottom: 20):EdgeInsets.only(top:25,left: 30,right:30,bottom: 25),
//                           width: MediaQuery.of(context).size.width,
//                           child: Column(
//                             children: [
//                               Container(
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(7),
//                                 ),
//                                 padding: (displayMobileLayout == true)
//                                     ? EdgeInsets.only(
//                                         top: 15,
//                                         left: 10,
//                                         right: 10,
//                                         bottom: 15)
//                                     : (MediaQuery.of(context).size.width < 1024)
//                                         ? EdgeInsets.only(
//                                             top: 20,
//                                             left: 25,
//                                             right: 25,
//                                             bottom: 20)
//                                         : EdgeInsets.only(
//                                             top: 25,
//                                             left: 30,
//                                             right: 30,
//                                             bottom: 25),
//                                 width: MediaQuery.of(context).size.width,
//                                 child: Container(
//                                     child: GridView.count(
//                                   childAspectRatio: MediaQuery.of(context)
//                                               .size
//                                               .width >
//                                           1024
//                                       ? (1 / 0.18)
//                                       : MediaQuery.of(context).size.width > 640
//                                           ? (1 / 0.09)
//                                           : (1 / 0.13),
//                                   crossAxisCount: (displayMobileLayout == true)
//                                       ? 1
//                                       : (MediaQuery.of(context).size.width <
//                                               1050)
//                                           ? 1
//                                           : (MediaQuery.of(context).size.width <
//                                                   1200)
//                                               ? 2
//                                               : 3,
//                                   mainAxisSpacing: 0,
//                                   crossAxisSpacing: 18,
//                                   shrinkWrap: true,
//                                   children: [
//                                     Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         Text(
//                                           "PERSONAL INFO ",
//                                           style: TextStyle(
//                                               fontSize: 18,
//                                               color: kPrimaryColor),
//                                         ),
//                                         Divider(
//                                           thickness: 5,
//                                           color: kPrimaryColor,
//                                         ),
//                                       ],
//                                     ),
//                                     if (MediaQuery.of(context).size.width >=
//                                         1200)
//                                       Text(""),
//                                     if (MediaQuery.of(context).size.width >
//                                         1050)
//                                       Text(""),
//                                     TextFormField(
//                                       controller: sno,
//                                       decoration: InputDecoration(
//                                         //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                         labelText: "Staff No",
//                                       ),
//                                     ),
//                                     DropdownButton<String>(
//                                       borderRadius: BorderRadius.circular(5),
//                                       hint: Text("Select Role"),
//                                       value: role,
//                                       isExpanded: true,
//                                       items: Dropdown.role.map((String val) {
//                                         return DropdownMenuItem<String>(
//                                           value: val,
//                                           child: Text(val),
//                                         );
//                                       }).toList(),
//                                       onChanged: (String? num) async {
//                                         if (num != null) {
//                                           setState(() {
//                                             role = num;
//                                           });
//                                         }
//                                       },
//                                     ),
//                                     DropdownButton<String>(
//                                       borderRadius: BorderRadius.circular(5),
//                                       hint: Text("Department"),
//                                       value: department,
//                                       isExpanded: true,
//                                       items:
//                                           Dropdown.department.map((String val) {
//                                         return DropdownMenuItem<String>(
//                                           value: val,
//                                           child: Text(val),
//                                         );
//                                       }).toList(),
//                                       onChanged: (String? num) async {
//                                         if (num != null) {
//                                           setState(() {
//                                             department = num;
//                                           });
//                                         }
//                                       },
//                                     ),
//                                     DropdownButton<String>(
//                                       borderRadius: BorderRadius.circular(5),
//                                       hint: Text("Designation"),
//                                       value: designation,
//                                       isExpanded: true,
//                                       items: Dropdown.designation
//                                           .map((String val) {
//                                         return DropdownMenuItem<String>(
//                                           value: val,
//                                           child: Text(val),
//                                         );
//                                       }).toList(),
//                                       onChanged: (String? num) async {
//                                         if (num != null) {
//                                           setState(() {
//                                             designation = num;
//                                           });
//                                         }
//                                       },
//                                     ),
//                                     TextFormField(
//                                       controller: fname,
//                                       decoration: InputDecoration(
//                                         //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                         labelText: "First Name",
//                                       ),
//                                     ),
//                                     TextFormField(
//                                       controller: lname,
//                                       decoration: InputDecoration(
//                                         //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                         labelText: "Last Name",
//                                       ),
//                                     ),
//                                     TextFormField(
//                                       controller: fname,
//                                       decoration: InputDecoration(
//                                         //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                         labelText: "Father Name",
//                                       ),
//                                     ),
//                                     TextFormField(
//                                       controller: mothernm,
//                                       decoration: InputDecoration(
//                                         //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                         labelText: "Mother Name",
//                                       ),
//                                     ),
//                                     TextFormField(
//                                       controller: email,
//                                       decoration: InputDecoration(
//                                         //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                         labelText: "Email Address",
//                                       ),
//                                     ),
//                                     DropdownButton<String>(
//                                       borderRadius: BorderRadius.circular(5),
//                                       hint: Text("Select Gender"),
//                                       value: gender,
//                                       isExpanded: true,
//                                       items: Dropdown.gender.map((String val) {
//                                         return DropdownMenuItem<String>(
//                                           value: val,
//                                           child: Text(val),
//                                         );
//                                       }).toList(),
//                                       onChanged: (String? num) async {
//                                         if (num != null) {
//                                           setState(() {
//                                             gender = num;
//                                           });
//                                         }
//                                       },
//                                     ),
//                                     TextFormField(
//                                       controller: dob,
//                                       decoration: InputDecoration(
//                                           //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                           labelText: "Date Of Birth",
//                                           hintText:
//                                               "Date Format must be YYYY-MM-DD",
//                                           suffixIcon: IconButton(
//                                               onPressed: () async {
//                                                 DateTime? date = DateTime(1900);
//                                                 FocusScope.of(context)
//                                                     .requestFocus(
//                                                         new FocusNode());
//                                                 date = await showDatePicker(
//                                                     helpText:
//                                                         "Select Date Of Birth",
//                                                     context: context,
//                                                     initialDate: DateTime.now(),
//                                                     firstDate: DateTime(1900),
//                                                     lastDate: DateTime.now());
//                                                 dob.text =
//                                                     date!.day.toString() +
//                                                         "/" +
//                                                         date.month.toString() +
//                                                         "/" +
//                                                         date.year.toString();
//                                                 dob.text = dob.text +
//                                                     " ( " +
//                                                     (DateTime.now().year -
//                                                             date.year)
//                                                         .toString() +
//                                                     " year " +
//                                                     " old )";
//                                               },
//                                               icon: Icon(Icons
//                                                   .calendar_today_outlined))),
//                                     ),
//                                     TextFormField(
//                                       controller: dojoin,
//                                       decoration: InputDecoration(
//                                           //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                           labelText: "Date Of Joining",
//                                           hintText:
//                                               "Date Format must be DD-MM-YYYY",
//                                           suffixIcon: IconButton(
//                                               onPressed: () async {
//                                                 DateTime? date = DateTime(1900);
//                                                 FocusScope.of(context)
//                                                     .requestFocus(
//                                                         new FocusNode());
//                                                 date = await showDatePicker(
//                                                     helpText:
//                                                         "Select Date Of Joining",
//                                                     context: context,
//                                                     initialDate: DateTime.now(),
//                                                     firstDate: DateTime(1900),
//                                                     lastDate: DateTime.now());
//                                                 dojoin.text =
//                                                     date!.day.toString() +
//                                                         "/" +
//                                                         date.month.toString() +
//                                                         "/" +
//                                                         date.year.toString();
//                                               },
//                                               icon: Icon(Icons
//                                                   .calendar_today_outlined))),
//                                     ),
//                                     TextFormField(
//                                       controller: mno,
//                                       decoration: InputDecoration(
//                                         //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                         focusColor: Colors.white,
//                                         labelText: "Mobile No",
//                                       ),
//                                     ),
//                                     DropdownButton<String>(
//                                       borderRadius: BorderRadius.circular(5),
//                                       hint: Text("Select Merital Status"),
//                                       value: mstatus,
//                                       isExpanded: true,
//                                       items:
//                                           Dropdown.meritalst.map((String val) {
//                                         return DropdownMenuItem<String>(
//                                           value: val,
//                                           child: Text(val),
//                                         );
//                                       }).toList(),
//                                       onChanged: (String? num) async {
//                                         if (num != null) {
//                                           setState(() {
//                                             mstatus = num;
//                                           });
//                                         }
//                                       },
//                                     ),
//                                     TextFormField(
//                                       controller: emno,
//                                       decoration: InputDecoration(
//                                         //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                         labelText: "Emergency Mobile No",
//                                       ),
//                                     ),
//                                     TextFormField(
//                                       controller: dlicense,
//                                       decoration: InputDecoration(
//                                         //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                         labelText: "Driving License",
//                                       ),
//                                     ),
//                                     TextFormField(
//                                       controller: sphoto,
//                                       decoration: InputDecoration(
//                                           //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                           labelText: "Staff Photo",
//                                           suffixIcon: Wrap(
//                                             children: [
//                                               IconButton(
//                                                 icon: Icon(
//                                                     Icons.add_a_photo_outlined),
//                                                 onPressed: () => pick_image(
//                                                     ImageSource.camera),
//                                               ),
//                                               IconButton(
//                                                   onPressed: () => pick_image(
//                                                       ImageSource.gallery),
//                                                   icon: Icon(Icons
//                                                       .add_photo_alternate_outlined))
//                                             ],
//                                           )),
//                                     ),
//                                     image != null
//                                         ? Image.file(image!,
//                                             width: 70,
//                                             height: 70,
//                                             fit: BoxFit.fill)
//                                         : Text(
//                                             "Your captured image will appear here..."),
//                                     TextFormField(
//                                       controller: caddress,
//                                       maxLines: 3,
//                                       decoration: InputDecoration(
//                                         //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                         labelText: "Current Address",
//                                       ),
//                                     ),
//                                     TextFormField(
//                                       controller: paddress,
//                                       maxLines: 3,
//                                       decoration: InputDecoration(
//                                         //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                         labelText: "Permanent Address",
//                                       ),
//                                     ),
//                                     TextFormField(
//                                       controller: qualification,
//                                       maxLines: 3,
//                                       decoration: InputDecoration(
//                                         //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                         labelText: "Qualification",
//                                       ),
//                                     ),
//                                     TextFormField(
//                                       controller: exprience,
//                                       maxLines: 3,
//                                       decoration: InputDecoration(
//                                         //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                         labelText: "Experience",
//                                       ),
//                                     ),
//                                     if (MediaQuery.of(context).size.width >=
//                                         1200)
//                                       Text(""),
//                                     if (MediaQuery.of(context).size.width >=
//                                         1200)
//                                       Text(""),
//                                     Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         Text(
//                                           "PAYROLL DETAILS ",
//                                           style: TextStyle(
//                                               fontSize: 18,
//                                               color: kPrimaryColor),
//                                         ),
//                                         Divider(
//                                           thickness: 5,
//                                           color: kPrimaryColor,
//                                         ),
//                                       ],
//                                     ),
//                                     if (MediaQuery.of(context).size.width >=
//                                         1200)
//                                       Text(""),
//                                     if (MediaQuery.of(context).size.width >
//                                         1050)
//                                       Text(""),
//                                     TextFormField(
//                                       controller: epfno,
//                                       decoration: InputDecoration(
//                                         //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                         labelText: "EPF No",
//                                       ),
//                                     ),
//                                     TextFormField(
//                                       controller: bsalary,
//                                       decoration: InputDecoration(
//                                         //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                         labelText: "Basic Salary",
//                                       ),
//                                     ),
//                                     DropdownButton<String>(
//                                       borderRadius: BorderRadius.circular(5),
//                                       hint: Text("Contract Type"),
//                                       value: contract,
//                                       isExpanded: true,
//                                       items:
//                                           Dropdown.contract.map((String val) {
//                                         return DropdownMenuItem<String>(
//                                           value: val,
//                                           child: Text(val),
//                                         );
//                                       }).toList(),
//                                       onChanged: (String? num) async {
//                                         if (num != null) {
//                                           setState(() {
//                                             contract = num;
//                                           });
//                                         }
//                                       },
//                                     ),
//                                     TextFormField(
//                                       controller: location,
//                                       decoration: InputDecoration(
//                                         //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                         labelText: "Location",
//                                       ),
//                                     ),
//                                     if (MediaQuery.of(context).size.width >=
//                                         1200)
//                                       Text(""),
//                                     if (MediaQuery.of(context).size.width >=
//                                         1200)
//                                       Text(""),
//                                     Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         Text(
//                                           "BANK INFO ",
//                                           style: TextStyle(
//                                               fontSize: 18,
//                                               color: kPrimaryColor),
//                                         ),
//                                         Divider(
//                                           thickness: 5,
//                                           color: kPrimaryColor,
//                                         ),
//                                       ],
//                                     ),
//                                     if (MediaQuery.of(context).size.width >=
//                                         1200)
//                                       Text(""),
//                                     if (MediaQuery.of(context).size.width >
//                                         1050)
//                                       Text(""),
//                                     TextFormField(
//                                       controller: bankacnm,
//                                       decoration: InputDecoration(
//                                         //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                         labelText: "Bank Account Name",
//                                       ),
//                                     ),
//                                     TextFormField(
//                                       controller: bankacno,
//                                       decoration: InputDecoration(
//                                         //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                         labelText: "Bank Account No",
//                                       ),
//                                     ),
//                                     TextFormField(
//                                       controller: banknm,
//                                       decoration: InputDecoration(
//                                         //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                         labelText: "Bank Name",
//                                       ),
//                                     ),
//                                     TextFormField(
//                                       controller: branchnm,
//                                       decoration: InputDecoration(
//                                         //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                         labelText: "Branch Name",
//                                       ),
//                                     ),
//                                     if (MediaQuery.of(context).size.width >=
//                                         1200)
//                                       Text(""),
//                                     if (MediaQuery.of(context).size.width >=
//                                         1200)
//                                       Text(""),
//                                     Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         Text(
//                                           "SOCIAL LINKS DETAILS ",
//                                           style: TextStyle(
//                                               fontSize: 18,
//                                               color: kPrimaryColor),
//                                         ),
//                                         Divider(
//                                           thickness: 5,
//                                           color: kPrimaryColor,
//                                         ),
//                                       ],
//                                     ),
//                                     if (MediaQuery.of(context).size.width >=
//                                         1200)
//                                       Text(""),
//                                     if (MediaQuery.of(context).size.width >
//                                         1050)
//                                       Text(""),
//                                     TextFormField(
//                                       controller: fburl,
//                                       decoration: InputDecoration(
//                                         //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                         labelText: "Facebook URL",
//                                       ),
//                                     ),
//                                     TextFormField(
//                                       controller: twitterurl,
//                                       decoration: InputDecoration(
//                                         //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                         labelText: "Twitter URL",
//                                       ),
//                                     ),
//                                     TextFormField(
//                                       controller: linkedinurl,
//                                       decoration: InputDecoration(
//                                         //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                         labelText: "Linkedin URL",
//                                       ),
//                                     ),
//                                     TextFormField(
//                                       controller: instraurl,
//                                       decoration: InputDecoration(
//                                         //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                         labelText: "Instragram URL",
//                                       ),
//                                     ),
//                                     if (MediaQuery.of(context).size.width >=
//                                         1200)
//                                       Text(""),
//                                     if (MediaQuery.of(context).size.width >=
//                                         1200)
//                                       Text(""),
//                                     Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         Text(
//                                           "DOCUMENT INFO ",
//                                           style: TextStyle(
//                                               fontSize: 18,
//                                               color: kPrimaryColor),
//                                         ),
//                                         Divider(
//                                           thickness: 5,
//                                           color: kPrimaryColor,
//                                         ),
//                                       ],
//                                     ),
//                                     if (MediaQuery.of(context).size.width >=
//                                         1200)
//                                       Text(""),
//                                     if (MediaQuery.of(context).size.width >
//                                         1050)
//                                       Text(""),
//                                     TextFormField(
//                                         controller: resume,
//                                         decoration: InputDecoration(
//                                           //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                           labelText: "Resume",
//                                           suffixIcon: IconButton(
//                                               onPressed: () => pick_image(
//                                                   ImageSource.gallery),
//                                               icon: Icon(Icons
//                                                   .add_photo_alternate_outlined)),
//                                         )),
//                                     TextFormField(
//                                       controller: joinletter,
//                                       decoration: InputDecoration(
//                                         //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                         labelText: "Joining Letter",
//                                         suffixIcon: IconButton(
//                                             onPressed: () =>
//                                                 pick_image(ImageSource.gallery),
//                                             icon: Icon(Icons
//                                                 .add_photo_alternate_outlined)),
//                                       ),
//                                     ),
//                                     TextFormField(
//                                         controller: other,
//                                         decoration: InputDecoration(
//                                           //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                           labelText: "Other Document",
//                                           suffixIcon: IconButton(
//                                               onPressed: () => pick_image(
//                                                   ImageSource.gallery),
//                                               icon: Icon(Icons
//                                                   .add_photo_alternate_outlined)),
//                                         )),
//                                     if (MediaQuery.of(context).size.width >=
//                                         1050)
//                                       Text(""),
//                                     Center(
//                                         child: FlatButton(
//                                             height: 45,
//                                             minWidth: 150,
//                                             shape: RoundedRectangleBorder(
//                                                 borderRadius:
//                                                     BorderRadius.circular(
//                                                         18.0)),
//                                             color: kPrimaryColor,
//                                             onPressed: () {
//                                               print(sno.text +
//                                                   role +
//                                                   department +
//                                                   designation +
//                                                   fname.text +
//                                                   lname.text +
//                                                   fathernm.text +
//                                                   mothernm.text +
//                                                   email.text +
//                                                   gender +
//                                                   dob.text +
//                                                   dojoin.text +
//                                                   mno.text +
//                                                   mstatus +
//                                                   emno.text +
//                                                   dlicense.text +
//                                                   sphoto.text +
//                                                   caddress.text +
//                                                   paddress.text +
//                                                   qualification.text +
//                                                   exprience.text +
//                                                   epfno.text +
//                                                   bsalary.text +
//                                                   contract +
//                                                   location.text +
//                                                   bankacnm.text +
//                                                   bankacno.text +
//                                                   banknm.text +
//                                                   branchnm.text +
//                                                   fburl.text +
//                                                   twitterurl.text +
//                                                   linkedinurl.text +
//                                                   instraurl.text +
//                                                   resume.text +
//                                                   joinletter.text +
//                                                   other.text);
//                                             },
//                                             child: Text(
//                                               "Save Student",
//                                               style: TextStyle(
//                                                   fontSize: 17,
//                                                   color: Colors.white),
//                                             )))
//                                   ],
//                                 )),
//                               ),
//                             ],
//                           )),
//                     ),
//                   ]))
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
