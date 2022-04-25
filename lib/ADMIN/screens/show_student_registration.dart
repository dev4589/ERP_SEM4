
import 'package:erp_sem4/constants/constants.dart';

import '../utility/show_student_register_module.dart';
// import '../utility/student_attendace_module.dart';

import 'package:flutter/material.dart';

class ShowRegisterData extends StatefulWidget {
  @override
  _ShowRegisterDataState createState() => _ShowRegisterDataState();
}

class _ShowRegisterDataState extends State<ShowRegisterData> {
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
            ShowRegisterDataForm(),
          ],
        ),
      ),
    );
  }
}
