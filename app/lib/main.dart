import 'package:app/App/olx1.dart';
import 'package:app/design.dart';
// import 'package:app/education.dart';
import 'package:app/home.dart';
import 'package:app/page/contact.dart';
import 'package:app/page/contactus.dart';
import 'package:app/page/signin.dart';
import 'package:app/page/signup.dart';
import 'package:app/pract1.dart';
import 'package:app/pract2.dart';
import 'package:app/pract3.dart';
import 'package:app/status.dart';
import 'package:app/study/c++_course.dart';
import 'package:app/study/c_course.dart';
import 'package:app/study/c_msq.dart';
import 'package:app/study/c_practice.dart';
import 'package:app/study/f_back.dart';
import 'package:app/study/get_info.dart';
import 'package:app/study/navig.dart';
import 'package:app/study/outline.dart';
import 'package:app/study/dsa_course.dart';
import 'package:app/study/education.dart';
import 'package:app/study/java_course.dart';
import 'package:app/study/profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // TRY THIS: Try running your application with "flutter run". You'll see
          // the application has a purple toolbar. Then, without quitting the app,
          // try changing the seedColor in the colorScheme below to Colors.green
          // and then invoke "hot reload" (save your changes or press the "hot
          // reload" button in a Flutter-supported IDE, or press "r" if you used
          // the command line to start the app).
          //
          // Notice that the counter didn't reset back to zero; the application
          // state is not lost during the reload. To reset the state, use hot
          // restart instead.
          //
          // This works for code too, not just values: Most code changes can be
          // tested with just a hot reload.
          // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          // useMaterial3: false,
          ),
      home: education(),
    );
  }
}
