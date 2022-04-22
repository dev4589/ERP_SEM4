
import 'package:erp_sem4/ADMIN/utility/TeacherWorkForm.dart';
import 'package:erp_sem4/constants/constants.dart';

import '../utility/pre_admission_module.dart';

import 'package:flutter/material.dart';

class TeacherWork extends StatefulWidget {
  @override
  _TeacherWorkState createState() => _TeacherWorkState();
}

class _TeacherWorkState extends State<TeacherWork> {
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
            TeacherWorkForm(),
          ],
        ),
      ),
    );
  }
}
