import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:erp_sem4/constants/constants.dart';

import 'package:flutter/material.dart';

class ShowRegisterDataForm extends StatefulWidget {
  const ShowRegisterDataForm({Key? key}) : super(key: key);
  @override
  _ShowRegisterDataFormState createState() => _ShowRegisterDataFormState();
}

class _ShowRegisterDataFormState extends State<ShowRegisterDataForm> {
  TextStyle gridviewtext = new TextStyle(fontSize: 16);
  final TextEditingController search = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> _usersStream = FirebaseFirestore.instance
        .collection('student_registration')
        .snapshots();
    Size size = MediaQuery.of(context).size;
    var sizeWidth = MediaQuery.of(context).size.width;
    final bool displayMobileLayout = MediaQuery.of(context).size.width < 800;
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
                                                                onPressed: () {
                                                                  Navigator.pushNamed(context, studProfR,arguments: {'data': data});
                                                                },
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
