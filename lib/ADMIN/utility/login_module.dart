import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';

import '../../TEACHER/screens/homepage.dart';
import '../../constants/constants.dart';
import '../screens/dashboard.dart';
import 'action_button.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:erp_sem4/constants/dropdown_values.dart';

//  White login form

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

bool obscureText = true;
bool loading = false;
String desi = 'no';
String emp_no = '0';

class _LogInState extends State<LogIn> {
  Widget fadeAlertAnimation(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return Align(
      child: FadeTransition(
        opacity: animation,
        child: child,
      ),
    );
  }

  late String email;
  late String password;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Card(
              elevation: 4,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                height: size.height * 0.9,
                width: 500,
                color: Colors.white,
                child: Center(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/erp2logo.png",
                              height: 100, width: 250),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "LOG IN",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey[700],
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const SizedBox(
                            width: 30,
                            child: Divider(
                              color: Colors.blue,
                              thickness: 2,
                            ),
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          TextField(
                            onChanged: (val) {
                              email = val;
                            },
                            decoration: const InputDecoration(
                              hintText: 'e.g. name123@gmail.com',
                              labelText: 'Email-id',
                              suffixIcon: Icon(
                                Icons.person_outlined,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          TextField(
                            onChanged: (val) {
                              password = val;
                            },
                            obscureText: obscureText,
                            decoration: InputDecoration(
                              hintText: 'Password',
                              labelText: 'Password',
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    obscureText = !obscureText;
                                  });
                                },
                                child: Icon(
                                  obscureText
                                      ? Icons.lock_outline
                                      : Icons.lock_open,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 64,
                          ),
                          InkWell(
                            onTap: () async {
                              final querySnapshot = await FirebaseFirestore
                                  .instance
                                  .collection('users')
                                  .where('username', isEqualTo: email)
                                  .where('pass', isEqualTo: password)
                                  .get();
                              for (var doc in querySnapshot.docs) {
                                // Getting data directly
                                // desi = doc.get('designation');

                                Map<String, dynamic> data = doc.data();
                                desi = data['designation'];
                                emp_no = data['emp_no'];
                              }
                              if (email.isEmpty) {
                                Alert(
                                  context: context,
                                  type: AlertType.info,
                                  title: "Email can't be empty",
                                  desc: "please enter Email",
                                  alertAnimation: fadeAlertAnimation,
                                ).show();
                              } else if (password.isEmpty) {
                                Alert(
                                  context: context,
                                  type: AlertType.info,
                                  title: "password can't be empty",
                                  desc: "please enter password",
                                  alertAnimation: fadeAlertAnimation,
                                ).show();
                              } else if (desi == 'Staff') {
                                print(desi);
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            TeacherHomePage(emp_no),
                                      ));
                                } else if(desi=='Admin') {
                                print(desi);
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => DashBoard(),
                                      ));

                              } else if (desi == 'no') {
                                print("Invalid u-id");

                                Alert(
                                        context: context,
                                        type: AlertType.info,
                                        title: "Invalid Login",
                                        buttons: [
                                          DialogButton(
                                            child: Text(
                                              "CLOSE",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20),
                                            ),
                                            onPressed: () =>
                                                Navigator.pop(context),
                                          ),
                                        ],
                                        alertAnimation: fadeAlertAnimation)
                                    .show();

                                print(desi + 'no');
                              }
                            },
                            child: actionButton(
                              "Log In",
                            ),
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        loading
            ? const Center(
                child: CircularProgressIndicator(
                  color: Colors.blue,
                ),
              )
            : Container()
      ],
    );
  }
}

//
//

//
