import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:erp_sem4/constants/constants.dart';
import 'package:flutter/material.dart';

class StudentProfileForm extends StatefulWidget {
  Map data;
  StudentProfileForm(this.data);
  @override
  _StudentProfileFormState createState() => _StudentProfileFormState();
}

class _StudentProfileFormState extends State<StudentProfileForm> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final bool displayMobileLayout = MediaQuery.of(context).size.width < 800;

    CollectionReference users = FirebaseFirestore.instance.collection('student_registration');

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
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: 40, right: 40, top: 20),
                        child: Row(children: [
                          Icon(
                            Icons.arrow_back,
                            color: kPrimaryColor,
                          ),
                          Text(" Back", style: TextStyle(color: kPrimaryColor)),
                        ]),
                      ),
                    ),
                    Expanded(
                      child: ListView(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(40),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                              ),
                              width: MediaQuery.of(context).size.width,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                padding: (displayMobileLayout == true)
                                    ? EdgeInsets.only(
                                        top: 15, left: 10, right: 10, bottom: 15)
                                    : (MediaQuery.of(context).size.width < 1024)
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
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    child: GridView.count(
                                            childAspectRatio: MediaQuery.of(context)
                                                .size
                                                .width >=
                                                1200
                                                ? (1 / 0.70)
                                                : MediaQuery.of(context).size.width > 600
                                                ? (1 / 0.80)
                                                : (1 / 0.75),
                                            crossAxisCount:
                                            (MediaQuery.of(context).size.width < 700)
                                                ? 1
                                                : (MediaQuery.of(context).size.width <
                                                1040)
                                                ? 2
                                                : 3,
                                            mainAxisSpacing: 0,
                                            crossAxisSpacing: 0,
                                            shrinkWrap: true,
                                            children: [
                                              Align(
                                                alignment: Alignment.topCenter,
                                                child: Padding(
                                                  padding: EdgeInsets.all(0),
                                                  child: Image.asset('assets/images/settings/student.jpg'
                                                  ),
                                                ),
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "PERSONAL DETAILS : ",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color: kPrimaryColor),
                                                  ),
                                                  Divider(
                                                    thickness: 5,
                                                    color: kPrimaryColor,
                                                  ),
                                                  SizedBox(height: 8),
                                                  Row(children: [
                                                    Text(
                                                      "Name : ",
                                                      style: TextStyle(
                                                        fontSize: 17,
                                                      ),
                                                    ),
                                                    Text(widget.data['first_name']+" "+widget.data['middle_name']+" "+widget.data['last_name']),
                                                  ]),
                                                  SizedBox(height: 8),
                                                  Row(children: [
                                                    Text(
                                                      "Gender : ",
                                                      style: TextStyle(
                                                        fontSize: 17,
                                                      ),
                                                    ),
                                                    Text(widget.data['gender']),
                                                  ]),
                                                  SizedBox(height: 8),
                                                  Row(children: [
                                                    Text(
                                                      "Nationality : ",
                                                      style: TextStyle(
                                                        fontSize: 17,
                                                      ),
                                                    ),
                                                    Text(widget.data['nationality']),
                                                  ]),
                                                  SizedBox(height: 8),
                                                  Row(children: [
                                                    Text(
                                                      "Religion : ",
                                                      style: TextStyle(
                                                        fontSize: 17,
                                                      ),
                                                    ),
                                                    Text(widget.data['religion']),
                                                  ]),
                                                ],
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  if (MediaQuery.of(context).size.width >=
                                                      1040)
                                                    Text(""),
                                                  if (MediaQuery.of(context).size.width >=
                                                      1040)
                                                    Text(""),

                                                  SizedBox(height: 8),
                                                  Row(children: [
                                                    Text(
                                                      "Date Of Birth : ",
                                                      style: TextStyle(
                                                        fontSize: 17,
                                                      ),
                                                    ),
                                                    Text(widget.data['date_of_birth']),
                                                  ]),
                                                  SizedBox(height: 8),
                                                  Row(children: [
                                                    Text(
                                                      "GR Number : ",
                                                      style: TextStyle(
                                                        fontSize: 17,
                                                      ),
                                                    ),
                                                    Text(widget.data['grNo']),
                                                  ]),
                                                  SizedBox(height: 8),
                                                  Row(children: [
                                                    Text(
                                                      "Email : ",
                                                      style: TextStyle(
                                                        fontSize: 17,
                                                      ),
                                                    ),
                                                    Text(widget.data['email']),
                                                  ]),
                                                  SizedBox(height: 8),
                                                  Row(children: [
                                                    Text(
                                                      "Mobile No : ",
                                                      style: TextStyle(
                                                        fontSize: 17,
                                                      ),
                                                    ),
                                                    Text(widget.data['mobileNo']),
                                                  ]),
                                                  SizedBox(height: 8),
                                                  Row(children: [
                                                    Text(
                                                      "Blood Group : ",
                                                      style: TextStyle(
                                                        fontSize: 17,
                                                      ),
                                                    ),
                                                    Text(widget.data['blood_group']),
                                                  ]),
                                                ],
                                              ),
                                              Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "PARENTS DETAILS : ",
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          color: kPrimaryColor),
                                                    ),
                                                    Divider(
                                                      thickness: 5,
                                                      color: kPrimaryColor,
                                                    ),
                                                    SizedBox(height: 8),
                                                    Row(children: [
                                                      Text(
                                                        "Father Name : ",
                                                        style: TextStyle(
                                                          fontSize: 17,
                                                        ),
                                                      ),
                                                      Text(widget.data['father_name']),
                                                    ]),
                                                    SizedBox(height: 8),
                                                    Row(children: [
                                                      Text(
                                                        "Occupation : ",
                                                        style: TextStyle(
                                                          fontSize: 17,
                                                        ),
                                                      ),
                                                      Text(widget.data['father_occupation']),
                                                    ]),
                                                    SizedBox(height: 8),
                                                    Row(children: [
                                                      Text(
                                                        "Education : ",
                                                        style: TextStyle(
                                                          fontSize: 17,
                                                        ),
                                                      ),
                                                      Text(widget.data['father_education']),
                                                    ]),
                                                    SizedBox(height: 8),
                                                    Row(children: [
                                                      Text(
                                                        "Mother Name : ",
                                                        style: TextStyle(
                                                          fontSize: 17,
                                                        ),
                                                      ),
                                                      Text(widget.data['mother_name']),
                                                    ]),
                                                    SizedBox(height: 8),
                                                    Row(children: [
                                                      Text(
                                                        "Occupation : ",
                                                        style: TextStyle(
                                                          fontSize: 17,
                                                        ),
                                                      ),
                                                      Text(widget.data['mother_occupation']),
                                                    ]),
                                                    SizedBox(height: 8),
                                                    Row(children: [
                                                      Text(
                                                        "Education : ",
                                                        style: TextStyle(
                                                          fontSize: 17,
                                                        ),
                                                      ),
                                                      Text(widget.data['mother_education']),
                                                    ]),
                                                  ]),
                                              Column(children: [
                                                if (MediaQuery.of(context).size.width >=
                                                    1040)
                                                  Text(""),
                                                if (MediaQuery.of(context).size.width >=
                                                    1040)
                                                  Text(""),
                                                SizedBox(height: 8),
                                                Row(children: [
                                                  Text(
                                                    "Mobile No : ",
                                                    style: TextStyle(
                                                      fontSize: 17,
                                                    ),
                                                  ),
                                                  Text(widget.data['father_contactNo']),
                                                ]),
                                                SizedBox(height: 8),
                                                Row(children: [
                                                  Text(
                                                    "Office Address : ",
                                                    style: TextStyle(
                                                      fontSize: 17,
                                                    ),
                                                  ),
                                                  Text(widget.data['father_office_addr']),
                                                ]),
                                                SizedBox(height: 8),
                                                Text(""),
                                                SizedBox(height: 8),
                                                Row(children: [
                                                  Text(
                                                    "Mobile No : ",
                                                    style: TextStyle(
                                                      fontSize: 17,
                                                    ),
                                                  ),
                                                  Text(widget.data['father_office_contact']),
                                                ]),
                                                SizedBox(height: 8),
                                                Row(children: [
                                                  Text(
                                                    "Office Address : ",
                                                    style: TextStyle(
                                                      fontSize: 17,
                                                    ),
                                                  ),
                                                  Text(widget.data['mother_office_addr']),
                                                ]),
                                              ]),
                                              Column(children: [
                                                if (MediaQuery.of(context).size.width >=
                                                    1040)
                                                  Text(""),
                                                if (MediaQuery.of(context).size.width >=
                                                    1040)
                                                  Text(""),
                                                SizedBox(height: 8),
                                                Row(children: [
                                                  Text(
                                                    "Email : ",
                                                    style: TextStyle(
                                                      fontSize: 17,
                                                    ),
                                                  ),
                                                  Text(widget.data['father_email']),
                                                ]),
                                                SizedBox(height: 8),
                                                Row(children: [
                                                  Text(
                                                    "Office Contact No : ",
                                                    style: TextStyle(
                                                      fontSize: 17,
                                                    ),
                                                  ),
                                                  Text("156165161"),
                                                ]),
                                                SizedBox(height: 8),
                                                Text(""),
                                                SizedBox(height: 8),
                                                Row(children: [
                                                  Text(
                                                    "Email : ",
                                                    style: TextStyle(
                                                      fontSize: 17,
                                                    ),
                                                  ),
                                                  Text(widget.data['mother_email']),
                                                ]),
                                                SizedBox(height: 8),
                                                Row(children: [
                                                  Text(
                                                    "Office Contact No : ",
                                                    style: TextStyle(
                                                      fontSize: 17,
                                                    ),
                                                  ),
                                                  Text(widget.data['mother_office_contact']),
                                                ]),
                                              ]),
                                              Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "OTHER DETAILS : ",
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          color: kPrimaryColor),
                                                    ),
                                                    Divider(
                                                      thickness: 5,
                                                      color: kPrimaryColor,
                                                    ),
                                                    SizedBox(height: 8),
                                                    Row(children: [
                                                      Text(
                                                        "Caste : ",
                                                        style: TextStyle(
                                                          fontSize: 17,
                                                        ),
                                                      ),
                                                      Text(widget.data['caste']),
                                                    ]),
                                                    SizedBox(height: 8),
                                                    Row(children: [
                                                      Text(
                                                        "Is physically handicapped : ",
                                                        style: TextStyle(
                                                          fontSize: 17,
                                                        ),
                                                      ),
                                                      Text(widget.data['is_handicap']),
                                                    ]),
                                                    SizedBox(height: 8),
                                                    Row(children: [
                                                      Expanded(
                                                        child: Text(
                                                          "Address : ",
                                                          style: TextStyle(
                                                            fontSize: 17,
                                                          ),
                                                        ),
                                                      ),
                                                      Text(widget.data['address'],softWrap: true, overflow: TextOverflow.clip,),
                                                    ]),
                                                  ]),
                                              Column(
                                                children: [
                                                  if (MediaQuery.of(context).size.width >=
                                                      1040)
                                                    Text(""),
                                                  if (MediaQuery.of(context).size.width >=
                                                      1040)
                                                    Text(""),

                                                  SizedBox(height: 8),
                                                  Row(children: [
                                                    Text(
                                                      "State : ",
                                                      style: TextStyle(
                                                        fontSize: 17,
                                                      ),
                                                    ),
                                                    Text(widget.data['state']),
                                                  ]),
                                                  SizedBox(height: 8),
                                                  Row(children: [
                                                    Text(
                                                      "Is minority  : ",
                                                      style: TextStyle(
                                                        fontSize: 17,
                                                      ),
                                                    ),
                                                    Text(widget.data['is_minority']),
                                                  ]),
                                                ],
                                              ),
                                            ],
                                          ),

                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
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
