import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class dsa_course extends StatefulWidget {
  const dsa_course({super.key});

  @override
  State<dsa_course> createState() => _dsa_courseState();
}

class _dsa_courseState extends State<dsa_course> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DSA Course"),
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
