import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:erp_sem4/constants/constants.dart';

import 'package:flutter/material.dart';

class TableRow1 extends StatelessWidget {
  final Map<String, dynamic> map;
  TableRow1(this.map);

  @override
  Widget build(BuildContext context) {
    // Map<String,dynamic> map=data;
    var size = MediaQuery.of(context).size.width;
    return Table(
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        defaultColumnWidth: size < 480
            ? FixedColumnWidth(120.0)
            : (size < 800)
                ? FixedColumnWidth(180.0)
                : FixedColumnWidth(250.0),
        border: TableBorder(
            horizontalInside: BorderSide(
                width: 1, color: Colors.black12, style: BorderStyle.solid)),
        children: [
          TableRow(
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.2),
              ),
              children: [
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Student Registeration List"),
                  ),
                ),
                for (int i = 0; i < 48; i++) ...[
                  TableCell(
                    child: Text(""),
                  ),
                ]
              ]),
          TableCells(),
          TableCells2(map),
          TableCells2(map),
        ]);
  }

//title of table
  TableRow TableCells() {
    return TableRow(children: [
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Status",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Student Name",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Address",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Mobile Number",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Email Address",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Date Of Birth",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      // TableCell(
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Text(
      //       "Birth Place",
      //       style: TextStyle(color: kPrimaryColor),
      //     ),
      //   ),
      // ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Academic Year",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Blood Group",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Gender",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Nationality",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Caste",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      // TableCell(
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Text(
      //       "Sub Caste",
      //       style: TextStyle(color: kPrimaryColor),
      //     ),
      //   ),
      // ),
      // TableCell(
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Text(
      //       "Non Creamylayer",
      //       style: TextStyle(color: kPrimaryColor),
      //     ),
      //   ),
      // ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Physically Handicapped",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Minority",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      // TableCell(
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Text(
      //       "Qualifying Exam board",
      //       style: TextStyle(color: kPrimaryColor),
      //     ),
      //   ),
      // ),
      // TableCell(
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Text(
      //       "Qualifying Exam name",
      //       style: TextStyle(color: kPrimaryColor),
      //     ),
      //   ),
      // ),
      // TableCell(
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Text(
      //       "Qualifying Exam Percentage",
      //       style: TextStyle(color: kPrimaryColor),
      //     ),
      //   ),
      // ),
      // TableCell(
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Text(
      //       "Seat Number",
      //       style: TextStyle(color: kPrimaryColor),
      //     ),
      //   ),
      // ),
      // TableCell(
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Text(
      //       "Passing Year",
      //       style: TextStyle(color: kPrimaryColor),
      //     ),
      //   ),
      // ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "State",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "GR Number",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      // TableCell(
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Text(
      //       "Gap Details",
      //       style: TextStyle(color: kPrimaryColor),
      //     ),
      //   ),
      // ),
      // TableCell(
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Text(
      //       "Degree",
      //       style: TextStyle(color: kPrimaryColor),
      //     ),
      //   ),
      // ),
      // TableCell(
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Text(
      //       "University",
      //       style: TextStyle(color: kPrimaryColor),
      //     ),
      //   ),
      // ),
      // TableCell(
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Text(
      //       "Branch",
      //       style: TextStyle(color: kPrimaryColor),
      //     ),
      //   ),
      // ),
      // TableCell(
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Text(
      //       "Shift",
      //       style: TextStyle(color: kPrimaryColor),
      //     ),
      //   ),
      // ),
      // TableCell(
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Text(
      //       "Year",
      //       style: TextStyle(color: kPrimaryColor),
      //     ),
      //   ),
      // ),
      // TableCell(
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Text(
      //       "Batch",
      //       style: TextStyle(color: kPrimaryColor),
      //     ),
      //   ),
      // ),
      // TableCell(
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Text(
      //       "Sub Batch",
      //       style: TextStyle(color: kPrimaryColor),
      //     ),
      //   ),
      // ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Father Name",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Father Occupation",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Father Education",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Father's Mobile no",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Father's Email address",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Father's Office address",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Father's Office Mobile no",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Annual Income",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Mother Name",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Mother's Occupation",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Mother's Education",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),

      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Mother's Mobile no",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Mother's Email id",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Mother's Office Address",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Mohter's Office Mobile no",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Annual Income",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),

      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Current Address",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Transport",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
    ]);
  }

//real data
  TableRow TableCells2(Map<String, dynamic> map) {
    return TableRow(children: [
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              // "Admitted",
              map['status'],
              style: TextStyle(color: Colors.green),
            )),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(map['first_name'] +
                " " +
                map['middle_name'] +
                " " +
                map['last_name'])),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0), child: Text(map['address'])),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0), child: Text(map['mobileMo'])),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0), child: Text(map['email'])),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(map['date_of_birth'])),
      ),
      // TableCell(
      //   child: Padding(
      //       padding: const EdgeInsets.all(8.0), child: Text("Ahmedabad")),
      // ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(map['academic_year'])),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(map['blood_group'])),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0), child: Text(map['gender'])),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(map['nationality'])),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0), child: Text(map['caste'])),
      ),
      // TableCell(
      //   child: Padding(
      //       padding: const EdgeInsets.all(8.0), child: Text(map['subcaste'])),
      // ),
      // TableCell(
      //   child: Padding(padding: const EdgeInsets.all(8.0), child: Text("Yes")),
      // ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(map['is_handicap'])),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(map["is_minority"])),
      ),
      // TableCell(
      //   child: Padding(
      //       padding: const EdgeInsets.all(8.0), child: Text("Gujarat Board")),
      // ),
      // TableCell(
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Text(
      //       "Qualifying Exam name",
      //       style: TextStyle(color: kPrimaryColor),
      //     ),
      //   ),
      // ),
      // TableCell(
      //   child: Padding(padding: const EdgeInsets.all(8.0), child: Text("73%")),
      // ),
      // TableCell(
      //   child:
      //   Padding(padding: const EdgeInsets.all(8.0), child: Text("G104650")),
      // ),
      // TableCell(
      //   child: Padding(padding: const EdgeInsets.all(8.0), child: Text("2017")),
      // ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0), child: Text(map['state'])),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0), child: Text(map['grNo'])),
      ),
      // TableCell(
      //   child:
      //   Padding(padding: const EdgeInsets.all(8.0), child: Text("No Gap")),
      // ),
      // TableCell(
      //   child: Padding(padding: const EdgeInsets.all(8.0), child: Text("MCA")),
      // ),
      // TableCell(
      //   child: Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text("Gujarat Tech. University")),
      // ),
      // TableCell(
      //   child: Padding(padding: const EdgeInsets.all(8.0), child: Text("IT")),
      // ),
      // TableCell(
      //   child: Padding(padding: const EdgeInsets.all(8.0), child: Text("Noon")),
      // ),
      // TableCell(
      //   child: Padding(padding: const EdgeInsets.all(8.0), child: Text("2021")),
      // ),
      // TableCell(
      //   child: Padding(padding: const EdgeInsets.all(8.0), child: Text("A")),
      // ),
      // TableCell(
      //   child: Padding(padding: const EdgeInsets.all(8.0), child: Text("A3")),
      // ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(map['father_name'])),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(map['father_occupation'])),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(map['father_education'])),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(map['father_contactNo'])),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(map['father_email'])),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(map['father_office_addr'])),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(map['father_office_contact'])),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(map['father_annual_income'])),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(map['mother_name'])),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(map['mother_occupation'])),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(map['mother_education'])),
      ),

      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(map['mother_contactNo'])),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(map['mother_email'])),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(map['mother_office_addr'])),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(map['mother_office_contact'])),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(map['mother_annual_income'])),
      ),

      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(map["current_addr"])),
      ),
      TableCell(
        //transport
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(map['transportation'])),
      ),
    ]);
  }
}

class ShowRegisterDataForm extends StatefulWidget {
  const ShowRegisterDataForm({Key? key}) : super(key: key);
  @override
  _ShowRegisterDataFormState createState() => _ShowRegisterDataFormState();
}

class _ShowRegisterDataFormState extends State<ShowRegisterDataForm> {
  final String documentId = "1UkFdMfIyjrFeXJmsHXh";

  TextStyle gridviewtext = new TextStyle(fontSize: 16);
  final TextEditingController search = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    CollectionReference users =
        FirebaseFirestore.instance.collection('student_registration');

    Size size = MediaQuery.of(context).size;

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
                                      : (MediaQuery.of(context).size.width <
                                              1024)
                                          ? EdgeInsets.only(
                                              left: 15, right: 25, bottom: 20)
                                          : EdgeInsets.only(
                                              left: 15, right: 30, bottom: 25),
                                  width: MediaQuery.of(context).size.width,
                                  child: Card(
                                    color: Color(0xfff8f9fa),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    elevation: 5,
                                    child: Padding(
                                      padding: EdgeInsets.all(20),
                                      child: GridView.count(
                                        childAspectRatio:
                                            MediaQuery.of(context).size.width >
                                                    1024
                                                ? (1 / 0.15)
                                                : MediaQuery.of(context)
                                                            .size
                                                            .width >
                                                        640
                                                    ? (1 / 0.08)
                                                    : (1 / 0.15),
                                        crossAxisCount:
                                            (displayMobileLayout == true)
                                                ? 1
                                                : (MediaQuery.of(context)
                                                            .size
                                                            .width <
                                                        1050)
                                                    ? 1
                                                    : 3,
                                        mainAxisSpacing: 15,
                                        crossAxisSpacing: 18,
                                        shrinkWrap: true,
                                        physics: BouncingScrollPhysics(),
                                        children: [
                                          TextFormField(
                                            controller: search,
                                            decoration: InputDecoration(
                                                labelText: "Search",
                                                hintText:
                                                    "Search by Name,admission no,form id"),
                                          ),
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
                                                    print("");
                                                  },
                                                  child: Text(
                                                    "Search",
                                                    style: TextStyle(
                                                        fontSize: 17,
                                                        color: Colors.white),
                                                  )))
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  padding: (displayMobileLayout == true)
                                      ? EdgeInsets.only(
                                          left: 10, right: 10, bottom: 15)
                                      : (MediaQuery.of(context).size.width <
                                              1024)
                                          ? EdgeInsets.only(
                                              left: 15, right: 25, bottom: 20)
                                          : EdgeInsets.only(
                                              left: 15, right: 30, bottom: 25),
                                  width: MediaQuery.of(context).size.width,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    elevation: 5,
                                    child: Padding(
                                        padding: EdgeInsets.all(20),
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child:
                                              FutureBuilder<DocumentSnapshot>(
                                            future: users.doc(documentId).get(),
                                            builder: (BuildContext context,
                                                AsyncSnapshot<DocumentSnapshot>
                                                    snapshot) {
                                              if (snapshot.hasError) {
                                                return Text(
                                                    "Something went wrong");
                                              }

                                              if (snapshot.hasData &&
                                                  !snapshot.data!.exists) {
                                                return Text(
                                                    "Document does not exist");
                                              }

                                              if (snapshot.connectionState ==
                                                  ConnectionState.done) {
                                                Map<String, dynamic> data =
                                                    snapshot.data!.data()
                                                        as Map<String, dynamic>;
                                                print(data);
                                                return TableRow1(data);
                                              }

                                              return Text("loading");
                                            },
                                          ),
                                        )),
                                  ),
                                )
                              ],
                            )),
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
