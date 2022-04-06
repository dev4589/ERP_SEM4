import '../constants/constants.dart';
import '../models/student_details_model.dart';
import '../utility/student_profile_module.dart';
import 'package:flutter/material.dart';

class StudentProfile extends StatefulWidget {

  @override
  _StudentProfileState createState() => _StudentProfileState();
}

class _StudentProfileState extends State<StudentProfile> {
  @override
  Widget build(BuildContext context) {
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
                  color: kPrimaryColor,
                ),
                Container(
                    height: double.infinity,
                    width: size.width / 2,
                    color: Colors.white),
              ],
            ),
            StudentProfileForm(),
          ],
        ),
      ),
    );
  }
}
