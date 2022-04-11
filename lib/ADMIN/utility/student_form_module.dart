import 'dart:io';
import 'package:csv/csv.dart';
import 'package:erp_sem4/constants/constants.dart';
import 'package:erp_sem4/constants/dropdown_values.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:random_string/random_string.dart';

class StudentForm extends StatefulWidget {
  @override
  _StudentFormState createState() => _StudentFormState();
}

class _StudentFormState extends State<StudentForm> {
  File? image;
  String degree = "Degree";
  String university = "University";
  String branch = "Branch";
  String Shift = "Shift";
  String year = "Year";
  String subbranch = "Sub Batch";
  String batch = "Batch";
  String religion = "Select Religion";
  bool isLoading = false;

  TextEditingController fname = TextEditingController();
  TextEditingController mname = TextEditingController();
  TextEditingController lname = TextEditingController();
  TextEditingController dob = TextEditingController();
  TextEditingController birthPlace = TextEditingController();


  Future pickimage(ImageSource src) async {
    try {
      final image = await ImagePicker().pickImage(source: src);
      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() {
        this.image = imageTemp;
      });
    } on PlatformException catch (e) {
      print("Failed to pick image : $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final bool displayMobileLayout = MediaQuery.of(context).size.width < 800;
    return Padding(
      padding: EdgeInsets.all(16),
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
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(left: 40, right: 40, top: 20),
                          child: TextButton.icon(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon:
                                  Icon(Icons.arrow_back, color: kPrimaryColor),
                              label: Text("Back",
                                  style: TextStyle(color: kPrimaryColor))),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 40, right: 40, top: 20),
                          child: Text(" Student Admission Form",
                              style: TextStyle(
                                  fontSize: 20, color: kPrimaryColor)),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 350, right: 40, top: 20),
                          // child: Center(
                          //   child: FlatButton.icon(
                          //     icon:
                          //         Icon(Icons.arrow_upward, color: Colors.white),
                          //     label: Text("Upload Excel",
                          //         style: TextStyle(
                          //             fontSize: 17, color: Colors.white)),
                          //     height: 45,
                          //     minWidth: 150,
                          //     shape: RoundedRectangleBorder(
                          //         borderRadius: BorderRadius.circular(18.0)),
                          //     color: kPrimaryColor,
                          //     onPressed: () {},
                          //   ),
                          // ),
                        ),
                      ],
                    ),
                  ),
                  isLoading
                      ? Center(child: CircularProgressIndicator())
                      : Expanded(
                          child: ListView(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 40,
                                  right: 40,
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  //padding: (displayMobileLayout==true)?EdgeInsets.only(top:15,left: 10,right:10,bottom: 15):(MediaQuery.of(context).size.width<1024)?EdgeInsets.only(top:20,left: 25,right:25,bottom: 20):EdgeInsets.only(top:25,left: 30,right:30,bottom: 25),
                                  width: MediaQuery.of(context).size.width,
                                  child: Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(7),
                                        ),
                                        padding: (displayMobileLayout == true)
                                            ? EdgeInsets.only(
                                                top: 15,
                                                left: 10,
                                                right: 10,
                                                bottom: 15)
                                            : (MediaQuery.of(context)
                                                        .size
                                                        .width <
                                                    1024)
                                                ? EdgeInsets.only(
                                                    top: 20,
                                                    left: 25,
                                                    right: 25,
                                                    bottom: 20)
                                                : EdgeInsets.only(
                                                    top: 25,
                                                    left: 30,
                                                    right: 30,
                                                    bottom: 25),
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: Container(
                                          child: GridView.count(
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            childAspectRatio:
                                                MediaQuery.of(context)
                                                            .size
                                                            .width >
                                                        1024
                                                    ? (1 / 0.18)
                                                    : MediaQuery.of(context)
                                                                .size
                                                                .width >
                                                            640
                                                        ? (1 / 0.09)
                                                        : (1 / 0.13),
                                            crossAxisCount:
                                                (displayMobileLayout == true)
                                                    ? 1
                                                    : (MediaQuery.of(context)
                                                                .size
                                                                .width <
                                                            1050)
                                                        ? 1
                                                        : (MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width <
                                                                1200)
                                                            ? 2
                                                            : 3,
                                            mainAxisSpacing: 0,
                                            crossAxisSpacing: 18,
                                            shrinkWrap: true,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "PERSONAL INFO ",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: kPrimaryColor),
                                                  ),
                                                  Divider(
                                                    thickness: 5,
                                                    color: kPrimaryColor,
                                                  ),
                                                ],
                                              ),
                                              if (MediaQuery.of(context)
                                                      .size
                                                      .width >=
                                                  1200)
                                                Text(""),
                                              if (MediaQuery.of(context)
                                                      .size
                                                      .width >
                                                  1050)
                                                Text(""),
                                              TextFormField(
                                                controller: fname,
                                                onSaved: (val) {
                                                  fname.text=val.toString();
                                                },
                                                decoration: InputDecoration(
                                                  //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                  labelText: "First Name",
                                                ),
                                              ),
                                              TextFormField(
                                                controller: mname,
                                                onSaved: (val) {
                                                  mname.text=val.toString();
                                                },
                                                decoration: InputDecoration(
                                                  //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                  labelText: "Middle Name",
                                                ),
                                              ),
                                              TextFormField(
                                                controller: lname,
                                                onSaved: (val) {
                                                  lname.text=val.toString();
                                                },
                                                decoration: InputDecoration(
                                                  //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                  labelText: "Last Name",
                                                ),
                                              ),
                                              TextFormField(
                                                onSaved: (val) {
                                                  dob.text=val.toString();
                                                },
                                                // readOnly: true,
                                                controller: dob,
                                                decoration: InputDecoration(
                                                    //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                    labelText: "Date Of Birth",
                                                    hintText:
                                                        "Date Format must be DD-MM-YYYY",
                                                    suffixIcon: IconButton(
                                                        onPressed: () async {
                                                          DateTime? date =
                                                              DateTime(1900);
                                                          FocusScope.of(context)
                                                              .requestFocus(
                                                                  new FocusNode());
                                                          date =
                                                              await showDatePicker(
                                                            helpText:
                                                                "Select Date Of Birth",
                                                            context: context,
                                                            initialDate:
                                                                DateTime.now(),
                                                            firstDate:
                                                                DateTime(1900),
                                                            lastDate:
                                                                DateTime.now(),
                                                          );
                                                        },
                                                        icon: Icon(Icons
                                                            .calendar_today_outlined))),
                                              ),
                                              TextFormField(
                                                controller: birthPlace,
                                                onSaved: (val) {
                                                  birthPlace.text=val.toString();
                                                },
                                                decoration: InputDecoration(
                                                  //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                  labelText: "Birth Place",
                                                ),
                                              ),
                                              DropdownButton<String>(

                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                hint: Text(
                                                    "Select Academic Year"),
                                                value: Dropdown.academicyear
                                                    .elementAt(0),
                                                isExpanded: true,
                                                items: Dropdown.academicyear
                                                    .map((String val) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: val,
                                                    child: Text(val),
                                                  );
                                                }).toList(),
                                                onChanged: (String? num) {
                                                  // if (num != null) {
                                                  //   setState(() {
                                                  //     student.academicYear =
                                                  //         num;
                                                  //   });
                                                  // }
                                                },
                                              ),
                                              DropdownButton<String>(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                hint:
                                                    Text("Select Blood Group"),
                                                value: Dropdown.bloodgrp
                                                    .elementAt(0),
                                                isExpanded: true,
                                                items: Dropdown.bloodgrp
                                                    .map((String val) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: val,
                                                    child: Text(val),
                                                  );
                                                }).toList(),
                                                onChanged: (String? num) {},
                                              ),
                                              DropdownButton<String>(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                hint: Text("Select Gender"),
                                                value: Dropdown.gender
                                                    .elementAt(0),
                                                isExpanded: true,
                                                items: Dropdown.gender
                                                    .map((String val) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: val,
                                                    child: Text(val),
                                                  );
                                                }).toList(),
                                                onChanged: (String? num) {},
                                              ),
                                              TextFormField(
                                                decoration: InputDecoration(
                                                  //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                  labelText: "Nationality",
                                                ),
                                              ),
                                              DropdownButton<String>(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                value: Dropdown.religion
                                                    .elementAt(0),
                                                hint: Text(
                                                  religion,
                                                ),
                                                isExpanded: true,
                                                items: Dropdown.religion
                                                    .map((String val) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: val,
                                                    child: Text(val),
                                                  );
                                                }).toList(),
                                                onChanged: (String? num) {},
                                              ),
                                              TextFormField(
                                                onChanged: (value) {},
                                                decoration: InputDecoration(
                                                  //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                  labelText: "Caste",
                                                ),
                                              ),
                                              TextFormField(
                                                onChanged: (value) {},
                                                decoration: InputDecoration(
                                                  //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                  labelText: "Sub Caste",
                                                ),
                                              ),
                                              DropdownButton<String>(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                hint: Text(
                                                    "Non creamylayer Attached "),
                                                value: Dropdown.noncrymelayer
                                                    .elementAt(0),
                                                isExpanded: true,
                                                items: Dropdown.noncrymelayer
                                                    .map((String val) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: val,
                                                    child: Text(val),
                                                  );
                                                }).toList(),
                                                onChanged: (String? num) {},
                                              ),
                                              TextFormField(
                                                onChanged: (value) {},
                                                decoration: InputDecoration(
                                                  //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                  labelText:
                                                      "Qualifying exam board",
                                                ),
                                              ),
                                              TextFormField(
                                                onChanged: (value) {},
                                                decoration: InputDecoration(
                                                  //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                  labelText:
                                                      "Qualifying Exam name ",
                                                ),
                                              ),
                                              TextFormField(
                                                onChanged: (value) {},
                                                decoration: InputDecoration(
                                                  //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                  labelText: "Seat Number ",
                                                ),
                                              ),
                                              TextFormField(
                                                onChanged: (value) {},
                                                decoration: InputDecoration(
                                                  //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                  labelText:
                                                      "Qualifying Exam Percentage  ",
                                                ),
                                              ),
                                              TextFormField(
                                                onChanged: (value) {},
                                                decoration: InputDecoration(
                                                  //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                  labelText: "Passing Year ",
                                                ),
                                              ),
                                              TextFormField(
                                                onChanged: (value) {},
                                                decoration: InputDecoration(
                                                  //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                  labelText: "State",
                                                ),
                                              ),
                                              TextFormField(
                                                onChanged: (value) {},
                                                maxLines: 3,
                                                decoration: InputDecoration(
                                                  //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                  labelText: "Address ",
                                                ),
                                              ),
                                              DropdownButton<String>(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                hint: Text(
                                                    "Is physically handicapped "),
                                                value: Dropdown.physically
                                                    .elementAt(0),
                                                isExpanded: true,
                                                items: Dropdown.physically
                                                    .map((String val) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: val,
                                                    child: Text(val),
                                                  );
                                                }).toList(),
                                                onChanged: (String? num) {},
                                              ),
                                              DropdownButton<String>(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                hint: Text("Is Minority "),
                                                value: Dropdown.minority
                                                    .elementAt(0),
                                                isExpanded: true,
                                                items: Dropdown.minority
                                                    .map((String val) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: val,
                                                    child: Text(val),
                                                  );
                                                }).toList(),
                                                onChanged: (String? num) {},
                                              ),
                                              TextFormField(
                                                onChanged: (value) {},
                                                decoration: InputDecoration(
                                                  //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                  labelText: "GR Number ",
                                                ),
                                              ),
                                              TextFormField(
                                                onChanged: (value) {},
                                                maxLines: 2,
                                                decoration: InputDecoration(
                                                  //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                  labelText: "Gap Details",
                                                ),
                                              ),
                                              TextFormField(
                                                onChanged: (value) {},
                                                decoration: InputDecoration(
                                                  //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                  labelText: "Mobile Number",
                                                ),
                                              ),
                                              TextFormField(
                                                onChanged: (value) {},
                                                decoration: InputDecoration(
                                                  //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                  labelText: "Email Address",
                                                ),
                                              ),

                                              if (MediaQuery.of(context)
                                                      .size
                                                      .width >=
                                                  1200)
                                                Text(""),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "ADMISSION INFO ",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: kPrimaryColor),
                                                  ),
                                                  Divider(
                                                    thickness: 5,
                                                    color: kPrimaryColor,
                                                  ),
                                                ],
                                              ),
                                              if (MediaQuery.of(context)
                                                      .size
                                                      .width >=
                                                  1200)
                                                Text(""),
                                              if (MediaQuery.of(context)
                                                      .size
                                                      .width >=
                                                  1024)
                                                Text(""),
                                              DropdownButton<String>(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                hint: Text("Degree"),
                                                value: degree,
                                                isExpanded: true,
                                                items: Dropdown.degree
                                                    .map((String val) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: val,
                                                    child: Text(val),
                                                  );
                                                }).toList(),
                                                onChanged: (String? num) async {
                                                  if (num != null) {
                                                    setState(() {
                                                      degree = num;
                                                    });
                                                  }
                                                },
                                              ),
                                              DropdownButton<String>(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                hint: Text("University"),
                                                value: university,
                                                isExpanded: true,
                                                items: Dropdown.university
                                                    .map((String val) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: val,
                                                    child: Text(val),
                                                  );
                                                }).toList(),
                                                onChanged: (String? num) async {
                                                  if (num != null) {
                                                    setState(() {
                                                      university = num;
                                                    });
                                                  }
                                                },
                                              ),
                                              DropdownButton<String>(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                hint: Text("Branch"),
                                                value: branch,
                                                isExpanded: true,
                                                items: Dropdown.branch
                                                    .map((String val) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: val,
                                                    child: Text(val),
                                                  );
                                                }).toList(),
                                                onChanged: (String? num) async {
                                                  if (num != null) {
                                                    setState(() {
                                                      branch = num;
                                                    });
                                                  }
                                                },
                                              ),
                                              DropdownButton<String>(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                hint: Text("Shift"),
                                                value: Shift,
                                                isExpanded: true,
                                                items: Dropdown.shift
                                                    .map((String val) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: val,
                                                    child: Text(val),
                                                  );
                                                }).toList(),
                                                onChanged: (String? num) async {
                                                  if (num != null) {
                                                    setState(() {
                                                      Shift = num;
                                                    });
                                                  }
                                                },
                                              ),
                                              DropdownButton<String>(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                hint: Text("Year"),
                                                value: year,
                                                isExpanded: true,
                                                items: Dropdown.year
                                                    .map((String val) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: val,
                                                    child: Text(val),
                                                  );
                                                }).toList(),
                                                onChanged: (String? num) async {
                                                  if (num != null) {
                                                    setState(() {
                                                      year = num;
                                                    });
                                                  }
                                                },
                                              ),
                                              DropdownButton<String>(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                hint: Text("Batch"),
                                                value: batch,
                                                isExpanded: true,
                                                items: Dropdown.batch
                                                    .map((String val) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: val,
                                                    child: Text(val),
                                                  );
                                                }).toList(),
                                                onChanged: (String? num) async {
                                                  if (num != null) {
                                                    setState(() {
                                                      batch = num;
                                                    });
                                                  }
                                                },
                                              ),
                                              DropdownButton<String>(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                hint: Text("Sub Batch"),
                                                value: subbranch,
                                                isExpanded: true,
                                                items: Dropdown.subbatch
                                                    .map((String val) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: val,
                                                    child: Text(val),
                                                  );
                                                }).toList(),
                                                onChanged: (String? num) async {
                                                  if (num != null) {
                                                    setState(() {
                                                      subbranch = num;
                                                    });
                                                  }
                                                },
                                              ),
                                              if (MediaQuery.of(context)
                                                      .size
                                                      .width >=
                                                  1200)
                                                Text(""),
                                              if (MediaQuery.of(context)
                                                      .size
                                                      .width >=
                                                  1024)
                                                Text(""),
                                              Padding(
                                                padding: const EdgeInsets.only(top: 20.0),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "PARENT/GUARDIAN INFO ",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: kPrimaryColor),
                                                    ),
                                                    Divider(
                                                      thickness: 5,
                                                      color: kPrimaryColor,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              if (MediaQuery.of(context)
                                                      .size
                                                      .width >=
                                                  1200)
                                                Text(""),
                                              if (MediaQuery.of(context)
                                                      .size
                                                      .width >=
                                                  1024)
                                                Text(""),
                                              TextFormField(
                                                onChanged: (value) {},
                                                decoration: InputDecoration(
                                                  //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                  labelText: "Father's Name",
                                                ),
                                              ),
                                              DropdownButton<String>(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                hint: Text(
                                                    "Father's Occupation "),
                                                value: Dropdown.foccupation
                                                    .elementAt(0),
                                                isExpanded: true,
                                                items: Dropdown.foccupation
                                                    .map((String val) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: val,
                                                    child: Text(val),
                                                  );
                                                }).toList(),
                                                onChanged: (String? num) {},
                                              ),
                                              DropdownButton<String>(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                hint:
                                                    Text("Father's Education "),
                                                value: Dropdown.feducation
                                                    .elementAt(0),
                                                isExpanded: true,
                                                items: Dropdown.feducation
                                                    .map((String val) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: val,
                                                    child: Text(val),
                                                  );
                                                }).toList(),
                                                onChanged:
                                                    (String? num) async {},
                                              ),
                                              TextFormField(
                                                onChanged: (value) {},
                                                decoration: InputDecoration(
                                                  //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                  labelText: "Annuoal Income",
                                                ),
                                              ),
                                              TextFormField(
                                                onChanged: (value) {},
                                                decoration: InputDecoration(
                                                  //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                  labelText: "Email id",
                                                ),
                                              ),
                                              TextFormField(
                                                onChanged: (value) {},
                                                decoration: InputDecoration(
                                                  //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                  labelText: "Contact No",
                                                ),
                                              ),
                                              TextFormField(
                                                onChanged: (value) {},
                                                maxLines: 3,
                                                decoration: InputDecoration(
                                                  //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                  labelText:
                                                      "Father's Office Address",
                                                ),
                                              ),
                                              TextFormField(
                                                onChanged: (value) {},
                                                decoration: InputDecoration(
                                                  //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                  labelText:
                                                      "Father's Office Contact No",
                                                ),
                                              ),
                                              if (MediaQuery.of(context)
                                                      .size
                                                      .width >=
                                                  1200)
                                                Text(""),
                                              TextFormField(
                                                onChanged: (value) {},
                                                decoration: InputDecoration(
                                                  //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                  labelText: "Mother's Name",
                                                ),
                                              ),
                                              DropdownButton<String>(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                hint: Text(
                                                    "Mother's Occupation "),
                                                value: Dropdown.moccupation
                                                    .elementAt(0),
                                                isExpanded: true,
                                                items: Dropdown.moccupation
                                                    .map((String val) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: val,
                                                    child: Text(val),
                                                  );
                                                }).toList(),
                                                onChanged: (String? num) {},
                                              ),
                                              DropdownButton<String>(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                hint:
                                                    Text("Mother's Education "),
                                                value: Dropdown.meducation
                                                    .elementAt(0),
                                                isExpanded: true,
                                                items: Dropdown.meducation
                                                    .map((String val) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: val,
                                                    child: Text(val),
                                                  );
                                                }).toList(),
                                                onChanged:
                                                    (String? num) async {},
                                              ),
                                              TextFormField(
                                                onChanged: (value) {},
                                                decoration: InputDecoration(
                                                  //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                  labelText: "Annuoal Income",
                                                ),
                                              ),
                                              TextFormField(
                                                onChanged: (value) {},
                                                decoration: InputDecoration(
                                                  //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                  labelText: "Email id",
                                                ),
                                              ),
                                              TextFormField(
                                                onChanged: (value) {},
                                                decoration: InputDecoration(
                                                  //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                  labelText: "Contact No",
                                                ),
                                              ),
                                              TextFormField(
                                                onChanged: (value) {},
                                                maxLines: 3,
                                                decoration: InputDecoration(
                                                  //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                  labelText:
                                                      "Mother's Office Address",
                                                ),
                                              ),
                                              TextFormField(
                                                onChanged: (value) {},
                                                decoration: InputDecoration(
                                                  //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                  labelText:
                                                      "Mother's Office Contact No",
                                                ),
                                              ),
                                              if (MediaQuery.of(context)
                                                      .size
                                                      .width >=
                                                  1200)
                                                Text(""),
                                              TextFormField(
                                                onChanged: (value) {},
                                                maxLines: 3,
                                                decoration: InputDecoration(
                                                  //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                  labelText:
                                                      "Residential Address",
                                                ),
                                              ),
                                              TextFormField(
                                                onChanged: (value) {},
                                                maxLines: 3,
                                                decoration: InputDecoration(
                                                  //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                  labelText:
                                                      "Permanent Address",
                                                ),
                                              ),
                                              // DropdownButton<String>(
                                              //   borderRadius:
                                              //       BorderRadius.circular(5),
                                              //   hint: Text("Transport "),
                                              //   value: Dropdown.transport
                                              //       .elementAt(0),
                                              //   isExpanded: true,
                                              //   items: Dropdown.transport
                                              //       .map((String val) {
                                              //     return DropdownMenuItem<
                                              //         String>(
                                              //       value: val,
                                              //       child: Text(val),
                                              //     );
                                              //   }).toList(),
                                              //   onChanged: (String? num) {},
                                              // ),
                                              // if (MediaQuery.of(context).size.width >=
                                              //     1200)
                                                Text(""),
                                              if (MediaQuery.of(context)
                                                          .size
                                                          .width >=
                                                      1050 &&
                                                  MediaQuery.of(context)
                                                          .size
                                                          .width <=
                                                      1200)
                                                Text(""),
                                              Padding(
                                                padding: const EdgeInsets.only(top: 20.0),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "UPLOAD DOCUMENTS ",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: kPrimaryColor),
                                                    ),
                                                    Divider(
                                                      thickness: 5,
                                                      color: kPrimaryColor,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              if (MediaQuery.of(context)
                                                      .size
                                                      .width >=
                                                  1200)
                                                Text(""),
                                              if (MediaQuery.of(context)
                                                      .size
                                                      .width >
                                                  1050)
                                                Text(""),
                                              // TextFormField(
                                              //   decoration: InputDecoration(
                                              //     //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                              //     labelText: "10th Marksheet",
                                              //     hintText:
                                              //         "10th marksheet seat no",
                                              //     suffix: IconButton(
                                              //       icon: Icon(Icons
                                              //           .add_photo_alternate_outlined),
                                              //       onPressed: () => pickimage(
                                              //           ImageSource.gallery),
                                              //     ),
                                              //   ),
                                              // ),
                                              // TextFormField(
                                              //   decoration: InputDecoration(
                                              //     //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                              //     labelText: "12th Markshhet",
                                              //     hintText:
                                              //         "12th marksheet seat no",
                                              //     suffix: IconButton(
                                              //       icon: Icon(Icons
                                              //           .add_photo_alternate_outlined),
                                              //       onPressed: () => pickimage(
                                              //           ImageSource.gallery),
                                              //     ),
                                              //   ),
                                              // ),
                                              TextFormField(
                                                decoration: InputDecoration(
                                                  //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                  labelText:
                                                      "Leaving Certificate",
                                                  hintText:
                                                      "leaving certificate doc no",
                                                  suffix: IconButton(
                                                    icon: Icon(Icons
                                                        .add_photo_alternate_outlined),
                                                    onPressed: () => pickimage(
                                                        ImageSource.gallery),
                                                  ),
                                                ),
                                              ),
                                              TextFormField(
                                                decoration: InputDecoration(
                                                  //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                  labelText:
                                                      "Caste Certificate",
                                                  hintText:
                                                      "caste certificate doc no",
                                                  suffix: IconButton(
                                                    icon: Icon(Icons
                                                        .add_photo_alternate_outlined),
                                                    onPressed: () => pickimage(
                                                        ImageSource.gallery),
                                                  ),
                                                ),
                                              ),
                                              // TextFormField(
                                              //   decoration: InputDecoration(
                                              //     //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                              //     labelText:
                                              //         "Income Certificate",
                                              //     hintText:
                                              //         "income certificate doc no",
                                              //     suffix: IconButton(
                                              //       icon: Icon(Icons
                                              //           .add_photo_alternate_outlined),
                                              //       onPressed: () => pickimage(
                                              //           ImageSource.gallery),
                                              //     ),
                                              //   ),
                                              // ),

                                              if (MediaQuery.of(context)
                                                      .size
                                                      .width >=
                                                  1024)
                                                Text(""),
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
                                                    print(birthPlace.text);
                                                  },
                                                  child: Text(
                                                    "Save Student",
                                                    style: TextStyle(
                                                        fontSize: 17,
                                                        color: Colors.white),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}



// List<String> fieldsNames = [
//   "type",
//   "firstName",
//   "middleName",
//   "lastName",
//   "studentUniversity",
//   "studentCourse",
//   "studentBranch",
//   "courseYear",
//   "dob",
//   "academicYear",
//   "birthPlace",
//   "bloodGroup",
//   "gender",
//   "nationality",
//   "religion",
//   "caste",
//   "subCaste",
//   "nonCremy",
//   "previousSchoolBoard",
//   "previousExamName",
//   "password",
//   "previousExamPercentage",
//   "seatNo",
//   "passYear",
//   "state",
//   "address",
//   "isPhysicallyChallenged",
//   "isMinority",
//   "grNo",
//   "gapDetail",
//   "studentMobileNo",
//   "email",
//   "feesAmount",
//   "fatherName",
//   "fatherOccupation",
//   "fatherEducation",
//   "fatherAnnualIncome",
//   "fatherEmail",
//   "fatherContactNo",
//   "fatherOfficeAddress",
//   "fatherOfficeContactNo",
//   "motherName",
//   "motherOccupation",
//   "motherEducation",
//   "motherAnnualIncome",
//   "motherEmail",
//   "motherContact",
//   "motherOfficeAddress",
//   "motherOfficeContact",
//   "ressidencialAddress",
//   "permanentAddress",
//   "transport",
//   "birthCertificate",
//   "transferCertificate",
//   "markSheet",
//   "uid",
// ];
// Future<dynamic> excelToJson() async {
//   FilePickerResult? result = await FilePicker.platform.pickFiles(
//     type: FileType.custom,
//     allowedExtensions: ['xls', 'xlsx', 'csv'],
//   );
//   var csvFile;
//   var bytes;
//   if (result != null) {
//     if (kIsWeb) {
//       bytes = result.files.first.bytes!;
//     } else {
//       csvFile = File(result.files.single.path!);
//       bytes = File(csvFile.path).readAsBytesSync();
//     }
//     // csvFile = File(result.files.single.path!);
//     // var bytes = File(csvFile.path).readAsBytesSync();
//     String s = String.fromCharCodes(bytes);
//     List<List<dynamic>> rowsAsListOfValues =
//         const CsvToListConverter().convert(s);
//     int i = 0;
//     List<String> keys = [];
//     var jsonMap = [];
//
//     for (var row in rowsAsListOfValues) {
//       if (i == 0) {
//         for (var rowData in row) {
//           if (fieldsNames.contains(rowData)) {
//             keys.add(rowData);
//           } else {
//             print("In Excel sheet, header $rowData has wrongly spelled");
//             return null;
//           }
//         }
//         i++;
//       } else {
//         Map<String, dynamic> temp = {};
//         int j = 0;
//         String tk = '';
//         for (var key in keys) {
//           tk = key;
//           temp[tk] = row[j] == null ? "" : row[j].toString();
//           j++;
//         }
//         temp["uid"] = temp["firstName"][0].toLowerCase() + randomNumeric(6);
//         Student studentModel = Student.fromJson(temp);
//         jsonMap.add(studentModel);
//       }
//     }
//
//     print(jsonMap);
//     return jsonMap;
//   }
// }
// String bloddgrp = "Select Blood Group";
// String gender = "Select Gender";
// String noncremylayer = "Non Creamylayer Attached";
// String isphysically = "Is Physically Handicapped";
// String isminority = "Is Minority";
// String feespackage = "Fees Package";
// String foccupation = "Father's Occupation";
// String feducation = "Father's Education";
// String moccupation = "Mother's Occupation";
// String meducation = "Mother's Education";
// String transport = "Transport";