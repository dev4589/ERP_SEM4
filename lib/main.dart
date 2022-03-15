import 'package:flutter/material.dart';
import 'screens/slash_screen.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyCl2rclQDlZ7L8rIZxKUMI3qmUV7MB2rLk",
          authDomain: "erp-sem4.firebaseapp.com",
          projectId: "erp-sem4",
          storageBucket: "erp-sem4.appspot.com",
          messagingSenderId: "332909613315",
          appId: "1:332909613315:web:be23cdb27b5b0675b69936",

          measurementId: "G-XCEHEC2TW3"

      ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        builder: (context, widget) => ResponsiveWrapper.builder(
          BouncingScrollWrapper.builder(context, widget!),
          // maxWidth: 1200,
          // minWidth: 480,
          defaultScale: true,
          breakpoints: [
            ResponsiveBreakpoint.resize(480, name: MOBILE),
            ResponsiveBreakpoint.resize(800, name: TABLET),
            ResponsiveBreakpoint.resize(1000, name: DESKTOP),
            ResponsiveBreakpoint.resize(1200, name: DESKTOP),
            ResponsiveBreakpoint.resize(2460, name: '4K'),
          ],
          background: Container(color: Colors.black),
        ),
        title: 'Login',
        theme: ThemeData(
          primaryColor: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: GoogleFonts.secularOneTextTheme(),
        ),
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      );
  }
}
