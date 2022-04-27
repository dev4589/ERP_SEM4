import 'dart:io';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:erp_sem4/constants/constants.dart';
import 'package:erp_sem4/constants/dropdown_values.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class StaffRegistrationForm extends StatefulWidget {
  const StaffRegistrationForm({Key? key}) : super(key: key);

  @override
  _StaffRegistrationFormState createState() => _StaffRegistrationFormState();
}

class _StaffRegistrationFormState extends State<StaffRegistrationForm> {
  Widget fadeAlertAnimation(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return Align(
      child: FadeTransition(
        opacity: animation,
        child: child,
      ),
    );
  }

  TextEditingController formno = TextEditingController();
  TextEditingController joiningDate = TextEditingController();
  TextEditingController adyear = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController fname = TextEditingController();
  TextEditingController sname = TextEditingController();
  TextEditingController mname = TextEditingController();
  TextEditingController cno1 = TextEditingController();
  TextEditingController cno2 = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController dob = TextEditingController();
  TextEditingController lastjob = TextEditingController();
  TextEditingController genderc = TextEditingController();
  TextEditingController sphoto = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController pcode = TextEditingController();
  TextEditingController reference = TextEditingController();
  TextEditingController source = TextEditingController();

  File? image;
  String gender = "Select Gender";
  String sourceS = "Select Designation";
  String ayear = "Select Academic Year";


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

  @override
  Widget build(BuildContext context) {
    CollectionReference staff = FirebaseFirestore.instance.collection('Staff');
    Future<void> addStaff() {
      // Call the user's CollectionReference to add a new user
      return staff.add({
        'form_no': formno.text,
        'join_date': joiningDate.text,
        'joinyear': adyear.text,
        'name': name.text,
        'fathername': fname.text,
        'surname': sname.text,
        'mothername': mname.text,
        'cno1': cno1.text,
        'cno2': cno2.text,
        'email': email.text,
        'dob': dob.text,
        'lastjob': lastjob.text,
        'gender': genderc.text,
        'photo': sphoto.text,
        'address': address.text,
        'pincode': pcode.text,
        'reference': reference.text,
        'source': source.text,
      }).then((value) =>
          Alert(context: context, type: AlertType.info, title: "Staff Added")
              .show()
              .catchError((error) => Alert(
                  context: context,
                  type: AlertType.info,
                  title: "Failed To Add Staff",
                  alertAnimation: fadeAlertAnimation)));
//     Alert(
      //   context: context,
      //   type: AlertType.info,
      //   title: "Email can't be empty",
      //   desc: "please enter Email",
      //   alertAnimation: fadeAlertAnimation,
      // ).show()
// print("Staff Added"))
    }
    //

    Size size = MediaQuery.of(context).size;
    final bool displayMobileLayout = MediaQuery.of(context).size.width < 800;
    return Scaffold(
      body: Padding(
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
              child: Center(
                child: Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding:
                                EdgeInsets.only(left: 40, right: 40, top: 20),
                            child: Row(children: [
                              Icon(
                                Icons.arrow_back,
                                color: kPrimaryColor,
                              ),
                              Text(" Back",
                                  style: TextStyle(color: kPrimaryColor)),
                            ]),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 40, right: 40, top: 20),
                          child: Text("Staff Registration Form",
                              style: TextStyle(
                                  fontSize: 20, color: kPrimaryColor)),
                        ),
                      ],
                    ),
                    Expanded(
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
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                    padding: (displayMobileLayout == true)
                                        ? EdgeInsets.only(
                                            top: 15,
                                            left: 10,
                                            right: 10,
                                            bottom: 15)
                                        : (MediaQuery.of(context).size.width <
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
                                    width: MediaQuery.of(context).size.width,
                                    child: Container(
                                      child: GridView.count(
                                        childAspectRatio:
                                            MediaQuery.of(context).size.width >
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
                                                    : (MediaQuery.of(context)
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
                                            controller: formno,
                                            maxLines: 3,
                                            decoration: InputDecoration(
                                              //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                              labelText: "Form No",
                                            ),
                                          ),
                                          TextFormField(
                                            controller: joiningDate,
                                            decoration: InputDecoration(
                                                //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                                labelText: "Date",
                                                hintText:
                                                    "Date Format must be DD-MM-YYYY",
                                                suffixIcon: IconButton(
                                                    onPressed: () async {
                                                      DateTime? date =
                                                          DateTime(1900);
                                                      FocusScope.of(context)
                                                          .requestFocus(
                                                              new FocusNode());
                                                      date = await showDatePicker(
                                                          helpText:
                                                              "Select Date Of joining",
                                                          context: context,
                                                          initialDate:
                                                              DateTime.now(),
                                                          firstDate:
                                                              DateTime(1900),
                                                          lastDate:
                                                              DateTime.now());
                                                      joiningDate.text =
                                                          date!.toString();
                                                    },
                                                    icon: Icon(Icons
                                                        .calendar_today_outlined))),
                                          ),
                                          DropdownButton<String>(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            hint:
                                                Text("Select Year of Joining"),
                                            value: ayear,
                                            isExpanded: true,
                                            items: Dropdown.selectyear
                                                .map((String val) {
                                              return DropdownMenuItem<String>(
                                                value: val,
                                                child: Text(val),
                                              );
                                            }).toList(),
                                            onChanged: (String? num) async {
                                              if (num != null) {
                                                setState(() {
                                                  ayear = num;
                                                });
                                              }
                                              adyear.text = num.toString();
                                            },
                                          ),
                                          TextFormField(
                                            controller: name,
                                            decoration: InputDecoration(
                                              //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                              labelText: "Name",
                                            ),
                                          ),
                                          TextFormField(
                                            controller: fname,
                                            decoration: InputDecoration(
                                              //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                              labelText: "Father Name",
                                            ),
                                          ),
                                          TextFormField(
                                            controller: sname,
                                            decoration: InputDecoration(
                                              //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                              labelText: "Surname",
                                            ),
                                          ),
                                          TextFormField(
                                            controller: mname,
                                            decoration: InputDecoration(
                                              //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                              labelText: "Mother Name",
                                            ),
                                          ),
                                          TextFormField(
                                            controller: cno1,
                                            decoration: InputDecoration(
                                              //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                              labelText: "Contact No 1",
                                            ),
                                          ),
                                          TextFormField(
                                            controller: cno2,
                                            decoration: InputDecoration(
                                              //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                              labelText: "Contact No 2",
                                            ),
                                          ),
                                          TextFormField(
                                            controller: email,
                                            decoration: InputDecoration(
                                              //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                              labelText: "Email Address",
                                            ),
                                          ),
                                          TextFormField(
                                            controller: dob,
                                            readOnly: true,
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
                                                      date = await showDatePicker(
                                                          helpText:
                                                              "Select Date Of Birth",
                                                          context: context,
                                                          initialDate:
                                                              DateTime.now(),
                                                          firstDate:
                                                              DateTime(1900),
                                                          lastDate:
                                                              DateTime.now());
                                                      dob.text = date!.day
                                                              .toString() +
                                                          "/" +
                                                          date.month
                                                              .toString() +
                                                          "/" +
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
                                          TextFormField(
                                            controller: lastjob,
                                            decoration: InputDecoration(
                                              //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                              labelText: "Last Job Detail",
                                            ),
                                          ),
                                          DropdownButton<String>(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            hint: Text("Select Gender"),
                                            value: gender,
                                            isExpanded: true,
                                            items: Dropdown.gender
                                                .map((String val) {
                                              return DropdownMenuItem<String>(
                                                value: val,
                                                child: Text(val),
                                              );
                                            }).toList(),
                                            onChanged: (String? num) async {
                                              if (num != null) {
                                                setState(() {
                                                  gender = num;
                                                });
                                              }
                                              genderc.text = num.toString();
                                            },
                                          ),
                                          // TextFormField(
                                          //   controller: sphoto,
                                          //   decoration: InputDecoration(
                                          //       //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                          //       labelText: "Upload Photo",
                                          //       suffixIcon: Wrap(
                                          //         children: [
                                          //           IconButton(
                                          //             icon: Icon(Icons
                                          //                 .add_a_photo_outlined),
                                          //             onPressed: () =>
                                          //                 pickimage(ImageSource
                                          //                     .camera),
                                          //           ),
                                          //           IconButton(
                                          //               onPressed: () =>
                                          //                   pickimage(
                                          //                       ImageSource
                                          //                           .gallery),
                                          //               icon: Icon(Icons
                                          //                   .add_photo_alternate_outlined))
                                          //         ],
                                          //       )),
                                          // ),
                                          // image != null
                                          //     ? Image.file(image!,
                                          //         width: 70,
                                          //         height: 70,
                                          //         fit: BoxFit.fill)
                                          //     : Text(
                                          //         "Your captured image will appear here..."),
                                          TextFormField(
                                            controller: address,
                                            maxLines: 3,
                                            decoration: InputDecoration(
                                              //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                              labelText: "Address",
                                            ),
                                          ),
                                          TextFormField(
                                            controller: pcode,
                                            decoration: InputDecoration(
                                              //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                              labelText: "Pin Code",
                                            ),
                                          ),
                                          TextFormField(
                                            controller: reference,
                                            decoration: InputDecoration(
                                              //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                              labelText: "Reference",
                                            ),
                                          ),
                                          DropdownButton<String>(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            hint: Text("Select Designation"),
                                            value: sourceS,
                                            isExpanded: true,
                                            items: Dropdown.sources
                                                .map((String val) {
                                              return DropdownMenuItem<String>(
                                                value: val,
                                                child: Text(val),
                                              );
                                            }).toList(),
                                            onChanged: (String? num) async {
                                              if (num != null) {
                                                setState(() {
                                                  sourceS = num;
                                                });
                                              }
                                              source.text = num.toString();
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
                                              onPressed: addStaff,
                                              child: Text(
                                                "Save",
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          )
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
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
