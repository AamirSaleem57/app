import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class c_practice extends StatefulWidget {
  int l_id;
  c_practice({super.key, required this.l_id});

  @override
  State<c_practice> createState() => _c_practiceState();
}

class _c_practiceState extends State<c_practice> {
  List img = [
    "https://seeklogo.com/images/C/c-programming-language-logo-9B32D017B1-seeklogo.com.png",
  ];
  List allQues = [];
  Future getPraQues() async {
    var res = await http.post(
        Uri.parse("https://itsoultion.com/Education/getPraQues.php"),
        body: {"id": widget.l_id.toString()});
    var data = jsonDecode(res.body);
    setState(() {
      allQues.addAll(data);
    });
  }

  @override
  void initState() {
    getPraQues();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("C Pactice Questions "),
          backgroundColor: Color.fromARGB(215, 246, 125, 117),
        ),
        body: ListView.builder(
          itemCount: allQues.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: 110,
                  margin: EdgeInsets.only(bottom: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Image.network(
                            img[0],
                            height: 100,
                            width: 100,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.69 - 9,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Q:" +
                                    (index + 1).toString() +
                                    "-" +
                                    allQues[index]['question'],
                                maxLines: 3,
                              ),
                              GestureDetector(
                                onTap: () {
                                  showModalBottomSheet<void>(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return SingleChildScrollView(
                                        child: Padding(
                                          padding: const EdgeInsets.all(20.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Text(allQues[index]['answer']),
                                            ],
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
                                      color: Color.fromARGB(215, 246, 125, 117),
                                      border: Border.all(
                                          color: Color.fromARGB(
                                              215, 246, 125, 117)),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Center(
                                      child: Text("Solution"),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Divider()
              ],
            );
          },
        ));
  }
}
