import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:erp_sem4/constants/constants.dart';

import 'package:flutter/material.dart';

import 'show_student_data/tableData.dart';

class ShowRegisterDataForm extends StatefulWidget {
  const ShowRegisterDataForm({Key? key}) : super(key: key);
  @override
  _ShowRegisterDataFormState createState() => _ShowRegisterDataFormState();
}

class _ShowRegisterDataFormState extends State<ShowRegisterDataForm> {

  TextStyle gridviewtext = new TextStyle(fontSize: 16);
  final TextEditingController search = new TextEditingController();
  // late List<Map<String , dynamic>> mapFromData=[];
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   getData(){
  //     FirebaseFirestore.instance.collection("student_registration").get().then(
  //           (value) {
  //         value.docs.forEach(
  //               (element) {
  //             mapFromData.add(element.data());
  //           },
  //         );
  //       },
  //     );
  //     print(mapFromData);
  //   }
  //   getData();
  // }
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   // getData();
  // }

  // getData() {
  //   FirebaseFirestore.instance.collection("student_registration").get().then(
  //         (value) {
  //       value.docs.forEach(
  //             (element) {
  //           mapFromData.add(element.data());
  //         },
  //       );
  //     },
  //   );
  //   return mapFromData;
  // }

  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> _usersStream = FirebaseFirestore.instance.collection('users').snapshots();
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
                                          child: TableRow1(),
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