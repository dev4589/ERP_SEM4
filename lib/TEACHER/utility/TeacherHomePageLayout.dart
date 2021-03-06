import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:erp_sem4/ADMIN/screens/login.dart';
import 'package:erp_sem4/ADMIN/screens/teacher_profile.dart';
import 'package:erp_sem4/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../screens/student attendence.dart';

String emp_no_data = '';

class TeacherHomePageLayout extends StatefulWidget {
  String emp_no;

  TeacherHomePageLayout(this.emp_no);
  @override
  _TeacherHomePageLayoutState createState() => _TeacherHomePageLayoutState();
}

class _TeacherHomePageLayoutState extends State<TeacherHomePageLayout> {
  Map<String, dynamic> mapList = {};

  fireauth() async {
    final querySnapshot = await FirebaseFirestore.instance
        .collection('Staff')
        .where('emp_no', isEqualTo: widget.emp_no)
        .get();
    for (var doc in querySnapshot.docs) {
      mapList = doc.data();
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fireauth();
  }

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('yyyy-MM-dd – kk:mm').format(now);
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: ListView(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                          ),
                          width: MediaQuery.of(context).size.width,
                          child: Column(
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
                                            left: 25, right: 25, bottom: 20)
                                        : EdgeInsets.only(
                                            left: 30, right: 30, bottom: 25),
                                width: MediaQuery.of(context).size.width,
                                child: Container(
                                    child: GridView.count(
                                  childAspectRatio: MediaQuery.of(context)
                                              .size
                                              .width >
                                          1024
                                      ? (1 / 1.3)
                                      : MediaQuery.of(context).size.width > 640
                                          ? (1 / 1.3)
                                          : (1 / 1.2),
                                  crossAxisCount: (size.width) < 361
                                      ? 3
                                      : (size.width) < 650
                                          ? 3
                                          : (size.width) < 775
                                              ? 4
                                              : (size.width) < 950
                                                  ? 5
                                                  : (size.width) < 1200
                                                      ? 6
                                                      : 7,
                                  mainAxisSpacing: 10,
                                  crossAxisSpacing: 10,
                                  shrinkWrap: true,
                                  children: [
                                    Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        elevation: 3,
                                        child: InkWell(
                                          hoverColor: Colors.cyan[50],
                                          splashColor: Colors.cyan[100],
                                          onTap: () {
                                            Navigator.pushNamed(
                                                context, showRegDataR);
                                          },
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                height: 100,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/images/settings/Manage Roles.png'),
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text("show Students",
                                                  style: gridviewtext)
                                            ],
                                          ),
                                        )),
                                    Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        elevation: 3,
                                        child: InkWell(
                                          hoverColor: Colors.cyan[50],
                                          splashColor: Colors.cyan[100],
                                          onTap: () {
                                            Navigator.pushNamed(
                                                context, dailyWork);

                                            // Navigator.push(
                                            //     context,
                                            //     MaterialPageRoute(
                                            //         builder: (context) =>
                                            //             AddClass()));
                                          },
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                height: 100,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/images/settings/Manage Class.png'),
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text("Submit Work",
                                                  style: gridviewtext)
                                            ],
                                          ),
                                        )),
                                    Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        elevation: 3,
                                        child: InkWell(
                                          hoverColor: Colors.cyan[50],
                                          splashColor: Colors.cyan[100],
                                          onTap: () {
                                            // Navigator.pushReplacement(
                                            //     context,
                                            //     MaterialPageRoute(
                                            //         builder: (context) =>
                                            //             StudentAttendance()));
                                            Navigator.pushNamed(
                                                context, studAttend);
                                          },
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                height: 100,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/images/attendence.png'),
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text("Manage Attendence",
                                                  style: gridviewtext)
                                            ],
                                          ),
                                        )),
                                    Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        elevation: 3,
                                        child: InkWell(
                                          hoverColor: Colors.cyan[50],
                                          splashColor: Colors.cyan[100],
                                          onTap: () {
                                            Navigator.pushNamed(
                                                context, teachProfR,
                                                arguments: {'data': mapList});
                                            // Navigator.pushReplacement(
                                            //     context,
                                            //     MaterialPageRoute(
                                            //         builder: (context) =>
                                            //             TeacherProfile()));
                                          },
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                height: 100,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/images/settings/Manage Staff.png'),
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text("Show Profile",
                                                  style: gridviewtext)
                                            ],
                                          ),
                                        )),
                                    Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        elevation: 3,
                                        child: InkWell(
                                          hoverColor: Colors.cyan[50],
                                          splashColor: Colors.cyan[100],
                                          onTap: () {
                                            // Navigator.pushNamed(context, loginpage);
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        LoginPage()));
                                          },
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                height: 100,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/images/Logout.png'),
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text("Log-Out",
                                                  style: gridviewtext)
                                            ],
                                          ),
                                        )),
                                  ],
                                )),
                              )
                            ],
                          )),
                    ],
                  ),
                ))
              ],
            )),
          ),
        ),
      ),
    );
  }
}
