import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Facebook"),
          leading: Icon(Icons.access_time),
          actions: [Icon(Icons.access_alarm)],
          backgroundColor: Colors.grey,
        ),
        body: Container(
          height: 300,
          width: 300,
          color: Colors.red,
          child: Stack(
            children: [
              Positioned(
                top: 50,
                left: 30,
                right: 100,
                child: Container(
                  color: Colors.amber,
                  height: 200,
                  width: 120,
                  // alignment: Alignment.bottomLeft,
                ),
              )
            ],
          ),
        ));
  }
}
