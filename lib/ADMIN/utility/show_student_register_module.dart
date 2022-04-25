import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:erp_sem4/constants/constants.dart';

import 'package:flutter/material.dart';

class ShowRegisterDataForm extends StatefulWidget {
  const ShowRegisterDataForm({Key? key}) : super(key: key);
  @override
  _ShowRegisterDataFormState createState() => _ShowRegisterDataFormState();
}

List<StudentInfo> listMap = [];

class _ShowRegisterDataFormState extends State<ShowRegisterDataForm> {
  TextStyle gridviewtext = new TextStyle(fontSize: 16);
  final TextEditingController search = new TextEditingController();
  final String documentId = 'Dr7idgI5K7TK4O1lVGKK';

  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> _usersStream = FirebaseFirestore.instance
        .collection('student_registration')
        .snapshots();
    Size size = MediaQuery.of(context).size;
    var sizeWidth = MediaQuery.of(context).size.width;
    final bool displayMobileLayout = MediaQuery.of(context).size.width < 800;
    CollectionReference users =
        FirebaseFirestore.instance.collection('student_registration');

    FirebaseFirestore.instance
        .collection('student_registration')
        .get()
        .then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((doc) {
        listMap.add(StudentInfo(
          doc['academic_year'],
          doc['address'],
          doc['blood_group'],
          doc['caste'],
          doc['current_addr'],
          doc['date_of_birth'],
          doc['email'],
          doc['father_annual_income'],
          doc['father_contactNo'],
          doc['father_education'],
          doc['father_email'],
          doc['father_name'],
          doc['father_occupation'],
          doc['father_office_addr'],
          doc['father_office_contact'],
          doc['first_name'].toString(),
          doc['gender'],
          doc['grNo'],
          doc['is_handicap'],
          doc['is_minority'],
          doc['last_name'],
          doc['middle_name'],
          doc['mobileNo'],
          doc['mother_annual_income'],
          doc['mother_contactNo'],
          doc['mother_education'],
          doc['mother_email'],
          doc['mother_name'],
          doc['mother_occupation'],
          doc['mother_office_addr'],
          doc['mother_office_contact'],
          doc['nationality'],
          doc['religion'],
          doc['state'],
        ));
      });
    });

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(size.height > 770
            ? 64
            : size.height > 670
                ? 32
                : 16),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 40, top: 20),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Row(
                          children: [
                            Icon(Icons.arrow_back),
                            Text(" Back ",
                                style: TextStyle(color: kPrimaryColor)),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 40, right: 40, top: 20),
                      child: Text(" Student Registration Info ",
                          style: TextStyle(fontSize: 20, color: kPrimaryColor)),
                    ),
                  ]),
                  Expanded(
                      child: ListView(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                          ),
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                padding: (displayMobileLayout == true)
                                    ? EdgeInsets.only(
                                        left: 10, right: 10, bottom: 15)
                                    : (MediaQuery.of(context).size.width < 1024)
                                        ? EdgeInsets.only(
                                            left: 15, right: 25, bottom: 20)
                                        : EdgeInsets.only(
                                            left: 15, right: 30, bottom: 25),
                                width: MediaQuery.of(context).size.width,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  elevation: 5,
                                  child: Padding(
                                      padding: EdgeInsets.all(20),
                                      child: SizedBox(
                                        width: sizeWidth * 0.7,
                                        child: Column(children: [
                                          Row(children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(12.0),
                                              child: Text(
                                                  "Student Registeration List"),
                                            ),
                                          ]),
                                          Row(children: [
                                            Expanded(
                                              flex: 1,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(12.0),
                                                child: Center(
                                                  child: Text(
                                                    "Sr NO.",
                                                    style: TextStyle(
                                                        color: kPrimaryColor),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(12.0),
                                                child: Center(
                                                  child: Text(
                                                    "GR NO.",
                                                    style: TextStyle(
                                                        color: kPrimaryColor),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 3,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(12.0),
                                                child: Center(
                                                  child: Text(
                                                    "Student Name",
                                                    style: TextStyle(
                                                        color: kPrimaryColor),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 3,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Center(
                                                  child: Text(
                                                    "Mobile Number",
                                                    style: TextStyle(
                                                        color: kPrimaryColor),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 3,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  "",
                                                  style: TextStyle(
                                                      color: kPrimaryColor),
                                                ),
                                              ),
                                            ),
                                          ]),
                                          StreamBuilder<QuerySnapshot>(
                                            stream: _usersStream,
                                            builder: (BuildContext context,
                                                AsyncSnapshot<QuerySnapshot>
                                                    snapshot) {
                                              if (snapshot.hasError) {
                                                return Text(
                                                    'Something went wrong');
                                              }

                                              if (snapshot.connectionState ==
                                                  ConnectionState.waiting) {
                                                return Text("Loading");
                                              }
                                              int i = 0;
                                              return SizedBox(
                                                width: sizeWidth * 0.65,
                                                child: Column(
                                                  children: snapshot.data!.docs
                                                      .map((DocumentSnapshot
                                                          document) {
                                                    Map<String, dynamic> data =
                                                        document.data()! as Map<
                                                            String, dynamic>;
                                                    i++;
                                                    return Row(
                                                      children: [
                                                        Expanded(
                                                          flex: 1,
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(12.0),
                                                            child: Center(
                                                                child: Text(i
                                                                    .toString())),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          flex: 1,
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(12.0),
                                                            child: Center(
                                                                child: Text(data[
                                                                    "grNo"])),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          flex: 3,
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(12.0),
                                                            child: Center(
                                                                child: Text(data[
                                                                        "first_name"] +
                                                                    " " +
                                                                    data[
                                                                        'middle_name'] +
                                                                    " " +
                                                                    data[
                                                                        'last_name'])),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          flex: 3,
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(12.0),
                                                            child: Center(
                                                                child: Text(data[
                                                                    "mobileNo"])),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          flex: 3,
                                                          child: Center(
                                                            child: Container(
                                                              color:
                                                                  Colors.blue,
                                                              child: FlatButton(
                                                                height: 45,
                                                                minWidth: 150,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10.0)),
                                                                color:
                                                                    kPrimaryColor,
                                                                onPressed: null,
                                                                child: Text(
                                                                  "view Student",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          17,
                                                                      color: Colors
                                                                          .white),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    );
                                                  }).toList(),
                                                ),
                                              );
                                            },
                                          )
                                        ]),
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ))
                ],
              )),
            ),
          ),
        ),
      ),
    );
  }
}

class StudentInfo {
  String first_name;
  String middle_name;
  String last_name;
  String date_of_birth;
  String academic_year;
  String blood_group;
  String gender;
  String nationality;
  String caste;
  String state;
  String address;
  String is_handicap;
  String is_minority;
  String grNo;
  String mobileNo;
  String email;
  String father_name;
  String father_occupation;
  String father_education;
  String father_annual_income;
  String father_email;
  String father_contactNo;
  String father_office_addr;
  String father_office_contact;
  String mother_name;
  String mother_occupation;
  String mother_education;
  String mother_annual_income;
  String mother_email;
  String mother_contactNo;
  String mother_office_addr;
  String mother_office_contact;
  String current_addr;
  String religion;
  StudentInfo(
    this.academic_year,
    this.address,
    this.blood_group,
    this.caste,
    this.current_addr,
    this.date_of_birth,
    this.email,
    this.father_annual_income,
    this.father_contactNo,
    this.father_education,
    this.father_email,
    this.father_name,
    this.father_occupation,
    this.father_office_addr,
    this.father_office_contact,
    this.first_name,
    this.gender,
    this.grNo,
    this.is_handicap,
    this.is_minority,
    this.last_name,
    this.middle_name,
    this.mobileNo,
    this.mother_annual_income,
    this.mother_contactNo,
    this.mother_education,
    this.mother_email,
    this.mother_name,
    this.mother_occupation,
    this.mother_office_addr,
    this.mother_office_contact,
    this.nationality,
    this.religion,
    this.state,
  );
}
