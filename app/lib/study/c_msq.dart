import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class c_mcq extends StatefulWidget {
  int MCQ;
  c_mcq({super.key, required this.MCQ});

  @override
  State<c_mcq> createState() => _c_mcqState();
}

class _c_mcqState extends State<c_mcq> {
  List mcqsData = [];
  Future getPraQues() async {
    var res = await http.post(
        Uri.parse("https://itsoultion.com/Education/MCQ.php"),
        body: {"id": widget.MCQ.toString()});
    var data = jsonDecode(res.body);
    setState(() {
      mcqsData.addAll(data);
    });
  }

  int counter = 0;
  @override
  void initState() {
    getPraQues();

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MCQ's in C language"),
        backgroundColor: Color.fromARGB(215, 246, 125, 117),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(162, 133, 155, 78)),
              child: Image.network(
                  "https://seeklogo.com/images/C/c-programming-language-logo-9B32D017B1-seeklogo.com.png"),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 400,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  // color: Colors.lightGreenAccent,
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Q: 1/100",
                    style: TextStyle(color: Color.fromARGB(215, 246, 125, 117)),
                  ),
                  Text(
                    "Marks : 0",
                    style: TextStyle(color: Color.fromARGB(162, 133, 155, 78)),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 300,
                    child: mcqsData.isNotEmpty
                        ? ListView.builder(
                            itemCount: 1,
                            itemBuilder: ((context, index) => Column(
                                  children: [
                                    Text(mcqsData[counter]['que']),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 20),
                                      height: 35,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                              213, 207, 207, 207),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Row(
                                        children: [
                                          Text(
                                            "(A) " + mcqsData[counter]['op1'],
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 20),
                                      height: 35,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                              213, 207, 207, 207),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Row(
                                        children: [
                                          Text(
                                            "(B) " + mcqsData[counter]['op2'],
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 20),
                                      height: 35,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                              213, 207, 207, 207),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Row(
                                        children: [
                                          Text(
                                            "(C) " + mcqsData[counter]['op3'],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                )))
                        : Container(),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 35,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(215, 246, 125, 117),
                            borderRadius: BorderRadius.circular(30)),
                        child: Text("See Answer"),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            counter++;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 35,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(215, 246, 125, 117),
                              borderRadius: BorderRadius.circular(30)),
                          child: Text("Next"),
                        ),
                      ),
                    ],
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
