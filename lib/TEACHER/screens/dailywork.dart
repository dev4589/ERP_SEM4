import 'package:erp_sem4/TEACHER/utility/DailyWorkForm.dart';
import 'package:flutter/material.dart';
import 'package:erp_sem4/constants/constants.dart';

import '../utility/Student Attencence Form.dart';

class DailyWork extends StatefulWidget {
  @override
  _DailyWorkState createState() => _DailyWorkState();
}

class _DailyWorkState extends State<DailyWork> {
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
            DailyWorkForm(),
          ],
        ),
      ),
    );
  }
}
