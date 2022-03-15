import '../screens/dashboard.dart';
import '../utility/action_button.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:firebase_auth/firebase_auth.dart';

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

 late String email;
  late String password;
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
                              color: Colors.blue,
                              thickness: 2,
                            ),
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          TextField(
                            onChanged: (val) {
                              email = val;
                            },
                            decoration: InputDecoration(
                              hintText: 'e.g. name123@gmail.com',
                              labelText: 'Email-id',
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
                              } else {
                                setState(() {
                                  loading=true;
                                });

                                FirebaseAuth.instance.signInWithEmailAndPassword(
                                    email: email, password: password).then((FirebaseUser)
                                {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => dashboard(),
                                    ),
                                  );
                                }
                                );
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
