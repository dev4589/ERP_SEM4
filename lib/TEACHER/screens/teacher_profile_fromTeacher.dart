import 'package:erp_sem4/constants/constants.dart';

import '../utility/teacher_profile_module_fromTeacher.dart';
import 'package:flutter/material.dart';

class TeacherProfileForTeach extends StatefulWidget {
  const TeacherProfileForTeach({Key? key}) : super(key: key);

  @override
  _TeacherProfileForTeachState createState() => _TeacherProfileForTeachState();
}

class _TeacherProfileForTeachState extends State<TeacherProfileForTeach> {
  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ?? <String, dynamic>{}) as Map;
    print(arguments['data']);
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
            TeacherProfileFormForTeach(arguments['data']),
          ],
        ),
      ),
    );
  }
}
