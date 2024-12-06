import 'dart:convert';

import 'package:app/study/c++_course.dart';
import 'package:app/study/c_course.dart';
import 'package:app/study/dsa_course.dart';
import 'package:app/study/java_course.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class education extends StatefulWidget {
  const education({super.key});

  @override
  State<education> createState() => _educationState();
}

class _educationState extends State<education> {
  List study = [
    'Learn complete course of C',
    'This is a C++ complete tutorial',
    'This is DSA complete tuturial'
  ];
  List img = [
    "https://www.pngkey.com/png/full/400-4003825_ads-center-surprised-woman-with-yellow.png",
    "https://www.pngkey.com/png/full/400-4003825_ads-center-surprised-woman-with-yellow.png",
    "https://www.pngmart.com/files/17/Surprised-Woman-Model-PNG-Photos.png"
  ];
  List courseList = [];
  Future courses() async {
    var res = await http.post(
      Uri.parse("https://itsoultion.com/Education/courses.php"),
    );
    var result = jsonDecode(res.body);
    setState(() {
      courseList.addAll(result);
    });
  }

  List recommendedList = [];
  Future recommended() async {
    var res = await http.post(
      Uri.parse("https://itsoultion.com/Education/recommended.php"),
    );
    var result = jsonDecode(res.body);
    setState(() {
      recommendedList.addAll(result);
    });
  }

  @override
  void initState() {
    courses();
    recommended();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 80,
                  // width: MediaQuery.of(context).size.width - 20,
                  // color: Colors.blueGrey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Hello!",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                          Text(
                            "Aamir Saleem",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          )
                        ],
                      ),
                      //   Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                      //     children: [
                      //       Icon(Icons.search),
                      //       Container(
                      //         height: 40,
                      //         decoration: BoxDecoration(
                      //             borderRadius: BorderRadius.circular(100),
                      //             color: Colors.grey),
                      //         child: ClipRRect(
                      //           borderRadius: BorderRadius.circular(50),
                      //           child: Image.network(
                      //               "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJ2g5rhRxoboHQsDoLflILWnKkVg17oiOf-g&s"),
                      //         ),
                      //       )
                      //     ],
                      //   )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(217, 242, 103, 93)),
                // width: MediaQuery.of(context).size.width - 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Full Computer",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          "courses",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )
                      ],
                    ),
                    Image.network("https://pngimg.com/d/student_PNG150.png")
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 25,
                // width: MediaQuery.of(context).size.width - 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Subject",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(color: Color.fromARGB(234, 250, 92, 81)),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 20,
                width: MediaQuery.of(context).size.width - 20,
                child: Text(
                  "Students of computer science",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.blue,
                  child: ListView.builder(
                    itemCount: courseList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => c_course(
                                    id: index + 1,
                                    name: courseList[index]['name'])));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Column(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color.fromARGB(215, 246, 125, 117),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Image.network(courseList[index]['img']),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              courseList[index]['name'],
                              style: TextStyle(fontSize: 15),
                            )
                          ],
                        ),
                      ),
                    ),
                  )),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 30,
                // color: Colors.green,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Video Course",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(color: Color.fromARGB(234, 250, 92, 81)),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListView.builder(
                itemCount: recommendedList.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
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
                                  'https://purepng.com/public/uploads/large/purepng.com-video-icon-galaxy-s6symbolsiconssamsungapp-iconsgalaxy-s6-icons-721522597480axbjz.png',
                                  height: 100,
                                  width: 100,
                                ),
                              ),
                              Container(
                                  width:
                                      MediaQuery.of(context).size.width - 160,
                                  child: Text(recommendedList[index]['name']))
                            ],
                          ),
                        ),
                      ),
                      Divider()
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
