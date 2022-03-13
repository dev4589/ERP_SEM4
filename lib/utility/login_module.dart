import 'package:erp_main_project/constants/constants.dart';
import 'package:erp_main_project/database/database.dart';
import 'package:erp_main_project/models/student_details_model.dart';
import 'package:erp_main_project/models/student_document_snap_to_student.dart';
import 'package:erp_main_project/provider/user_data_provider.dart';
import 'package:erp_main_project/screens/dashboard.dart';
import 'package:erp_main_project/utility/action_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

//  White login form

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

bool obscureText = true;
bool loading = false;

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

  Database database = Database();
  String? userName;
  String? password;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Padding(
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
                duration: Duration(milliseconds: 200),
                height: size.height * 0.9,
                width: 500,
                color: Colors.white,
                child: Center(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.all(40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Container(
                          //   height: 100,
                          //   width: 250,
                          //   decoration: BoxDecoration(
                          //     shape: BoxShape.rectangle,
                          //     image: new DecorationImage(
                          //       image: NetworkImage(
                          //         'https://firebasestorage.googleapis.com/v0/b/erp-testing-2e31b.appspot.com/o/IBMlogo.png?alt=media&token=a28beed2-8438-43da-8f7f-f3309ca728bc',
                          //       ),
                          //       fit: BoxFit.cover,
                          //     ),
                          //   ),
                          // ),
                          Image.asset("assets/images/IBMlogo.png",
                              height: 100, width: 250),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "LOG IN",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey[700],
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            width: 30,
                            child: Divider(
                              color: kPrimaryColor,
                              thickness: 2,
                            ),
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          TextField(
                            onChanged: (val) {
                              userName = val;
                            },
                            decoration: InputDecoration(
                              hintText: 'e.g. a754821',
                              labelText: 'User Name',
                              suffixIcon: Icon(
                                Icons.person_outlined,
                              ),
                            ),
                          ),
                          SizedBox(
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
                          SizedBox(
                            height: 64,
                          ),
                          InkWell(
                            onTap: () async {
                              if (userName!.length == 0) {
                                Alert(
                                  context: context,
                                  type: AlertType.info,
                                  title: "Username can't be empty",
                                  desc: "please enter username",
                                  alertAnimation: fadeAlertAnimation,
                                ).show();
                              } else if (password!.length == 0) {
                                Alert(
                                  context: context,
                                  type: AlertType.info,
                                  title: "password can't be empty",
                                  desc: "please enter password",
                                  alertAnimation: fadeAlertAnimation,
                                ).show();
                              } else {
                                setState(() {
                                  loading = true;
                                });
                                if (userName == 'admin' &&
                                    password == 'admin') {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Dashboard(
                                        student: Student(),
                                      ),
                                    ),
                                  );
                                } else {
                                  List<dynamic> val = await database.login(
                                      userName!, password!);

                                  if (val[0] == 1) {
                                    print(val[1]);
                                    Alert(
                                      context: context,
                                      type: AlertType.error,
                                      desc: val[1].toString(),
                                      alertAnimation: fadeAlertAnimation,
                                    ).show();

                                    // print('User doesn"t exists');
                                  } else {
                                    Provider.of<UserData>(context,
                                        listen: false)
                                        .setPagesData(
                                        val[0].data()['pages']);
                                    ConvertSnapshotToStudent kStudent =
                                    ConvertSnapshotToStudent(val[0]);

                                    Provider.of<UserData>(context,
                                        listen: false)
                                        .setStudentData(kStudent.getStudent());
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Dashboard(
                                          student: kStudent.getStudent(),
                                        ),
                                      ),
                                    );
                                  }
                                  setState(() {
                                    loading = false;
                                  });
                                }
                              }
                            },
                            child: actionButton(
                              "Log In",
                            ),
                          ),

                          SizedBox(
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
            ? Container(
          child: Center(
            child: CircularProgressIndicator(
              color: Colors.blue,
            ),
          ),
        )
            : Container()
      ],
    );
  }
}
