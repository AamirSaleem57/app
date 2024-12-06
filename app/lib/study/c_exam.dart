import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class c_exam extends StatefulWidget {
  int E_id;
  c_exam({super.key, required this.E_id});

  @override
  State<c_exam> createState() => _c_examState();
}

class _c_examState extends State<c_exam> {
  List Exam_Q = [];
  int count = 0;
  Future getPraQues() async {
    var res = await http.post(
        Uri.parse("https://itsoultion.com/Education/getExam.php"),
        body: {"id": widget.E_id.toString()});
    var data = jsonDecode(res.body);
    setState(() {
      Exam_Q.addAll(data);
    });
    for (int i = 0; i < Exam_Q.length; i++) {
      if (Exam_Q[i]['type'] == '1') {
        setState(() {
          count = count + 1;
        });
      }
    }
  }

  @override
  void initState() {
    getPraQues();
    // TODO: implement initState
    super.initState();
  }

  int a = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exam in C" + widget.E_id.toString()),
        backgroundColor: Color.fromARGB(215, 246, 125, 117),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        a = 0;
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 80,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        color: a == 0
                            ? Color.fromARGB(215, 246, 125, 117)
                            : Colors.white,
                        border: Border.all(
                            color: Color.fromARGB(215, 246, 125, 117)),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Text("Short"),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        a = 1;
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 80,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        color: a == 1
                            ? Color.fromARGB(215, 246, 125, 117)
                            : Colors.white,
                        border: Border.all(
                            color: Color.fromARGB(215, 246, 125, 117)),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Text("Long"),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              a == 0
                  ? ListView.builder(
                      itemCount: Exam_Q.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => Exam_Q[index]['type'] ==
                              '1'
                          ? Column(children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(bottom: 10),
                                    width:
                                        MediaQuery.of(context).size.width - 140,
                                    child: Text((index + 1).toString() +
                                        " " +
                                        Exam_Q[index]['question']),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      showModalBottomSheet<void>(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: SingleChildScrollView(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(30.0),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    Text(Exam_Q[index]
                                                        ['answer']),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: Container(
                                        height: 40,
                                        width: 80,
                                        margin: EdgeInsets.only(right: 10),
                                        decoration: BoxDecoration(
                                          // color: Color.fromARGB(215, 246, 125, 117),
                                          border: Border.all(
                                              color: Color.fromARGB(
                                                  215, 246, 125, 117)),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        child: Center(
                                          child: Text("Solution"),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Divider(),
                              SizedBox(
                                height: 10,
                              ),
                            ])
                          : Container())
                  : Container(),
              SizedBox(
                height: 20,
              ),
              a == 1
                  ? ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: Exam_Q.length,
                      itemBuilder: (context, index) => Exam_Q[index]['type'] ==
                              '2'
                          ? Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(bottom: 10),
                                      width: MediaQuery.of(context).size.width -
                                          140,
                                      child: Text(
                                          ((index + 1) - count).toString() +
                                              " " +
                                              Exam_Q[index]['question']),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        showModalBottomSheet<void>(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              child: SingleChildScrollView(
                                                child: Padding(
                                                  padding: const EdgeInsets.all(
                                                      30.0),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: <Widget>[
                                                      Text(Exam_Q[index]
                                                          ['answer']),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                      child: Align(
                                        alignment: Alignment.topRight,
                                        child: Container(
                                          height: 40,
                                          width: 80,
                                          margin: EdgeInsets.only(right: 10),
                                          decoration: BoxDecoration(
                                            // color: Color.fromARGB(215, 246, 125, 117),
                                            border: Border.all(
                                                color: Color.fromARGB(
                                                    215, 246, 125, 117)),
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                          child: Center(
                                            child: Text("Solution"),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Divider(),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            )
                          : Container())
                  : Container(),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: Container(
      //   height: 60,
      //   color: Color.fromARGB(215, 246, 125, 117),
      // ),
    );
  }
}
