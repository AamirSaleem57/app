import 'dart:collection';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class VideoData extends StatefulWidget {
  int video;
  VideoData({super.key, required this.video});

  @override
  State<VideoData> createState() => _VideoDataState();
}

class _VideoDataState extends State<VideoData> {
  List video = [];
  Future getPraQues() async {
    var res = await http.post(
        Uri.parse("https://itsoultion.com/Education/VideoData.php"),
        body: {"id": widget.video.toString()});
    var data = jsonDecode(res.body);
    setState(() {
      video.addAll(data);
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
          title: Text("C Course Videos"),
          backgroundColor: Color.fromARGB(215, 246, 125, 117),
        ),
        body: ListView.builder(
          itemCount: video.length,
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
                            img[0],
                            height: 100,
                            width: 100,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                width: MediaQuery.of(context).size.width * 0.62,
                                child: Text(video[index]['name'])),
                          ],
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
