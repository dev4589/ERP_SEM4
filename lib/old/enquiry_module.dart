// import 'package:erp_main_project/constants/dropdown_values.dart';
// import 'package:erp_main_project/database/add_enquiry_map.dart';
// import 'package:erp_main_project/database/database.dart';
// import 'package:erp_main_project/models/enquiry_model.dart';
// import 'package:flutter/material.dart';
// import 'package:erp_main_project/constants/constants.dart';
//
// class EnquiryForm extends StatefulWidget {
//   const EnquiryForm({Key? key}) : super(key: key);
//
//   @override
//   _EnquiryFormState createState() => _EnquiryFormState();
// }
//
// class _EnquiryFormState extends State<EnquiryForm> {
//   EnquiryModel enquiry = EnquiryModel();
//   AddEnquiryMap enquiryMap = AddEnquiryMap();
//   Database database = Database();
//
//   TextEditingController formno = TextEditingController();
//   TextEditingController endate = TextEditingController();
//   TextEditingController name = TextEditingController();
//   TextEditingController dob = TextEditingController();
//   TextEditingController class2 = TextEditingController();
//   TextEditingController schlpresent = TextEditingController();
//   TextEditingController std = TextEditingController();
//   TextEditingController fname = TextEditingController();
//   TextEditingController mname = TextEditingController();
//
//   TextEditingController annualincm = TextEditingController();
//   TextEditingController natureofprofession = TextEditingController();
//   TextEditingController email = TextEditingController();
//   TextEditingController postaladdress = TextEditingController();
//   TextEditingController cno1 = TextEditingController();
//   TextEditingController cno2 = TextEditingController();
//   TextEditingController fcon1 = TextEditingController();
//
//   String gender = "Select Gender";
//   String fqualification = "Father's Education";
//   String mqualification = "Mother's Education";
//   String occupation = "Father's Occupation";
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
//                       child: Text(" Enquiry Form",
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
//                                     ? (1 / 0.18)
//                                     : MediaQuery.of(context).size.width > 640
//                                         ? (1 / 0.09)
//                                         : (1 / 0.13),
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
//                                   Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Text(
//                                         "PERSONAL INFO ",
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
//                                     controller: formno,
//                                     decoration: InputDecoration(
//                                       //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                       labelText: "Form No",
//                                     ),
//                                   ),
//                                   TextFormField(
//                                     readOnly: true,
//                                     controller: endate,
//                                     decoration: InputDecoration(
//                                         //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                         labelText: "Date",
//                                         hintText:
//                                             "Date Format must be DD-MM-YYYY",
//                                         suffixIcon: IconButton(
//                                             onPressed: () async {
//                                               DateTime? date = DateTime(1900);
//                                               FocusScope.of(context)
//                                                   .requestFocus(
//                                                       new FocusNode());
//                                               date = await showDatePicker(
//                                                   helpText:
//                                                       "Select Date Of Admission",
//                                                   context: context,
//                                                   initialDate: DateTime.now(),
//                                                   firstDate: DateTime(1900),
//                                                   lastDate: DateTime.now());
//                                               endate.text =
//                                                   date!.day.toString() +
//                                                       "/" +
//                                                       date.month.toString() +
//                                                       "/" +
//                                                       date.year.toString();
//                                             },
//                                             icon: Icon(Icons
//                                                 .calendar_today_outlined))),
//                                   ),
//                                   TextFormField(
//                                     controller: name,
//                                     decoration: InputDecoration(
//                                       //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                       labelText: "Full Name Of Child",
//                                     ),
//                                   ),
//                                   TextFormField(
//                                     controller: dob,
//                                     readOnly: true,
//                                     decoration: InputDecoration(
//                                         //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                         labelText: "Date Of Birth",
//                                         hintText:
//                                             "Date Format must be DD-MM-YYYY",
//                                         suffixIcon: IconButton(
//                                             onPressed: () async {
//                                               DateTime? date = DateTime(1900);
//                                               FocusScope.of(context)
//                                                   .requestFocus(
//                                                       new FocusNode());
//                                               date = await showDatePicker(
//                                                   helpText:
//                                                       "Select Date Of Birth",
//                                                   context: context,
//                                                   initialDate: DateTime.now(),
//                                                   firstDate: DateTime(1900),
//                                                   lastDate: DateTime.now());
//                                               dob.text = date!.day.toString() +
//                                                   "/" +
//                                                   date.month.toString() +
//                                                   "/" +
//                                                   date.year.toString();
//                                             },
//                                             icon: Icon(Icons
//                                                 .calendar_today_outlined))),
//                                   ),
//                                   DropdownButton<String>(
//                                     borderRadius: BorderRadius.circular(5),
//                                     hint: Text("Select Gender"),
//                                     value: gender,
//                                     isExpanded: true,
//                                     items: Dropdown.gender.map((String val) {
//                                       return DropdownMenuItem<String>(
//                                         value: val,
//                                         child: Text(val),
//                                       );
//                                     }).toList(),
//                                     onChanged: (String? num) async {
//                                       if (num != null) {
//                                         setState(() {
//                                           gender = num;
//                                         });
//                                       }
//                                     },
//                                   ),
//                                   TextFormField(
//                                     controller: class2,
//                                     decoration: InputDecoration(
//                                       //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                       labelText: "Class to be Attemded",
//                                     ),
//                                   ),
//                                   TextFormField(
//                                     controller: schlpresent,
//                                     decoration: InputDecoration(
//                                       //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                       labelText: "School Presently Studying",
//                                     ),
//                                   ),
//                                   TextFormField(
//                                     controller: std,
//                                     decoration: InputDecoration(
//                                       //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                       labelText: "Standard",
//                                     ),
//                                   ),
//                                   TextFormField(
//                                     controller: fname,
//                                     decoration: InputDecoration(
//                                       //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                       labelText: "Father's Name",
//                                     ),
//                                   ),
//                                   DropdownButton<String>(
//                                     borderRadius: BorderRadius.circular(5),
//                                     hint: Text("Father's Occupation"),
//                                     value: fqualification,
//                                     isExpanded: true,
//                                     items:
//                                         Dropdown.feducation.map((String val) {
//                                       return DropdownMenuItem<String>(
//                                         value: val,
//                                         child: Text(val),
//                                       );
//                                     }).toList(),
//                                     onChanged: (String? num) async {
//                                       if (num != null) {
//                                         setState(() {
//                                           fqualification = num;
//                                         });
//                                       }
//                                     },
//                                   ),
//                                   TextFormField(
//                                     controller: mname,
//                                     decoration: InputDecoration(
//                                       //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                       labelText: "Mother's Name",
//                                     ),
//                                   ),
//                                   DropdownButton<String>(
//                                     borderRadius: BorderRadius.circular(5),
//                                     hint: Text("Mother's Education"),
//                                     value: mqualification,
//                                     isExpanded: true,
//                                     items:
//                                         Dropdown.meducation.map((String val) {
//                                       return DropdownMenuItem<String>(
//                                         value: val,
//                                         child: Text(val),
//                                       );
//                                     }).toList(),
//                                     onChanged: (String? num) async {
//                                       if (num != null) {
//                                         setState(() {
//                                           mqualification = num;
//                                         });
//                                       }
//                                     },
//                                   ),
//                                   DropdownButton<String>(
//                                     borderRadius: BorderRadius.circular(5),
//                                     hint: Text("Father's Occupation"),
//                                     value: occupation,
//                                     isExpanded: true,
//                                     items:
//                                         Dropdown.foccupation.map((String val) {
//                                       return DropdownMenuItem<String>(
//                                         value: val,
//                                         child: Text(val),
//                                       );
//                                     }).toList(),
//                                     onChanged: (String? num) async {
//                                       if (num != null) {
//                                         setState(() {
//                                           occupation = num;
//                                         });
//                                       }
//                                     },
//                                   ),
//                                   TextFormField(
//                                     controller: annualincm,
//                                     decoration: InputDecoration(
//                                       //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                       labelText: "Annual Income(INR)",
//                                     ),
//                                   ),
//                                   TextFormField(
//                                     controller: natureofprofession,
//                                     decoration: InputDecoration(
//                                       //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                       labelText: "Nature of Profession",
//                                     ),
//                                   ),
//                                   TextFormField(
//                                     controller: email,
//                                     decoration: InputDecoration(
//                                       //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                       labelText: "Email Id",
//                                     ),
//                                   ),
//                                   TextFormField(
//                                     controller: postaladdress,
//                                     maxLines: 3,
//                                     decoration: InputDecoration(
//                                       //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                       labelText: "Postal Address",
//                                     ),
//                                   ),
//                                   TextFormField(
//                                     controller: cno1,
//                                     decoration: InputDecoration(
//                                       //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                       labelText: "Contact No 1",
//                                     ),
//                                   ),
//                                   TextFormField(
//                                     controller: cno2,
//                                     decoration: InputDecoration(
//                                       //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                       labelText: "Contact No 2",
//                                     ),
//                                   ),
//                                   TextFormField(
//                                     controller: fcon1,
//                                     decoration: InputDecoration(
//                                       //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                       labelText: "Father's Contact No",
//                                     ),
//                                   ),
//                                   if (MediaQuery.of(context).size.width >= 1024)
//                                     Text(""),
//                                   if (MediaQuery.of(context).size.width >= 1200)
//                                     Text(""),
//                                   Center(
//                                       child: FlatButton(
//                                           height: 45,
//                                           minWidth: 150,
//                                           shape: RoundedRectangleBorder(
//                                               borderRadius:
//                                                   BorderRadius.circular(18.0)),
//                                           color: kPrimaryColor,
//                                           onPressed: () async {
//                                             // enquiryMap.mapDetails(enquiry);
//                                             // await database.addEnquiry(
//                                             //     enquiryMap.enquiryDetails);
//                                             // Navigator.pop(context);
//                                           },
//                                           child: Text(
//                                             "Save",
//                                             style: TextStyle(
//                                                 fontSize: 17,
//                                                 color: Colors.white),
//                                           )))
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
