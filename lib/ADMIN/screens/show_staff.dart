
import 'package:erp_sem4/ADMIN/utility/show_Staff_Form.dart';
import 'package:erp_sem4/constants/constants.dart';

import '../utility/show_student_register_module.dart';
// import '../utility/student_attendace_module.dart';

import 'package:flutter/material.dart';

class ShowStaff extends StatefulWidget {
  @override
  _ShowStaffState createState() => _ShowStaffState();
}

class _ShowStaffState extends State<ShowStaff> {
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
                  color: bColor,
                ),
                Container(
                    height: double.infinity,
                    width: size.width / 2,
                    color: Colors.white),
              ],
            ),
            ShowStaffForm(),
          ],
        ),
      ),
    );
  }
}
