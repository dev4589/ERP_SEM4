
import 'package:erp_sem4/ADMIN/utility/StaffRegistrationForm.dart';
import 'package:erp_sem4/constants/constants.dart';

import '../utility/pre_admission_module.dart';

import 'package:flutter/material.dart';

class StaffRegistration extends StatefulWidget {
  @override
  _StaffRegistrationState createState() => _StaffRegistrationState();
}

class _StaffRegistrationState extends State<StaffRegistration> {
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
            StaffRegistrationForm(),
          ],
        ),
      ),
    );
  }
}
