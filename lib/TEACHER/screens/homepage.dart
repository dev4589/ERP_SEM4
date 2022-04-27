import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:erp_sem4/TEACHER/utility/TeacherHomePageLayout.dart';
import 'package:erp_sem4/constants/constants.dart';
import 'package:flutter/material.dart';

class TeacherHomePage extends StatefulWidget {
String emp_no;
TeacherHomePage(this.emp_no);
  @override
  _TeacherHomePageState createState() => _TeacherHomePageState();
}

class _TeacherHomePageState extends State<TeacherHomePage> {
  @override
  Widget build(BuildContext context) {
    // final arguments=(ModalRoute.of(context)?.settings.arguments ?? <String,dynamic>{}) as Map;

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Row(
              children: [
                Container(
                  height: double.infinity,
                  width: size.width / 2,
                  color: bColor,
                ),
                Container(
                    height: double.infinity,
                    width: size.width / 2,
                    color: Colors.white),
              ],
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  "Welcome",
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            TeacherHomePageLayout(widget.emp_no),
          ],
        ),
      ),
    );
  }
}
