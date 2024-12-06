import 'package:app/study/c_exam.dart';
import 'package:app/study/c_msq.dart';
import 'package:app/study/c_practice.dart';
import 'package:app/study/outline.dart';
import 'package:app/study/videoData.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class c_course extends StatefulWidget {
  int id;
  String name;
  c_course({super.key, required this.id, required this.name});

  @override
  State<c_course> createState() => _c_courseState();
}

class _c_courseState extends State<c_course> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name.toString()),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                // color: Colors.amber,
                child: Image.network(
                    "https://toppng.com/uploads/preview/code-text-programming-letters-symbols-11569818411fpnugmoo1n.jpg"),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "See all context of " + widget.name,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VideoData(video: widget.id),
                      ));
                },
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.blue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 80,
                        width: MediaQuery.of(context).size.width - 220,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(215, 246, 125, 117)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Video",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Image.network(
                                "https://purepng.com/public/uploads/large/purepng.com-video-icon-galaxy-s6symbolsiconssamsungapp-iconsgalaxy-s6-icons-721522597480axbjz.png",
                                height: 50,
                                width: 50,
                              ),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    outline(topics: widget.id),
                              ));
                        },
                        child: Container(
                          height: 80,
                          width: MediaQuery.of(context).size.width - 220,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(215, 246, 125, 117)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Image.network(
                                  "https://cdn3d.iconscout.com/3d/premium/thumb/book-stack-8427516-6704029.png",
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                              Text(
                                "Topic",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => c_practice(l_id: widget.id)));
                },
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.blue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 80,
                        width: MediaQuery.of(context).size.width - 220,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(215, 246, 125, 117)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Practice",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Image.network(
                                "https://cdn-icons-png.flaticon.com/512/43/43078.png",
                                height: 50,
                                width: 50,
                              ),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => c_mcq(MCQ: widget.id)));
                        },
                        child: Container(
                          height: 80,
                          width: MediaQuery.of(context).size.width - 220,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(215, 246, 125, 117)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Image.network(
                                  "https://cdn3d.iconscout.com/3d/premium/thumb/multiple-choice-6652304-5504813.png",
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                              Text(
                                "MCQ's",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => c_exam(E_id: widget.id),
                      ));
                },
                child: Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width - 220,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(215, 246, 125, 117)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Exam",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.network(
                          "https://cdn-icons-png.flaticon.com/512/9913/9913467.png",
                          height: 50,
                          width: 50,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
