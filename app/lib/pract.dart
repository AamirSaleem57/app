import 'package:flutter/material.dart';

class MyGrid extends StatefulWidget {
  const MyGrid({super.key});

  @override
  State<MyGrid> createState() => _MyGridState();
}

class _MyGridState extends State<MyGrid> {
  List name = [
    'ahsan',
    'ahmad',
    'ldfj',
    'kjfa',
    'eofk',
    'ahsan',
    'ahmad',
    'ldfj',
    'kjfa',
    'eofk',
    'ahsan',
    'ahmad',
    'ldfj',
    'kjfa',
    'eofk',
    'ahsan',
    'ahmad',
    'ldfj',
    'kjfa',
    'eofk',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              height: 300,
              child: GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 6.0,
                  mainAxisSpacing: 8.0,
                  childAspectRatio: 1,
                  children: List.generate(20, (index) {
                    return Container(
                      child: Text(name[index]),
                      color: Colors.red,
                    );
                  })))
        ],
      ),
    );
  }
}
