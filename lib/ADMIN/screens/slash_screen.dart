import 'package:erp_sem4/ADMIN/screens/login.dart';

import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late Animation animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    // user = checkUserLogin();
    // checkUserLogin();
    // print(user.toString() + '#######################');
    controller =
        AnimationController(duration: Duration(seconds: 3), vsync: this);
    animation = Tween(begin: 300.0, end: 400.0).animate(controller);
    controller.forward();
    startTimmer();
  }

  startTimmer() {
    Future.delayed(
      Duration(seconds: 4),
          () async {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => LoginPage(),
            ),
          );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: ListView(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  // Container(
                  //   alignment: Alignment.topCenter,
                  //   height: 10.0,
                  //   decoration: BoxDecoration(
                  //     image: DecorationImage(
                  //       image: AssetImage('images/line.png'),
                  //       fit: BoxFit.fitWidth,
                  //     ),
                  //   ),
                  // ),
                  Container(
                    // height: MediaQuery.of(context).size.height / 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 100, bottom: 0.0),
                          child: Text(
                            'Welcome to',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 27,
                            ),
                          ),
                        ),
                        AnimatedBuilder(
                          animation: animation,
                          builder: (context, child) {
                            return Container(
                              height: animation.value,
                              width: animation.value,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: ExactAssetImage(
                                      'assets/images/IBMlogo.png'),
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          bottom: 80.0, left: 40, right: 40),
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        child: LinearProgressIndicator(
                          color: Colors.blue,
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}