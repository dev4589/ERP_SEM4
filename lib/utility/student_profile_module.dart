import '../constants/constants.dart';
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
                                          child: Image.network(
                                            'data:image/jpeg;base64,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',
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
      ),
    );
  }
}
