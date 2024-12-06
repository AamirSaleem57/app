import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cpp_course extends StatefulWidget {
  const cpp_course({super.key});

  @override
  State<cpp_course> createState() => _cpp_courseState();
}

class _cpp_courseState extends State<cpp_course> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("C++ Course"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                color: Colors.amberAccent,
              )
            ],
          ),
        ),
      ),
    );
  }
}
