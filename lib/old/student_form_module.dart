// import 'dart:io';
// import 'package:csv/csv.dart';
// import 'package:erp_main_project/constants/dropdown_values.dart';
// import 'package:erp_main_project/database/add_student_map.dart';
// import 'package:erp_main_project/database/database.dart';
// import 'package:erp_main_project/models/student_details_model.dart';
// import 'package:file_picker/file_picker.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:erp_main_project/constants/constants.dart';
// import 'package:flutter/services.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:random_string/random_string.dart';
//
// class StudentForm extends StatefulWidget {
//   @override
//   _StudentFormState createState() => _StudentFormState();
// }
//
// class _StudentFormState extends State<StudentForm> {
//   File? image;
//   Student student = Student();
//   AddStudentMap studentMap = AddStudentMap();
//   Database database = Database();
//   String bloddgrp = "Select Blood Group";
//   String gender = "Select Gender";
//   String degree = "Degree";
//   String university = "University";
//   String branch = "Branch";
//   String Shift = "Shift";
//   String year = "Year";
//   String subbranch = "Sub Batch";
//   String batch = "Batch";
//   String religion = "Select Religion";
//   String noncremylayer = "Non Creamylayer Attached";
//   String isphysically = "Is Physically Handicapped";
//   String isminority = "Is Minority";
//   String feespackage = "Fees Package";
//   String foccupation = "Father's Occupation";
//   String feducation = "Father's Education";
//   String moccupation = "Mother's Occupation";
//   String meducation = "Mother's Education";
//   String transport = "Transport";
//   TextEditingController dob = TextEditingController();
//   bool isLoading = false;
//   List<String> fieldsNames = [
//     "type",
//     "firstName",
//     "middleName",
//     "lastName",
//     "studentUniversity",
//     "studentCourse",
//     "studentBranch",
//     "courseYear",
//     "dob",
//     "academicYear",
//     "birthPlace",
//     "bloodGroup",
//     "gender",
//     "nationality",
//     "religion",
//     "caste",
//     "subCaste",
//     "nonCremy",
//     "previousSchoolBoard",
//     "previousExamName",
//     "password",
//     "previousExamPercentage",
//     "seatNo",
//     "passYear",
//     "state",
//     "address",
//     "isPhysicallyChallenged",
//     "isMinority",
//     "grNo",
//     "gapDetail",
//     "studentMobileNo",
//     "email",
//     "feesAmount",
//     "fatherName",
//     "fatherOccupation",
//     "fatherEducation",
//     "fatherAnnualIncome",
//     "fatherEmail",
//     "fatherContactNo",
//     "fatherOfficeAddress",
//     "fatherOfficeContactNo",
//     "motherName",
//     "motherOccupation",
//     "motherEducation",
//     "motherAnnualIncome",
//     "motherEmail",
//     "motherContact",
//     "motherOfficeAddress",
//     "motherOfficeContact",
//     "ressidencialAddress",
//     "permanentAddress",
//     "transport",
//     "birthCertificate",
//     "transferCertificate",
//     "markSheet",
//     "uid",
//   ];
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
//   Future<dynamic> excelToJson() async {
//     FilePickerResult? result = await FilePicker.platform.pickFiles(
//       type: FileType.custom,
//       allowedExtensions: ['xls', 'xlsx', 'csv'],
//     );
//     var csvFile;
//     var bytes;
//     if (result != null) {
//       if (kIsWeb) {
//         bytes = result.files.first.bytes!;
//       } else {
//         csvFile = File(result.files.single.path!);
//         bytes = File(csvFile.path).readAsBytesSync();
//       }
//       // csvFile = File(result.files.single.path!);
//       // var bytes = File(csvFile.path).readAsBytesSync();
//       String s = String.fromCharCodes(bytes);
//       List<List<dynamic>> rowsAsListOfValues =
//           const CsvToListConverter().convert(s);
//       int i = 0;
//       List<String> keys = [];
//       var jsonMap = [];
//
//       for (var row in rowsAsListOfValues) {
//         if (i == 0) {
//           for (var rowData in row) {
//             if (fieldsNames.contains(rowData)) {
//               keys.add(rowData);
//             } else {
//               print("In Excel sheet, header $rowData has wrongly spelled");
//               return null;
//             }
//           }
//           i++;
//         } else {
//           Map<String, dynamic> temp = {};
//           int j = 0;
//           String tk = '';
//           for (var key in keys) {
//             tk = key;
//             temp[tk] = row[j] == null ? "" : row[j].toString();
//             j++;
//           }
//           temp["uid"] = temp["firstName"][0].toLowerCase() + randomNumeric(6);
//           Student studentModel = Student.fromJson(temp);
//           jsonMap.add(studentModel);
//         }
//       }
//
//       print(jsonMap);
//       return jsonMap;
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
//             width: 1400,
//             child: Container(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   SingleChildScrollView(
//                     scrollDirection: Axis.horizontal,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Padding(
//                           padding:
//                               EdgeInsets.only(left: 40, right: 40, top: 20),
//                           child: TextButton.icon(
//                               onPressed: () {
//                                 Navigator.pop(context);
//                               },
//                               icon:
//                                   Icon(Icons.arrow_back, color: kPrimaryColor),
//                               label: Text("Back",
//                                   style: TextStyle(color: kPrimaryColor))),
//                         ),
//                         Padding(
//                           padding:
//                               EdgeInsets.only(left: 40, right: 40, top: 20),
//                           child: Text(" Student Admission Form",
//                               style: TextStyle(
//                                   fontSize: 20, color: kPrimaryColor)),
//                         ),
//                         Padding(
//                           padding:
//                               EdgeInsets.only(left: 350, right: 40, top: 20),
//                           child: Center(
//                             child: FlatButton.icon(
//                               icon:
//                                   Icon(Icons.arrow_upward, color: Colors.white),
//                               label: Text("Upload Excel",
//                                   style: TextStyle(
//                                       fontSize: 17, color: Colors.white)),
//                               height: 45,
//                               minWidth: 150,
//                               shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(18.0)),
//                               color: kPrimaryColor,
//                               onPressed: () async {
//                                 var jsonMap = await excelToJson();
//                                 if (jsonMap != null) {
//                                   setState(() {
//                                     isLoading = true;
//                                   });
//                                   jsonMap.forEach((studentDetail) async {
//                                     var mapData = studentDetail.toJson();
//                                     await Database().addStudents(mapData);
//                                   });
//                                   setState(() {
//                                     isLoading = false;
//                                   });
//                                 }
//                               },
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   isLoading
//                       ? Center(child: CircularProgressIndicator())
//                       : Expanded(
//                           child: ListView(
//                             children: [
//                               Padding(
//                                 padding: EdgeInsets.only(
//                                   left: 40,
//                                   right: 40,
//                                 ),
//                                 child: Container(
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(7),
//                                   ),
//                                   //padding: (displayMobileLayout==true)?EdgeInsets.only(top:15,left: 10,right:10,bottom: 15):(MediaQuery.of(context).size.width<1024)?EdgeInsets.only(top:20,left: 25,right:25,bottom: 20):EdgeInsets.only(top:25,left: 30,right:30,bottom: 25),
//                                   width: MediaQuery.of(context).size.width,
//                                   child: Column(
//                                     children: [
//                                       Container(
//                                         decoration: BoxDecoration(
//                                           borderRadius:
//                                               BorderRadius.circular(7),
//                                         ),
//                                         padding: (displayMobileLayout == true)
//                                             ? EdgeInsets.only(
//                                                 top: 15,
//                                                 left: 10,
//                                                 right: 10,
//                                                 bottom: 15)
//                                             : (MediaQuery.of(context)
//                                                         .size
//                                                         .width <
//                                                     1024)
//                                                 ? EdgeInsets.only(
//                                                     top: 20,
//                                                     left: 25,
//                                                     right: 25,
//                                                     bottom: 20)
//                                                 : EdgeInsets.only(
//                                                     top: 25,
//                                                     left: 30,
//                                                     right: 30,
//                                                     bottom: 25),
//                                         width:
//                                             MediaQuery.of(context).size.width,
//                                         child: Container(
//                                           child: GridView.count(
//                                             physics:
//                                                 NeverScrollableScrollPhysics(),
//                                             childAspectRatio:
//                                                 MediaQuery.of(context)
//                                                             .size
//                                                             .width >
//                                                         1024
//                                                     ? (1 / 0.18)
//                                                     : MediaQuery.of(context)
//                                                                 .size
//                                                                 .width >
//                                                             640
//                                                         ? (1 / 0.09)
//                                                         : (1 / 0.13),
//                                             crossAxisCount:
//                                                 (displayMobileLayout == true)
//                                                     ? 1
//                                                     : (MediaQuery.of(context)
//                                                                 .size
//                                                                 .width <
//                                                             1050)
//                                                         ? 1
//                                                         : (MediaQuery.of(
//                                                                         context)
//                                                                     .size
//                                                                     .width <
//                                                                 1200)
//                                                             ? 2
//                                                             : 3,
//                                             mainAxisSpacing: 0,
//                                             crossAxisSpacing: 18,
//                                             shrinkWrap: true,
//                                             children: [
//                                               Column(
//                                                 crossAxisAlignment:
//                                                     CrossAxisAlignment.start,
//                                                 children: [
//                                                   Text(
//                                                     "PERSONAL INFO ",
//                                                     style: TextStyle(
//                                                         fontSize: 18,
//                                                         color: kPrimaryColor),
//                                                   ),
//                                                   Divider(
//                                                     thickness: 5,
//                                                     color: kPrimaryColor,
//                                                   ),
//                                                 ],
//                                               ),
//                                               if (MediaQuery.of(context)
//                                                       .size
//                                                       .width >=
//                                                   1200)
//                                                 Text(""),
//                                               if (MediaQuery.of(context)
//                                                       .size
//                                                       .width >
//                                                   1050)
//                                                 Text(""),
//                                               TextFormField(
//                                                 onChanged: (value) {
//                                                   student.firstName = value;
//                                                 },
//                                                 // controller: fname,
//                                                 decoration: InputDecoration(
//                                                   //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                                   labelText: "First Name",
//                                                 ),
//                                               ),
//                                               TextFormField(
//                                                 onChanged: (value) {
//                                                   student.middleName = value;
//                                                 },
//                                                 decoration: InputDecoration(
//                                                   //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                                   labelText: "Middle Name",
//                                                 ),
//                                               ),
//                                               TextFormField(
//                                                 onChanged: (value) {
//                                                   student.lastName = value;
//                                                 },
//                                                 decoration: InputDecoration(
//                                                   //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                                   labelText: "Last Name",
//                                                 ),
//                                               ),
//                                               TextFormField(
//                                                 onChanged: (value) {
//                                                   student.dob = value;
//                                                 },
//                                                 readOnly: true,
//                                                 controller: dob,
//                                                 decoration: InputDecoration(
//                                                     //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                                     labelText: "Date Of Birth",
//                                                     hintText:
//                                                         "Date Format must be DD-MM-YYYY",
//                                                     suffixIcon: IconButton(
//                                                         onPressed: () async {
//                                                           DateTime? date =
//                                                               DateTime(1900);
//                                                           FocusScope.of(context)
//                                                               .requestFocus(
//                                                                   new FocusNode());
//                                                           date =
//                                                               await showDatePicker(
//                                                             helpText:
//                                                                 "Select Date Of Birth",
//                                                             context: context,
//                                                             initialDate:
//                                                                 DateTime.now(),
//                                                             firstDate:
//                                                                 DateTime(1900),
//                                                             lastDate:
//                                                                 DateTime.now(),
//                                                           );
//                                                           student.dob = date!
//                                                                   .day
//                                                                   .toString() +
//                                                               "/" +
//                                                               date.month
//                                                                   .toString() +
//                                                               "/" +
//                                                               date.year
//                                                                   .toString();
//                                                           student.dob = student
//                                                                   .dob! +
//                                                               " ( " +
//                                                               (DateTime.now()
//                                                                           .year -
//                                                                       date.year)
//                                                                   .toString() +
//                                                               " year " +
//                                                               " old )";
//                                                           dob.text =
//                                                               student.dob!;
//                                                         },
//                                                         icon: Icon(Icons
//                                                             .calendar_today_outlined))),
//                                               ),
//                                               TextFormField(
//                                                 onChanged: (value) {
//                                                   student.nationality = value;
//                                                 },
//                                                 decoration: InputDecoration(
//                                                   //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                                   labelText: "Birth Place",
//                                                 ),
//                                               ),
//                                               DropdownButton<String>(
//                                                 borderRadius:
//                                                     BorderRadius.circular(5),
//                                                 hint: Text(
//                                                     "Select Academic Year"),
//                                                 value: student.academicYear,
//                                                 isExpanded: true,
//                                                 items: Dropdown.academicyear
//                                                     .map((String val) {
//                                                   return DropdownMenuItem<
//                                                       String>(
//                                                     value: val,
//                                                     child: Text(val),
//                                                   );
//                                                 }).toList(),
//                                                 onChanged: (String? num) async {
//                                                   if (num != null) {
//                                                     setState(() {
//                                                       student.academicYear =
//                                                           num;
//                                                     });
//                                                   }
//                                                 },
//                                               ),
//                                               DropdownButton<String>(
//                                                 borderRadius:
//                                                     BorderRadius.circular(5),
//                                                 hint:
//                                                     Text("Select Blood Group"),
//                                                 value: student.bloodGroup,
//                                                 isExpanded: true,
//                                                 items: Dropdown.bloodgrp
//                                                     .map((String val) {
//                                                   return DropdownMenuItem<
//                                                       String>(
//                                                     value: val,
//                                                     child: Text(val),
//                                                   );
//                                                 }).toList(),
//                                                 onChanged: (String? num) async {
//                                                   if (num != null) {
//                                                     setState(() {
//                                                       student.bloodGroup = num;
//                                                     });
//                                                   }
//                                                 },
//                                               ),
//                                               DropdownButton<String>(
//                                                 borderRadius:
//                                                     BorderRadius.circular(5),
//                                                 hint: Text("Select Gender"),
//                                                 value: student.gender,
//                                                 isExpanded: true,
//                                                 items: Dropdown.gender
//                                                     .map((String val) {
//                                                   return DropdownMenuItem<
//                                                       String>(
//                                                     value: val,
//                                                     child: Text(val),
//                                                   );
//                                                 }).toList(),
//                                                 onChanged: (String? num) async {
//                                                   if (num != null) {
//                                                     setState(() {
//                                                       student.gender = num;
//                                                     });
//                                                   }
//                                                 },
//                                               ),
//                                               TextFormField(
//                                                 decoration: InputDecoration(
//                                                   //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                                   labelText: "Nationality",
//                                                 ),
//                                               ),
//                                               DropdownButton<String>(
//                                                 borderRadius:
//                                                     BorderRadius.circular(5),
//                                                 value: student.religion,
//                                                 hint: Text(
//                                                   religion,
//                                                 ),
//                                                 isExpanded: true,
//                                                 items: Dropdown.religion
//                                                     .map((String val) {
//                                                   return DropdownMenuItem<
//                                                       String>(
//                                                     value: val,
//                                                     child: Text(val),
//                                                   );
//                                                 }).toList(),
//                                                 onChanged: (String? num) async {
//                                                   if (num != null) {
//                                                     setState(() {
//                                                       student.religion = num;
//                                                     });
//                                                   }
//                                                 },
//                                               ),
//                                               TextFormField(
//                                                 onChanged: (value) {
//                                                   student.caste = value;
//                                                 },
//                                                 decoration: InputDecoration(
//                                                   //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                                   labelText: "Caste",
//                                                 ),
//                                               ),
//                                               TextFormField(
//                                                 onChanged: (value) {
//                                                   student.subCaste = value;
//                                                 },
//                                                 decoration: InputDecoration(
//                                                   //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                                   labelText: "Sub Caste",
//                                                 ),
//                                               ),
//                                               DropdownButton<String>(
//                                                 borderRadius:
//                                                     BorderRadius.circular(5),
//                                                 hint: Text(
//                                                     "Non creamylayer Attached "),
//                                                 value: student.nonCremy,
//                                                 isExpanded: true,
//                                                 items: Dropdown.noncrymelayer
//                                                     .map((String val) {
//                                                   return DropdownMenuItem<
//                                                       String>(
//                                                     value: val,
//                                                     child: Text(val),
//                                                   );
//                                                 }).toList(),
//                                                 onChanged: (String? num) async {
//                                                   if (num != null) {
//                                                     setState(() {
//                                                       student.nonCremy = num;
//                                                     });
//                                                   }
//                                                 },
//                                               ),
//                                               TextFormField(
//                                                 onChanged: (value) {
//                                                   student.previousSchoolBoard =
//                                                       value;
//                                                 },
//                                                 decoration: InputDecoration(
//                                                   //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                                   labelText:
//                                                       "Qualifying exam board",
//                                                 ),
//                                               ),
//                                               TextFormField(
//                                                 onChanged: (value) {
//                                                   student.previousExamName =
//                                                       value;
//                                                 },
//                                                 decoration: InputDecoration(
//                                                   //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                                   labelText:
//                                                       "Qualifying Exam name ",
//                                                 ),
//                                               ),
//                                               TextFormField(
//                                                 onChanged: (value) {
//                                                   student.seatNo = value;
//                                                 },
//                                                 decoration: InputDecoration(
//                                                   //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                                   labelText: "Seat Number ",
//                                                 ),
//                                               ),
//                                               TextFormField(
//                                                 onChanged: (value) {
//                                                   student.previousExamPercentage =
//                                                       value;
//                                                 },
//                                                 decoration: InputDecoration(
//                                                   //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                                   labelText:
//                                                       "Qualifying Exam Percentage  ",
//                                                 ),
//                                               ),
//                                               TextFormField(
//                                                 onChanged: (value) {
//                                                   student.passYear = value;
//                                                 },
//                                                 decoration: InputDecoration(
//                                                   //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                                   labelText: "Passing Year ",
//                                                 ),
//                                               ),
//                                               TextFormField(
//                                                 onChanged: (value) {
//                                                   student.state = value;
//                                                 },
//                                                 decoration: InputDecoration(
//                                                   //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                                   labelText: "State",
//                                                 ),
//                                               ),
//                                               TextFormField(
//                                                 onChanged: (value) {
//                                                   student.address = value;
//                                                 },
//                                                 maxLines: 3,
//                                                 decoration: InputDecoration(
//                                                   //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                                   labelText: "Address ",
//                                                 ),
//                                               ),
//                                               DropdownButton<String>(
//                                                 borderRadius:
//                                                     BorderRadius.circular(5),
//                                                 hint: Text(
//                                                     "Is physically handicapped "),
//                                                 value: student
//                                                     .isPhysicallyChallenged,
//                                                 isExpanded: true,
//                                                 items: Dropdown.physically
//                                                     .map((String val) {
//                                                   return DropdownMenuItem<
//                                                       String>(
//                                                     value: val,
//                                                     child: Text(val),
//                                                   );
//                                                 }).toList(),
//                                                 onChanged: (String? num) async {
//                                                   if (num != null) {
//                                                     setState(() {
//                                                       student.isPhysicallyChallenged =
//                                                           num;
//                                                     });
//                                                   }
//                                                 },
//                                               ),
//                                               DropdownButton<String>(
//                                                 borderRadius:
//                                                     BorderRadius.circular(5),
//                                                 hint: Text("Is Minority "),
//                                                 value: student.isMinority,
//                                                 isExpanded: true,
//                                                 items: Dropdown.minority
//                                                     .map((String val) {
//                                                   return DropdownMenuItem<
//                                                       String>(
//                                                     value: val,
//                                                     child: Text(val),
//                                                   );
//                                                 }).toList(),
//                                                 onChanged: (String? num) async {
//                                                   if (num != null) {
//                                                     setState(() {
//                                                       student.isMinority = num;
//                                                     });
//                                                   }
//                                                 },
//                                               ),
//                                               TextFormField(
//                                                 onChanged: (value) {
//                                                   student.grNo = value;
//                                                 },
//                                                 decoration: InputDecoration(
//                                                   //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                                   labelText: "GR Number ",
//                                                 ),
//                                               ),
//                                               TextFormField(
//                                                 onChanged: (value) {
//                                                   student.gapDetail = value;
//                                                 },
//                                                 maxLines: 2,
//                                                 decoration: InputDecoration(
//                                                   //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                                   labelText: "Gap Details",
//                                                 ),
//                                               ),
//                                               TextFormField(
//                                                 onChanged: (value) {
//                                                   student.studentMobileNo =
//                                                       value;
//                                                 },
//                                                 decoration: InputDecoration(
//                                                   //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                                   labelText: "Mobile Number",
//                                                 ),
//                                               ),
//                                               TextFormField(
//                                                 onChanged: (value) {
//                                                   student.email = value;
//                                                 },
//                                                 decoration: InputDecoration(
//                                                   //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                                   labelText: "Email Address",
//                                                 ),
//                                               ),
//
//                                               if (MediaQuery.of(context)
//                                                       .size
//                                                       .width >=
//                                                   1200)
//                                                 Text(""),
//                                               Column(
//                                                 crossAxisAlignment:
//                                                     CrossAxisAlignment.start,
//                                                 children: [
//                                                   Text(
//                                                     "ADMISSION INFO ",
//                                                     style: TextStyle(
//                                                         fontSize: 18,
//                                                         color: kPrimaryColor),
//                                                   ),
//                                                   Divider(
//                                                     thickness: 5,
//                                                     color: kPrimaryColor,
//                                                   ),
//                                                 ],
//                                               ),
//                                               if (MediaQuery.of(context)
//                                                       .size
//                                                       .width >=
//                                                   1200)
//                                                 Text(""),
//                                               if (MediaQuery.of(context)
//                                                       .size
//                                                       .width >=
//                                                   1024)
//                                                 Text(""),
//                                               DropdownButton<String>(
//                                                 borderRadius:
//                                                     BorderRadius.circular(5),
//                                                 hint: Text("Degree"),
//                                                 value: degree,
//                                                 isExpanded: true,
//                                                 items: Dropdown.degree
//                                                     .map((String val) {
//                                                   return DropdownMenuItem<
//                                                       String>(
//                                                     value: val,
//                                                     child: Text(val),
//                                                   );
//                                                 }).toList(),
//                                                 onChanged: (String? num) async {
//                                                   if (num != null) {
//                                                     setState(() {
//                                                       degree = num;
//                                                     });
//                                                   }
//                                                 },
//                                               ),
//                                               DropdownButton<String>(
//                                                 borderRadius:
//                                                     BorderRadius.circular(5),
//                                                 hint: Text("University"),
//                                                 value: university,
//                                                 isExpanded: true,
//                                                 items: Dropdown.university
//                                                     .map((String val) {
//                                                   return DropdownMenuItem<
//                                                       String>(
//                                                     value: val,
//                                                     child: Text(val),
//                                                   );
//                                                 }).toList(),
//                                                 onChanged: (String? num) async {
//                                                   if (num != null) {
//                                                     setState(() {
//                                                       university = num;
//                                                     });
//                                                   }
//                                                 },
//                                               ),
//                                               DropdownButton<String>(
//                                                 borderRadius:
//                                                     BorderRadius.circular(5),
//                                                 hint: Text("Branch"),
//                                                 value: branch,
//                                                 isExpanded: true,
//                                                 items: Dropdown.branch
//                                                     .map((String val) {
//                                                   return DropdownMenuItem<
//                                                       String>(
//                                                     value: val,
//                                                     child: Text(val),
//                                                   );
//                                                 }).toList(),
//                                                 onChanged: (String? num) async {
//                                                   if (num != null) {
//                                                     setState(() {
//                                                       branch = num;
//                                                     });
//                                                   }
//                                                 },
//                                               ),
//                                               DropdownButton<String>(
//                                                 borderRadius:
//                                                     BorderRadius.circular(5),
//                                                 hint: Text("Shift"),
//                                                 value: Shift,
//                                                 isExpanded: true,
//                                                 items: Dropdown.shift
//                                                     .map((String val) {
//                                                   return DropdownMenuItem<
//                                                       String>(
//                                                     value: val,
//                                                     child: Text(val),
//                                                   );
//                                                 }).toList(),
//                                                 onChanged: (String? num) async {
//                                                   if (num != null) {
//                                                     setState(() {
//                                                       Shift = num;
//                                                     });
//                                                   }
//                                                 },
//                                               ),
//                                               DropdownButton<String>(
//                                                 borderRadius:
//                                                     BorderRadius.circular(5),
//                                                 hint: Text("Year"),
//                                                 value: year,
//                                                 isExpanded: true,
//                                                 items: Dropdown.year
//                                                     .map((String val) {
//                                                   return DropdownMenuItem<
//                                                       String>(
//                                                     value: val,
//                                                     child: Text(val),
//                                                   );
//                                                 }).toList(),
//                                                 onChanged: (String? num) async {
//                                                   if (num != null) {
//                                                     setState(() {
//                                                       year = num;
//                                                     });
//                                                   }
//                                                 },
//                                               ),
//                                               DropdownButton<String>(
//                                                 borderRadius:
//                                                     BorderRadius.circular(5),
//                                                 hint: Text("Batch"),
//                                                 value: batch,
//                                                 isExpanded: true,
//                                                 items: Dropdown.batch
//                                                     .map((String val) {
//                                                   return DropdownMenuItem<
//                                                       String>(
//                                                     value: val,
//                                                     child: Text(val),
//                                                   );
//                                                 }).toList(),
//                                                 onChanged: (String? num) async {
//                                                   if (num != null) {
//                                                     setState(() {
//                                                       batch = num;
//                                                     });
//                                                   }
//                                                 },
//                                               ),
//                                               DropdownButton<String>(
//                                                 borderRadius:
//                                                     BorderRadius.circular(5),
//                                                 hint: Text("Sub Batch"),
//                                                 value: subbranch,
//                                                 isExpanded: true,
//                                                 items: Dropdown.subbatch
//                                                     .map((String val) {
//                                                   return DropdownMenuItem<
//                                                       String>(
//                                                     value: val,
//                                                     child: Text(val),
//                                                   );
//                                                 }).toList(),
//                                                 onChanged: (String? num) async {
//                                                   if (num != null) {
//                                                     setState(() {
//                                                       subbranch = num;
//                                                     });
//                                                   }
//                                                 },
//                                               ),
//                                               if (MediaQuery.of(context)
//                                                       .size
//                                                       .width >=
//                                                   1200)
//                                                 Text(""),
//                                               if (MediaQuery.of(context)
//                                                       .size
//                                                       .width >=
//                                                   1024)
//                                                 Text(""),
//                                               Column(
//                                                 crossAxisAlignment:
//                                                     CrossAxisAlignment.start,
//                                                 children: [
//                                                   Text(
//                                                     "PARENT/GUARDIAN INFO ",
//                                                     style: TextStyle(
//                                                         fontSize: 18,
//                                                         color: kPrimaryColor),
//                                                   ),
//                                                   Divider(
//                                                     thickness: 5,
//                                                     color: kPrimaryColor,
//                                                   ),
//                                                 ],
//                                               ),
//                                               if (MediaQuery.of(context)
//                                                       .size
//                                                       .width >=
//                                                   1200)
//                                                 Text(""),
//                                               if (MediaQuery.of(context)
//                                                       .size
//                                                       .width >=
//                                                   1024)
//                                                 Text(""),
//                                               TextFormField(
//                                                 onChanged: (value) {
//                                                   student.fatherName = value;
//                                                 },
//                                                 decoration: InputDecoration(
//                                                   //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                                   labelText: "Father's Name",
//                                                 ),
//                                               ),
//                                               DropdownButton<String>(
//                                                 borderRadius:
//                                                     BorderRadius.circular(5),
//                                                 hint: Text(
//                                                     "Father's Occupation "),
//                                                 value: student.fatherOccupation,
//                                                 isExpanded: true,
//                                                 items: Dropdown.foccupation
//                                                     .map((String val) {
//                                                   return DropdownMenuItem<
//                                                       String>(
//                                                     value: val,
//                                                     child: Text(val),
//                                                   );
//                                                 }).toList(),
//                                                 onChanged: (String? num) async {
//                                                   if (num != null) {
//                                                     setState(() {
//                                                       student.fatherOccupation =
//                                                           num;
//                                                     });
//                                                   }
//                                                 },
//                                               ),
//                                               DropdownButton<String>(
//                                                 borderRadius:
//                                                     BorderRadius.circular(5),
//                                                 hint:
//                                                     Text("Father's Education "),
//                                                 value: student.fatherEducation,
//                                                 isExpanded: true,
//                                                 items: Dropdown.feducation
//                                                     .map((String val) {
//                                                   return DropdownMenuItem<
//                                                       String>(
//                                                     value: val,
//                                                     child: Text(val),
//                                                   );
//                                                 }).toList(),
//                                                 onChanged: (String? num) async {
//                                                   if (num != null) {
//                                                     setState(() {
//                                                       student.fatherEducation =
//                                                           num;
//                                                     });
//                                                   }
//                                                 },
//                                               ),
//                                               TextFormField(
//                                                 onChanged: (value) {
//                                                   student.fatherAnnualIncome =
//                                                       value;
//                                                 },
//                                                 decoration: InputDecoration(
//                                                   //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                                   labelText: "Annuoal Income",
//                                                 ),
//                                               ),
//                                               TextFormField(
//                                                 onChanged: (value) {
//                                                   student.fatherEmail = value;
//                                                 },
//                                                 decoration: InputDecoration(
//                                                   //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                                   labelText: "Email id",
//                                                 ),
//                                               ),
//                                               TextFormField(
//                                                 onChanged: (value) {
//                                                   student.fatherContactNo =
//                                                       value;
//                                                 },
//                                                 decoration: InputDecoration(
//                                                   //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                                   labelText: "Contact No",
//                                                 ),
//                                               ),
//                                               TextFormField(
//                                                 onChanged: (value) {
//                                                   student.fatherOfficeAddress =
//                                                       value;
//                                                 },
//                                                 maxLines: 3,
//                                                 decoration: InputDecoration(
//                                                   //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                                   labelText:
//                                                       "Father's Office Address",
//                                                 ),
//                                               ),
//                                               TextFormField(
//                                                 onChanged: (value) {
//                                                   student.fatherOfficeContactNo =
//                                                       value;
//                                                 },
//                                                 decoration: InputDecoration(
//                                                   //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                                   labelText:
//                                                       "Father's Office Contact No",
//                                                 ),
//                                               ),
//                                               if (MediaQuery.of(context)
//                                                       .size
//                                                       .width >=
//                                                   1200)
//                                                 Text(""),
//                                               TextFormField(
//                                                 onChanged: (value) {
//                                                   student.motherName = value;
//                                                 },
//                                                 decoration: InputDecoration(
//                                                   //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                                   labelText: "Mother's Name",
//                                                 ),
//                                               ),
//                                               DropdownButton<String>(
//                                                 borderRadius:
//                                                     BorderRadius.circular(5),
//                                                 hint: Text(
//                                                     "Mother's Occupation "),
//                                                 value: student.motherOccupation,
//                                                 isExpanded: true,
//                                                 items: Dropdown.moccupation
//                                                     .map((String val) {
//                                                   return DropdownMenuItem<
//                                                       String>(
//                                                     value: val,
//                                                     child: Text(val),
//                                                   );
//                                                 }).toList(),
//                                                 onChanged: (String? num) async {
//                                                   if (num != null) {
//                                                     setState(() {
//                                                       student.motherOccupation =
//                                                           num;
//                                                     });
//                                                   }
//                                                 },
//                                               ),
//                                               DropdownButton<String>(
//                                                 borderRadius:
//                                                     BorderRadius.circular(5),
//                                                 hint:
//                                                     Text("Mother's Education "),
//                                                 value: student.motherEducation,
//                                                 isExpanded: true,
//                                                 items: Dropdown.meducation
//                                                     .map((String val) {
//                                                   return DropdownMenuItem<
//                                                       String>(
//                                                     value: val,
//                                                     child: Text(val),
//                                                   );
//                                                 }).toList(),
//                                                 onChanged: (String? num) async {
//                                                   if (num != null) {
//                                                     setState(() {
//                                                       student.motherEducation =
//                                                           num;
//                                                     });
//                                                   }
//                                                 },
//                                               ),
//                                               TextFormField(
//                                                 onChanged: (value) {
//                                                   student.motherAnnualIncome =
//                                                       value;
//                                                 },
//                                                 decoration: InputDecoration(
//                                                   //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                                   labelText: "Annuoal Income",
//                                                 ),
//                                               ),
//                                               TextFormField(
//                                                 onChanged: (value) {
//                                                   student.motherEmail = value;
//                                                 },
//                                                 decoration: InputDecoration(
//                                                   //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                                   labelText: "Email id",
//                                                 ),
//                                               ),
//                                               TextFormField(
//                                                 onChanged: (value) {
//                                                   student.motherContact = value;
//                                                 },
//                                                 decoration: InputDecoration(
//                                                   //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                                   labelText: "Contact No",
//                                                 ),
//                                               ),
//                                               TextFormField(
//                                                 onChanged: (value) {
//                                                   student.motherOfficeAddress =
//                                                       value;
//                                                 },
//                                                 maxLines: 3,
//                                                 decoration: InputDecoration(
//                                                   //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                                   labelText:
//                                                       "Mother's Office Address",
//                                                 ),
//                                               ),
//                                               TextFormField(
//                                                 onChanged: (value) {
//                                                   student.motherOfficeContact =
//                                                       value;
//                                                 },
//                                                 decoration: InputDecoration(
//                                                   //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                                   labelText:
//                                                       "Mother's Office Contact No",
//                                                 ),
//                                               ),
//                                               if (MediaQuery.of(context)
//                                                       .size
//                                                       .width >=
//                                                   1200)
//                                                 Text(""),
//                                               TextFormField(
//                                                 onChanged: (value) {
//                                                   student.ressidencialAddress =
//                                                       value;
//                                                 },
//                                                 maxLines: 3,
//                                                 decoration: InputDecoration(
//                                                   //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                                   labelText:
//                                                       "Residential Address",
//                                                 ),
//                                               ),
//                                               TextFormField(
//                                                 onChanged: (value) {
//                                                   student.permanentAddress =
//                                                       value;
//                                                 },
//                                                 maxLines: 3,
//                                                 decoration: InputDecoration(
//                                                   //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                                   labelText:
//                                                       "Permanent Address",
//                                                 ),
//                                               ),
//                                               DropdownButton<String>(
//                                                 borderRadius:
//                                                     BorderRadius.circular(5),
//                                                 hint: Text("Transport "),
//                                                 value: student.transport,
//                                                 isExpanded: true,
//                                                 items: Dropdown.transport
//                                                     .map((String val) {
//                                                   return DropdownMenuItem<
//                                                       String>(
//                                                     value: val,
//                                                     child: Text(val),
//                                                   );
//                                                 }).toList(),
//                                                 onChanged: (String? num) async {
//                                                   if (num != null) {
//                                                     setState(() {
//                                                       student.transport = num;
//                                                     });
//                                                   }
//                                                 },
//                                               ),
//                                               // if (MediaQuery.of(context).size.width >=
//                                               //     1200)
//                                               //   Text(""),
//                                               if (MediaQuery.of(context)
//                                                           .size
//                                                           .width >=
//                                                       1050 &&
//                                                   MediaQuery.of(context)
//                                                           .size
//                                                           .width <=
//                                                       1200)
//                                                 Text(""),
//                                               Column(
//                                                 crossAxisAlignment:
//                                                     CrossAxisAlignment.start,
//                                                 children: [
//                                                   Text(
//                                                     "UPLOAD DOCUMENTS ",
//                                                     style: TextStyle(
//                                                         fontSize: 18,
//                                                         color: kPrimaryColor),
//                                                   ),
//                                                   Divider(
//                                                     thickness: 5,
//                                                     color: kPrimaryColor,
//                                                   ),
//                                                 ],
//                                               ),
//                                               if (MediaQuery.of(context)
//                                                       .size
//                                                       .width >=
//                                                   1200)
//                                                 Text(""),
//                                               if (MediaQuery.of(context)
//                                                       .size
//                                                       .width >
//                                                   1050)
//                                                 Text(""),
//                                               TextFormField(
//                                                 decoration: InputDecoration(
//                                                   //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                                   labelText: "10th Marksheet",
//                                                   hintText:
//                                                       "10th marksheet seat no",
//                                                   suffix: IconButton(
//                                                     icon: Icon(Icons
//                                                         .add_photo_alternate_outlined),
//                                                     onPressed: () => pickimage(
//                                                         ImageSource.gallery),
//                                                   ),
//                                                 ),
//                                               ),
//                                               TextFormField(
//                                                 decoration: InputDecoration(
//                                                   //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                                   labelText: "12th Markshhet",
//                                                   hintText:
//                                                       "12th marksheet seat no",
//                                                   suffix: IconButton(
//                                                     icon: Icon(Icons
//                                                         .add_photo_alternate_outlined),
//                                                     onPressed: () => pickimage(
//                                                         ImageSource.gallery),
//                                                   ),
//                                                 ),
//                                               ),
//                                               TextFormField(
//                                                 decoration: InputDecoration(
//                                                   //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                                   labelText:
//                                                       "Leaving Certificate",
//                                                   hintText:
//                                                       "leaving certificate doc no",
//                                                   suffix: IconButton(
//                                                     icon: Icon(Icons
//                                                         .add_photo_alternate_outlined),
//                                                     onPressed: () => pickimage(
//                                                         ImageSource.gallery),
//                                                   ),
//                                                 ),
//                                               ),
//                                               TextFormField(
//                                                 decoration: InputDecoration(
//                                                   //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                                   labelText:
//                                                       "Caste Certificate",
//                                                   hintText:
//                                                       "caste certificate doc no",
//                                                   suffix: IconButton(
//                                                     icon: Icon(Icons
//                                                         .add_photo_alternate_outlined),
//                                                     onPressed: () => pickimage(
//                                                         ImageSource.gallery),
//                                                   ),
//                                                 ),
//                                               ),
//                                               TextFormField(
//                                                 decoration: InputDecoration(
//                                                   //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                                   labelText:
//                                                       "Income Certificate",
//                                                   hintText:
//                                                       "income certificate doc no",
//                                                   suffix: IconButton(
//                                                     icon: Icon(Icons
//                                                         .add_photo_alternate_outlined),
//                                                     onPressed: () => pickimage(
//                                                         ImageSource.gallery),
//                                                   ),
//                                                 ),
//                                               ),
//
//                                               if (MediaQuery.of(context)
//                                                       .size
//                                                       .width >=
//                                                   1024)
//                                                 Text(""),
//                                               if (MediaQuery.of(context)
//                                                       .size
//                                                       .width >=
//                                                   1200)
//                                                 Text(""),
//
//                                               Center(
//                                                 child: FlatButton(
//                                                   height: 45,
//                                                   minWidth: 150,
//                                                   shape: RoundedRectangleBorder(
//                                                       borderRadius:
//                                                           BorderRadius.circular(
//                                                               18.0)),
//                                                   color: kPrimaryColor,
//                                                   onPressed: () async {
//                                                     studentMap
//                                                         .mapDetails(student);
//                                                     await database.addStudents(
//                                                         studentMap
//                                                             .studentDetails);
//                                                     Navigator.pop(context);
//                                                   },
//                                                   child: Text(
//                                                     "Save Student",
//                                                     style: TextStyle(
//                                                         fontSize: 17,
//                                                         color: Colors.white),
//                                                   ),
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
