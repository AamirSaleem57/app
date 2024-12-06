import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class java_course extends StatefulWidget {
  const java_course({super.key});

  @override
  State<java_course> createState() => _java_courseState();
}

class _java_courseState extends State<java_course> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JAVA Course"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                color: Colors.amber,
              )
            ],
          ),
        ),
      ),
    );
  }
}
