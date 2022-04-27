import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:erp_sem4/constants/constants.dart';

import 'package:flutter/material.dart';

class ShowStaffForm extends StatefulWidget {
  const ShowStaffForm({Key? key}) : super(key: key);
  @override
  _ShowStaffFormState createState() => _ShowStaffFormState();
}

List<StaffInfo> listMap = [];

class _ShowStaffFormState extends State<ShowStaffForm> {
  TextStyle gridviewtext = new TextStyle(fontSize: 16);
  final TextEditingController search = new TextEditingController();
  final String documentId = 'Dr7idgI5K7TK4O1lVGKK';

  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> _usersStream = FirebaseFirestore.instance
        .collection('Staff')
        .snapshots();
    Size size = MediaQuery.of(context).size;
    var sizeWidth = MediaQuery.of(context).size.width;
    final bool displayMobileLayout = MediaQuery.of(context).size.width < 800;
    CollectionReference users =
    FirebaseFirestore.instance.collection('Staff');

    FirebaseFirestore.instance
        .collection('Staff')
        .get()
        .then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((doc) {
        listMap.add(StaffInfo(
          doc['form_no'],
          doc['join_date'],
          doc['joinyear'],
          doc['name'],
          doc['fathername'],
          doc['surname'],
          doc['mothername'],
          doc['cno1'],
          doc['cno2'],
          doc['email'],
          doc['dob'],
          doc['lastjob'],
          doc['gender'],
          doc['address'],
          doc['pincode'],
          doc['reference'],
          doc['source'],
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
                          child: Text(" Staff Information ",
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
                                                child: Column
                                                  (children: [

                                                  Row(children: [
                                                    Expanded(
                                                      flex: 1,
                                                      child: Padding(
                                                        padding:
                                                        const EdgeInsets.all(12.0),
                                                        child: Center(
                                                          child: Text(
                                                            "Sr No.",
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
                                                            "Staff Name",
                                                            style: TextStyle(
                                                                color: kPrimaryColor),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      flex: 2,
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
                                                      flex: 2,
                                                      child: Padding(
                                                        padding:
                                                        const EdgeInsets.all(8.0),
                                                        child: Center(
                                                          child: Text(
                                                            "Designation",
                                                            style: TextStyle(
                                                                color: kPrimaryColor),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      flex: 2,
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
                                                                          .toString()),
                                                                    ),
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
                                                                        "name"] +
                                                                            " " +
                                                                            data[
                                                                            'fathername'] +
                                                                            " " +
                                                                            data[
                                                                            'surname'])),
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  flex: 2,
                                                                  child: Padding(
                                                                    padding:
                                                                    const EdgeInsets
                                                                        .all(12.0),
                                                                    child: Center(
                                                                        child: Text(data[
                                                                        "cno1"])),
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  flex: 2,
                                                                  child: Padding(
                                                                    padding:
                                                                    const EdgeInsets
                                                                        .all(12.0),
                                                                    child: Center(
                                                                        child: Text(data[
                                                                        "source"])),
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  flex: 2,
                                                                  child: Center(
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
                                                                        Navigator.pushNamed(context, staffprofile,arguments: {'data': data});
                                                                      },
                                                                      child: Text(
                                                                        "view Staff",
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                            17,
                                                                            color: Colors
                                                                                .white),
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

class StaffInfo {
  String form_no;
  String join_date;
  String joinyear;
  String name;
  String fathername;
  String surname;
  String mothername;
  String cno1;
  String cno2;
  String email;
  String dob;
  String lastjob;
  String gender;
  String address;
  String pincode;
  String reference;
  String source;
  StaffInfo(
      this.form_no,
      this.address,
      this.join_date,
      this.joinyear,
      this.name,
      this.fathername,
      this.email,
      this.surname,
      this.mothername,
      this.cno1,
      this.cno2,
      this.dob,
      this.lastjob,
      this.gender,
      this.pincode,
      this.reference,
      this.source,

      );
}
