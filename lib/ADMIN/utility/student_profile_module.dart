import 'package:erp_sem4/constants/constants.dart';
import 'package:flutter/material.dart';

class StudentProfileForm extends StatefulWidget {
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
                                          Text("Devansh"),
                                          Text("RajeshKumar"),
                                          Text("Parmar"),
                                        ]),
                                        SizedBox(height: 8),
                                        Row(children: [
                                          Text(
                                            "Branch : ",
                                            style: TextStyle(
                                              fontSize: 17,
                                            ),
                                          ),
                                          Text("Science"),
                                        ]),
                                        SizedBox(height: 8),
                                        Row(children: [
                                          Text(
                                            "Birth Place : ",
                                            style: TextStyle(
                                              fontSize: 17,
                                            ),
                                          ),
                                          Text("Bharuch"),
                                        ]),
                                        SizedBox(height: 8),
                                        Row(children: [
                                          Text(
                                            "Gender : ",
                                            style: TextStyle(
                                              fontSize: 17,
                                            ),
                                          ),
                                          Text("Male"),
                                        ]),
                                        SizedBox(height: 8),
                                        Row(children: [
                                          Text(
                                            "Nationality : ",
                                            style: TextStyle(
                                              fontSize: 17,
                                            ),
                                          ),
                                          Text("Indian"),
                                        ]),
                                        SizedBox(height: 8),
                                        Row(children: [
                                          Text(
                                            "Religion : ",
                                            style: TextStyle(
                                              fontSize: 17,
                                            ),
                                          ),
                                          Text("Hindu"),
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
                                            "Course : ",
                                            style: TextStyle(
                                              fontSize: 17,
                                            ),
                                          ),
                                          Text("Arts"),
                                        ]),
                                        SizedBox(height: 8),
                                        Row(children: [
                                          Text(
                                            "Date Of Birth : ",
                                            style: TextStyle(
                                              fontSize: 17,
                                            ),
                                          ),
                                          Text("02-02-1998"),
                                        ]),
                                        SizedBox(height: 8),
                                        Row(children: [
                                          Text(
                                            "GR Number : ",
                                            style: TextStyle(
                                              fontSize: 17,
                                            ),
                                          ),
                                          Text("0781"),
                                        ]),
                                        SizedBox(height: 8),
                                        Row(children: [
                                          Text(
                                            "Email : ",
                                            style: TextStyle(
                                              fontSize: 17,
                                            ),
                                          ),
                                          Text("devparmar4589@gmail.com"),
                                        ]),
                                        SizedBox(height: 8),
                                        Row(children: [
                                          Text(
                                            "Mobile No : ",
                                            style: TextStyle(
                                              fontSize: 17,
                                            ),
                                          ),
                                          Text("6351775164"),
                                        ]),
                                        SizedBox(height: 8),
                                        Row(children: [
                                          Text(
                                            "Blood Group : ",
                                            style: TextStyle(
                                              fontSize: 17,
                                            ),
                                          ),
                                          Text("AB+"),
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
                                            Text("RajeshKumar C. Parma"),
                                          ]),
                                          SizedBox(height: 8),
                                          Row(children: [
                                            Text(
                                              "Occupation : ",
                                              style: TextStyle(
                                                fontSize: 17,
                                              ),
                                            ),
                                            Text("Job"),
                                          ]),
                                          SizedBox(height: 8),
                                          Row(children: [
                                            Text(
                                              "Education : ",
                                              style: TextStyle(
                                                fontSize: 17,
                                              ),
                                            ),
                                            Text("PhD"),
                                          ]),
                                          SizedBox(height: 8),
                                          Row(children: [
                                            Text(
                                              "Mother Name : ",
                                              style: TextStyle(
                                                fontSize: 17,
                                              ),
                                            ),
                                            Text("Geetaben R. Parmar"),
                                          ]),
                                          SizedBox(height: 8),
                                          Row(children: [
                                            Text(
                                              "Occupation : ",
                                              style: TextStyle(
                                                fontSize: 17,
                                              ),
                                            ),
                                            Text("Housewife"),
                                          ]),
                                          SizedBox(height: 8),
                                          Row(children: [
                                            Text(
                                              "Education : ",
                                              style: TextStyle(
                                                fontSize: 17,
                                              ),
                                            ),
                                            Text("M.Com"),
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
                                        Text("9428519284"),
                                      ]),
                                      SizedBox(height: 8),
                                      Row(children: [
                                        Text(
                                          "Office Address : ",
                                          style: TextStyle(
                                            fontSize: 17,
                                          ),
                                        ),
                                        Text("Ahmdedabad"),
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
                                        Text("9825466192"),
                                      ]),
                                      SizedBox(height: 8),
                                      Row(children: [
                                        Text(
                                          "Office Address : ",
                                          style: TextStyle(
                                            fontSize: 17,
                                          ),
                                        ),
                                        Text("Home Sweet Home"),
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
                                        Text("skjgvnseken@gmailc.com"),
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
                                        Text("skjdn@gmail.com"),
                                      ]),
                                      SizedBox(height: 8),
                                      Row(children: [
                                        Text(
                                          "Office Contact No : ",
                                          style: TextStyle(
                                            fontSize: 17,
                                          ),
                                        ),
                                        Text("547985621"),
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
                                            Text("Hindu"),
                                          ]),
                                          SizedBox(height: 8),
                                          Row(children: [
                                            Text(
                                              "Non Creamylayer Attached : ",
                                              style: TextStyle(
                                                fontSize: 17,
                                              ),
                                            ),
                                            Text("Yes"),
                                          ]),
                                          SizedBox(height: 8),
                                          Row(children: [
                                            Text(
                                              "Qualifying exam board : ",
                                              style: TextStyle(
                                                fontSize: 17,
                                              ),
                                            ),
                                            Text("CBSC"),
                                          ]),
                                          SizedBox(height: 8),
                                          Row(children: [
                                            Text(
                                              "Seat Number : ",
                                              style: TextStyle(
                                                fontSize: 17,
                                              ),
                                            ),
                                            Text("541"),
                                          ]),
                                          SizedBox(height: 8),
                                          Row(children: [
                                            Text(
                                              "Qualifying Exam Percentage : ",
                                              style: TextStyle(
                                                fontSize: 17,
                                              ),
                                            ),
                                            Text("98%"),
                                          ]),
                                          SizedBox(height: 8),
                                          Row(children: [
                                            Text(
                                              "Last exam Passing Percentage : ",
                                              style: TextStyle(
                                                fontSize: 17,
                                              ),
                                            ),
                                            Text("78%"),
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
                                          "Sub Caste : ",
                                          style: TextStyle(
                                            fontSize: 17,
                                          ),
                                        ),
                                        Text("non-applicable"),
                                      ]),
                                      SizedBox(height: 8),
                                      Row(children: [
                                        Text(
                                          "Qualifying Exam name : ",
                                          style: TextStyle(
                                            fontSize: 17,
                                          ),
                                        ),
                                        Text("hsc"),
                                      ]),
                                      SizedBox(height: 8),
                                      Row(children: [
                                        Text(
                                          "Last exam passing year : ",
                                          style: TextStyle(
                                            fontSize: 17,
                                          ),
                                        ),
                                        Text("2000"),
                                      ]),
                                      SizedBox(height: 8),
                                      Row(children: [
                                        Text(
                                          "Last exam Board : ",
                                          style: TextStyle(
                                            fontSize: 17,
                                          ),
                                        ),
                                        Text("1489"),
                                      ]),
                                      SizedBox(height: 8),
                                      Row(children: [
                                        Text(
                                          "Last exam Name : ",
                                          style: TextStyle(
                                            fontSize: 17,
                                          ),
                                        ),
                                        Text("Bcom"),
                                      ]),
                                      SizedBox(height: 8),
                                      Row(children: [
                                        Text(
                                          "Fees Package : ",
                                          style: TextStyle(
                                            fontSize: 17,
                                          ),
                                        ),
                                        Text("250000"),
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
                                            "Is physically handicapped : ",
                                            style: TextStyle(
                                              fontSize: 17,
                                            ),
                                          ),
                                          Text("no"),
                                        ]),
                                        SizedBox(height: 8),
                                        Row(children: [
                                          Text(
                                            "Address : ",
                                            style: TextStyle(
                                              fontSize: 17,
                                            ),
                                          ),
                                          Text("Ahmedabad"),
                                        ]),
                                        SizedBox(height: 8),
                                        Row(children: [
                                          Text(
                                            "State : ",
                                            style: TextStyle(
                                              fontSize: 17,
                                            ),
                                          ),
                                          Text("Gujarat"),
                                        ]),
                                        SizedBox(height: 8),
                                        Row(children: [
                                          Text(
                                            "Is minority  : ",
                                            style: TextStyle(
                                              fontSize: 17,
                                            ),
                                          ),
                                          Text("no"),
                                        ]),
                                        SizedBox(height: 8),
                                        Row(children: [
                                          Text(
                                            "Gap Details : ",
                                            style: TextStyle(
                                              fontSize: 17,
                                            ),
                                          ),
                                          Text("0"),
                                        ]),
                                        SizedBox(height: 8),
                                        Row(
                                          children: [
                                            Text(
                                              "Transport : ",
                                              style: TextStyle(
                                                fontSize: 17,
                                              ),
                                            ),
                                            Text("no"),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
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
    );
  }
}
