import 'dart:collection';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class outline extends StatefulWidget {
  int topics;
  outline({super.key, required this.topics});

  @override
  State<outline> createState() => _outlineState();
}

class _outlineState extends State<outline> {
  List topics = [];
  Future getPraQues() async {
    var res = await http.post(
        Uri.parse("https://itsoultion.com/Education/topics.php"),
        body: {"id": widget.topics.toString()});
    var data = jsonDecode(res.body);
    setState(() {
      topics.addAll(data);
    });
  }

  @override
  void initState() {
    getPraQues();

    // TODO: implement initState
    super.initState();
  }

  List img = [
    // "https://seeklogo.com/images/C/c-programming-language-logo-9B32D017B1-seeklogo.com.png",
    "https://seeklogo.com/images/C/c-programming-language-logo-9B32D017B1-seeklogo.com.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("C Course Outline"),
          backgroundColor: Color.fromARGB(215, 246, 125, 117),
        ),
        body: ListView.builder(
          itemCount: topics.length,
          // padding: EdgeInsets.symmetric(horizontal: 20),
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: 80,
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
                            topics[index]['logo'],
                            height: 100,
                            width: 100,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.7 - 12,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(topics[index]['name']),
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
