import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:erp_sem4/constants/constants.dart';
import 'package:erp_sem4/constants/dropdown_values.dart';
import 'package:flutter/material.dart';


class StudentRegistrationForm extends StatefulWidget {
  @override
  _StudentRegistrationFormState createState() => _StudentRegistrationFormState();
}

class _StudentRegistrationFormState extends State<StudentRegistrationForm> {
  // File? image;
  String religion = "Select Religion";
  bool isLoading = false;
  String  father_occu="Father's Occupation";
  String father_edu="Father's Education";
  String  mother_occu="Mother's Occupation";
  String mother_edu="Mother's Education";
  String academic="Select Academic Year";
  String blood="Select Blood Group";
  String genderS="Select Gender";
  String relig=    "Select Religion";
  String minori=    "Is Minority";
  String handiS=    "Is Physically Handicapped";
  TextEditingController fname = TextEditingController();
  TextEditingController mname = TextEditingController();
  TextEditingController lname = TextEditingController();
  TextEditingController dob = TextEditingController();
  // TextEditingController birthPlace = TextEditingController();
  TextEditingController acYear = TextEditingController();
  TextEditingController bloodG = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController nation = TextEditingController();
  TextEditingController caste = TextEditingController();
  TextEditingController subCaste = TextEditingController();
  // TextEditingController  quaExB= TextEditingController();
  // TextEditingController quaExN = TextEditingController();
  // TextEditingController seatNo = TextEditingController();
  // TextEditingController  ExPerc= TextEditingController();
  // TextEditingController  passYear= TextEditingController();
  TextEditingController state = TextEditingController();
  TextEditingController addr = TextEditingController();
  TextEditingController handi = TextEditingController();
  TextEditingController minority = TextEditingController();
  TextEditingController grNo = TextEditingController();
  // TextEditingController gapDetails = TextEditingController();
  TextEditingController mobNO = TextEditingController();
  TextEditingController emailAd = TextEditingController();
  // TextEditingController addmissionInfo = TextEditingController();
  TextEditingController fatherName = TextEditingController();
  TextEditingController fOccu = TextEditingController();
  TextEditingController fEdu = TextEditingController();
  TextEditingController fAnnulInc = TextEditingController();
  TextEditingController fEmail = TextEditingController();
  TextEditingController fContact = TextEditingController();
  TextEditingController fOffiAdd = TextEditingController();
  TextEditingController fOffCo = TextEditingController();
  TextEditingController motherName = TextEditingController();
  TextEditingController mOccu = TextEditingController();
  TextEditingController mEdu = TextEditingController();
  TextEditingController mAnnulInc = TextEditingController();
  TextEditingController mEmail = TextEditingController();
  TextEditingController mContact = TextEditingController();
  TextEditingController mOffiAdd = TextEditingController();
  TextEditingController mOffCo = TextEditingController();
  TextEditingController currentAddr = TextEditingController();
  TextEditingController permAdd = TextEditingController();
  TextEditingController religionC = TextEditingController();
  TextEditingController transp = TextEditingController();

  // Future pickimage(ImageSource src) async {
  //   try {
  //     final image = await ImagePicker().pickImage(source: src);
  //     if (image == null) return;
  //     final imageTemp = File(image.path);
  //     setState(() {
  //       this.image = imageTemp;
  //     });
  //   } on PlatformException catch (e) {
  //     print("Failed to pick image : $e");
  //   }
  // }
  CollectionReference users =
      FirebaseFirestore.instance.collection('student_registration');

  @override
  Widget build(BuildContext context) {
    Future<void> addStudReg() {
      // Call the user's CollectionReference to add a new user
      return users
          .add({
            'first_name': fname.text,
            'middle_name': mname.text,
            'last_name': lname.text,
            'date_of_birth': dob.text,
            //'':birthPlace.text,
            'academic_year': acYear.text,
            'blood_group': bloodG.text,
            'gender': gender.text,
            'nationality': nation.text,
            'caste': caste.text,
            // 'subcaste': subCaste.text,
            //:quaEx.text,
            //:quaExN.text,
            //:seatNo.text,
            //:ExPer.text,
            //:passYea.text,
            'state': state.text,
            'address': addr.text,
            'is_handicap': handi.text,
            'is_minority': minority.text,
            'grNo': grNo.text,
            // :     gapDetails.text,
            'mobileNo': mobNO.text,
            'email': emailAd.text,
            // :  addmissionInfo.text,
            //  : uni.text,
            'father_name': fatherName.text,
            'father_occupation': fOccu.text,
            'father_education': fEdu.text,
            'father_annual_income': fAnnulInc.text,
            'father_email': fEmail.text,
            'father_contactNo': fContact.text,
            'father_office_addr': fOffiAdd.text,
            'father_office_contact': fOffCo.text,
            'mother_name': motherName.text,
            'mother_occupation': mOccu.text,
            'mother_education': mEdu.text,
            'mother_annual_income': mAnnulInc.text,
            'mother_email': mEmail.text,
            'mother_contactNo': mContact.text,
            'mother_office_addr': mOffiAdd.text,
            'mother_office_contact': mOffCo.text,
            'current_addr': currentAddr.text,
            'religion': religionC.text,
            // 'transportation': transp.text,
          })
          .then((value) => print("User Added"))
          .catchError((error) => print("Failed to add user: $error"));
    }

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
                                            // physics:
                                            //     NeverScrollableScrollPhysics(),
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
                                                decoration: InputDecoration(
                                                  //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                  labelText: "First Name",
                                                ),
                                              ),
                                              TextFormField(
                                                controller: mname,
                                                decoration: InputDecoration(
                                                  //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                  labelText: "Middle Name",
                                                ),
                                              ),
                                              TextFormField(
                                                controller: lname,
                                                decoration: InputDecoration(
                                                  //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                  labelText: "Last Name",
                                                ),
                                              ),
                                              TextFormField(
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
                                                          dob.text = date!.day
                                                              .toString() +
                                                              "-" +
                                                              date.month
                                                                  .toString() +
                                                              "-" +
                                                              date.year.toString();
                                                          dob.text = dob.text +
                                                              " ( " +
                                                              (DateTime.now().year -
                                                                  date.year)
                                                                  .toString() +
                                                              " year " +
                                                              " old )";
                                                        },
                                                        icon: Icon(Icons
                                                            .calendar_today_outlined))),
                                              ),
                                              // TextFormField(
                                              //   controller: birthPlace,
                                              //   decoration: InputDecoration(
                                              //     //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                              //     labelText: "Birth Place",
                                              //   ),
                                              // ),
                                              DropdownButton<String>(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                hint: Text(
                                                    "Select Academic Year"),
                                                value: academic,
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
                                                  setState(() {
                                                    academic=num!;
                                                  });
                                                  acYear.text = num.toString();
                                                },
                                              ),
                                              DropdownButton<String>(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                hint:
                                                    Text("Select Blood Group"),
                                                value: blood,
                                                isExpanded: true,
                                                items: Dropdown.bloodgrp
                                                    .map((String val) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: val,
                                                    child: Text(val),
                                                  );
                                                }).toList(),
                                                onChanged: (String? num) {
                                                  setState(() {
                                                    blood=num!;
                                                  });
                                                  bloodG.text = num.toString();
                                                },
                                              ),
                                              DropdownButton<String>(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                hint: Text("Select Gender"),
                                                value: genderS,
                                                isExpanded: true,
                                                items: Dropdown.gender
                                                    .map((String val) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: val,
                                                    child: Text(val),
                                                  );
                                                }).toList(),
                                                onChanged: (String? num) {
                                                  setState(() {
                                                    genderS=num!;
                                                  });
                                                  gender.text = num.toString();
                                                },
                                              ),
                                              TextFormField(
                                                controller: nation,
                                                decoration: InputDecoration(
                                                  //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                  labelText: "Nationality",
                                                ),
                                              ),
                                              // DropdownButton<String>(
                                              //   borderRadius:
                                              //       BorderRadius.circular(5),
                                              //   value: Dropdown.religion
                                              //       .elementAt(0),
                                              //   hint: Text(
                                              //     religion,
                                              //   ),
                                              //   isExpanded: true,
                                              //   items: Dropdown.religion
                                              //       .map((String val) {
                                              //     return DropdownMenuItem<
                                              //         String>(
                                              //       value: val,
                                              //       child: Text(val),
                                              //     );
                                              //   }).toList(),
                                              //   onChanged: (String? num) {
                                              //     religionC.text =
                                              //         num.toString();
                                              //   },
                                              // ),
                                              DropdownButton<String>(
                                                borderRadius:
                                                BorderRadius.circular(5),
                                                hint: Text("Select Religion"),
                                                value: relig,
                                                isExpanded: true,
                                                items: Dropdown.religion
                                                    .map((String val) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: val,
                                                    child: Text(val),
                                                  );
                                                }).toList(),
                                                onChanged: (String? num) {
                                                  setState(() {
                                                    relig=num!;
                                                  });
                                                  religionC.text = num.toString();
                                                },
                                              ),
                                              TextFormField(
                                                controller: caste,
                                                decoration: InputDecoration(
                                                  //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                  labelText: "Caste",
                                                ),
                                              ),
                                              // TextFormField(
                                              //   controller: subCaste,
                                              //   decoration: InputDecoration(
                                              //     //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                              //     labelText: "Sub Caste",
                                              //   ),
                                              // ),
                                              // DropdownButton<String>(
                                              //   borderRadius:
                                              //       BorderRadius.circular(5),
                                              //   hint: Text(
                                              //       "Non creamylayer Attached "),
                                              //   value: Dropdown.noncrymelayer
                                              //       .elementAt(0),
                                              //   isExpanded: true,
                                              //   items: Dropdown.noncrymelayer
                                              //       .map((String val) {
                                              //     return DropdownMenuItem<
                                              //         String>(
                                              //       value: val,
                                              //       child: Text(val),
                                              //     );
                                              //   }).toList(),
                                              //   onChanged: (String? num) {},
                                              // ),
                                              // TextFormField(
                                              //   controller: quaExB,
                                              //   decoration: InputDecoration(
                                              //     //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                              //     labelText:
                                              //         "Qualifying exam board",
                                              //   ),
                                              // ),
                                              // TextFormField(
                                              //   controller: quaExN,
                                              //   decoration: InputDecoration(
                                              //     //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                              //     labelText:
                                              //         "Qualifying Exam name ",
                                              //   ),
                                              // ),
                                              // TextFormField(
                                              //   controller: seatNo,
                                              //   decoration: InputDecoration(
                                              //     //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                              //     labelText: "Seat Number ",
                                              //   ),
                                              // ),
                                              // TextFormField(
                                              //   controller: ExPerc,
                                              //   decoration: InputDecoration(
                                              //     //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                              //     labelText:
                                              //         "Qualifying Exam Percentage  ",
                                              //   ),
                                              // ),
                                              // TextFormField(
                                              //   controller: passYear,
                                              //   decoration: InputDecoration(
                                              //     //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                              //     labelText: "Passing Year ",
                                              //   ),
                                              // ),
                                              TextFormField(
                                                controller: state,
                                                decoration: InputDecoration(
                                                  //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                  labelText: "State",
                                                ),
                                              ),
                                              TextFormField(
                                                controller: addr,
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
                                                value: handiS,
                                                isExpanded: true,
                                                items: Dropdown.physically
                                                    .map((String val) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: val,
                                                    child: Text(val),
                                                  );
                                                }).toList(),
                                                onChanged: (String? num) {
                                                  setState(() {
                                                    handiS=num!;
                                                  });
                                                  handi.text = num.toString();
                                                },
                                              ),
                                              DropdownButton<String>(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                hint: Text("Is Minority "),
                                                value: minori,
                                                isExpanded: true,
                                                items: Dropdown.minority
                                                    .map((String val) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: val,
                                                    child: Text(val),
                                                  );
                                                }).toList(),
                                                onChanged: (String? num) {
                                                  setState(() {
                                                    minori=num!;
                                                  });
                                                  minority.text =
                                                      num.toString();
                                                },
                                              ),
                                              TextFormField(
                                                controller: grNo,
                                                decoration: InputDecoration(
                                                  //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                  labelText: "GR Number ",
                                                ),
                                              ),
                                              // TextFormField(
                                              //   controller: gapDetails,
                                              //   maxLines: 2,
                                              //   decoration: InputDecoration(
                                              //     //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                              //     labelText: "Gap Details",
                                              //   ),
                                              // ),
                                              TextFormField(
                                                controller: mobNO,
                                                decoration: InputDecoration(
                                                  //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                  labelText: "Mobile Number",
                                                ),
                                              ),
                                              TextFormField(
                                                controller: emailAd,
                                                decoration: InputDecoration(
                                                  //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                  labelText: "Email Address",
                                                ),
                                              ),

                                              // if (MediaQuery.of(context)
                                              //         .size
                                              //         .width >=
                                              //     1200)
                                              //   Text(""),
                                              // Column(
                                              //   crossAxisAlignment:
                                              //       CrossAxisAlignment.start,
                                              //   children: [
                                              //     Text(
                                              //       "ADMISSION INFO ",
                                              //       style: TextStyle(
                                              //           fontSize: 18,
                                              //           color: kPrimaryColor),
                                              //     ),
                                              //     Divider(
                                              //       thickness: 5,
                                              //       color: kPrimaryColor,
                                              //     ),
                                              //   ],
                                              // ),
                                              // if (MediaQuery.of(context)
                                              //         .size
                                              //         .width >=
                                              //     1200)
                                              //   Text(""),
                                              // if (MediaQuery.of(context)
                                              //         .size
                                              //         .width >=
                                              //     1024)
                                              //   Text(""),
                                              // DropdownButton<String>(
                                              //   borderRadius:
                                              //       BorderRadius.circular(5),
                                              //   hint: Text("Degree"),
                                              //   value: degree,
                                              //   isExpanded: true,
                                              //   items: Dropdown.degree
                                              //       .map((String val) {
                                              //     return DropdownMenuItem<
                                              //         String>(
                                              //       value: val,
                                              //       child: Text(val),
                                              //     );
                                              //   }).toList(),
                                              //   onChanged: (String? num) async {
                                              //     if (num != null) {
                                              //       setState(() {
                                              //         degree = num;
                                              //       });
                                              //     }
                                              //   },
                                              // ),
                                              // DropdownButton<String>(
                                              //   borderRadius:
                                              //       BorderRadius.circular(5),
                                              //   hint: Text("University"),
                                              //   value: university,
                                              //   isExpanded: true,
                                              //   items: Dropdown.university
                                              //       .map((String val) {
                                              //     return DropdownMenuItem<
                                              //         String>(
                                              //       value: val,
                                              //       child: Text(val),
                                              //     );
                                              //   }).toList(),
                                              //   onChanged: (String? num) async {
                                              //     if (num != null) {
                                              //       setState(() {
                                              //         university = num;
                                              //       });
                                              //     }
                                              //   },
                                              // ),
                                              // DropdownButton<String>(
                                              //   borderRadius:
                                              //       BorderRadius.circular(5),
                                              //   hint: Text("Branch"),
                                              //   value: branch,
                                              //   isExpanded: true,
                                              //   items: Dropdown.branch
                                              //       .map((String val) {
                                              //     return DropdownMenuItem<
                                              //         String>(
                                              //       value: val,
                                              //       child: Text(val),
                                              //     );
                                              //   }).toList(),
                                              //   onChanged: (String? num) async {
                                              //     if (num != null) {
                                              //       setState(() {
                                              //         branch = num;
                                              //       });
                                              //     }
                                              //   },
                                              // ),
                                              // DropdownButton<String>(
                                              //   borderRadius:
                                              //       BorderRadius.circular(5),
                                              //   hint: Text("Shift"),
                                              //   value: Shift,
                                              //   isExpanded: true,
                                              //   items: Dropdown.shift
                                              //       .map((String val) {
                                              //     return DropdownMenuItem<
                                              //         String>(
                                              //       value: val,
                                              //       child: Text(val),
                                              //     );
                                              //   }).toList(),
                                              //   onChanged: (String? num) async {
                                              //     if (num != null) {
                                              //       setState(() {
                                              //         Shift = num;
                                              //       });
                                              //     }
                                              //   },
                                              // ),
                                              // DropdownButton<String>(
                                              //   borderRadius:
                                              //       BorderRadius.circular(5),
                                              //   hint: Text("Year"),
                                              //   value: year,
                                              //   isExpanded: true,
                                              //   items: Dropdown.year
                                              //       .map((String val) {
                                              //     return DropdownMenuItem<
                                              //         String>(
                                              //       value: val,
                                              //       child: Text(val),
                                              //     );
                                              //   }).toList(),
                                              //   onChanged: (String? num) async {
                                              //     if (num != null) {
                                              //       setState(() {
                                              //         year = num;
                                              //       });
                                              //     }
                                              //   },
                                              // ),
                                              // DropdownButton<String>(
                                              //   borderRadius:
                                              //       BorderRadius.circular(5),
                                              //   hint: Text("Batch"),
                                              //   value: batch,
                                              //   isExpanded: true,
                                              //   items: Dropdown.batch
                                              //       .map((String val) {
                                              //     return DropdownMenuItem<
                                              //         String>(
                                              //       value: val,
                                              //       child: Text(val),
                                              //     );
                                              //   }).toList(),
                                              //   onChanged: (String? num) async {
                                              //     if (num != null) {
                                              //       setState(() {
                                              //         batch = num;
                                              //       });
                                              //     }
                                              //   },
                                              // ),
                                              // DropdownButton<String>(
                                              //   borderRadius:
                                              //       BorderRadius.circular(5),
                                              //   hint: Text("Sub Batch"),
                                              //   value: subbranch,
                                              //   isExpanded: true,
                                              //   items: Dropdown.subbatch
                                              //       .map((String val) {
                                              //     return DropdownMenuItem<
                                              //         String>(
                                              //       value: val,
                                              //       child: Text(val),
                                              //     );
                                              //   }).toList(),
                                              //   onChanged: (String? num) async {
                                              //     if (num != null) {
                                              //       setState(() {
                                              //         subbranch = num;
                                              //       });
                                              //     }
                                              //   },
                                              // ),
                                              if (MediaQuery.of(context)
                                                      .size
                                                      .width >=
                                                  1200)
                                                Text(""),
                                              // if (MediaQuery.of(context)
                                              //         .size
                                              //         .width >=
                                              //     1024)
                                              //   Text(""),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 20.0),
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
                                                controller: fatherName,
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
                                                value: father_occu,
                                                isExpanded: true,
                                                items: Dropdown.foccupation
                                                    .map((String val) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: val,
                                                    child: Text(val),
                                                  );
                                                }).toList(),
                                                onChanged: (String? num) {
                                                  setState(() {
                                                    father_occu=num!;
                                                  });
                                                  fOccu.text = num.toString();
                                                },
                                              ),
                                              DropdownButton<String>(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                hint:
                                                    Text("Father's Education "),
                                                value: father_edu,
                                                isExpanded: true,
                                                items: Dropdown.feducation
                                                    .map((String val) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: val,
                                                    child: Text(val),
                                                  );
                                                }).toList(),
                                                onChanged: (String? num) {
                                                  setState(() {
                                                    father_edu=num!;
                                                  });
                                                  fEdu.text = num.toString();
                                                },
                                              ),
                                              TextFormField(
                                                controller: fAnnulInc,
                                                decoration: InputDecoration(
                                                  //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                  labelText: "Annual Income",
                                                ),
                                              ),
                                              TextFormField(
                                                controller: fEmail,
                                                decoration: InputDecoration(
                                                  //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                  labelText: "Email id",
                                                ),
                                              ),
                                              TextFormField(
                                                controller: fContact,
                                                decoration: InputDecoration(
                                                  //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                  labelText: "Contact No",
                                                ),
                                              ),
                                              TextFormField(
                                                controller: fOffiAdd,
                                                maxLines: 3,
                                                decoration: InputDecoration(
                                                  //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                  labelText:
                                                      "Father's Office Address",
                                                ),
                                              ),
                                              TextFormField(
                                                controller: fOffCo,
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
                                                controller: motherName,
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
                                                value: mother_occu,
                                                isExpanded: true,
                                                items: Dropdown.moccupation
                                                    .map((String val) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: val,
                                                    child: Text(val),
                                                  );
                                                }).toList(),
                                                onChanged: (String? num) {
                                                  setState(() {
                                                    mother_occu=num!;
                                                  });
                                                  mOccu.text = num.toString();
                                                },
                                              ),
                                              DropdownButton<String>(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                hint:
                                                    Text("Mother's Education "),
                                                value: mother_edu,
                                                isExpanded: true,
                                                items: Dropdown.meducation
                                                    .map((String val) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: val,
                                                    child: Text(val),
                                                  );
                                                }).toList(),
                                                onChanged: (String? num) async {
                                                  setState(() {
                                                    mother_edu=num!;
                                                  });
                                                  mEdu.text = num.toString();
                                                },
                                              ),
                                              TextFormField(
                                                controller: mAnnulInc,
                                                decoration: InputDecoration(
                                                  //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                  labelText: "Annuoal Income",
                                                ),
                                              ),
                                              TextFormField(
                                                controller: mEmail,
                                                decoration: InputDecoration(
                                                  //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                  labelText: "Email id",
                                                ),
                                              ),
                                              TextFormField(
                                                controller: mContact,
                                                decoration: InputDecoration(
                                                  //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                  labelText: "Contact No",
                                                ),
                                              ),
                                              TextFormField(
                                                controller: mOffiAdd,
                                                maxLines: 3,
                                                decoration: InputDecoration(
                                                  //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                  labelText:
                                                      "Mother's Office Address",
                                                ),
                                              ),
                                              TextFormField(
                                                controller: mOffCo,
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
                                                controller: currentAddr,
                                                maxLines: 3,
                                                decoration: InputDecoration(
                                                  //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                  labelText:
                                                      "Residential Address",
                                                ),
                                              ),
                                              // TextFormField(
                                              //  controller: permAdd,
                                              //   maxLines: 3,
                                              //   decoration: InputDecoration(
                                              //     //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                              //     labelText:
                                              //         "Permanent Address",
                                              //   ),
                                              // ),
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
                                              //   onChanged: (String? num) {
                                              //     transp.text = num.toString();
                                              //   },
                                              // ),
                                              if (MediaQuery.of(context)
                                                      .size
                                                      .width >=
                                                  1200)
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
                                              // Padding(
                                              //   padding: const EdgeInsets.only(
                                              //       top: 20.0),
                                              //   child: Column(
                                              //     crossAxisAlignment:
                                              //         CrossAxisAlignment.start,
                                              //     children: [
                                              //       Text(
                                              //         "UPLOAD DOCUMENTS ",
                                              //         style: TextStyle(
                                              //             fontSize: 18,
                                              //             color: kPrimaryColor),
                                              //       ),
                                              //       Divider(
                                              //         thickness: 5,
                                              //         color: kPrimaryColor,
                                              //       ),
                                              //     ],
                                              //   ),
                                              // ),
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
                                                  onPressed: addStudReg,
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
