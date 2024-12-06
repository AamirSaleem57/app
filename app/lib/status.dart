import 'package:flutter/material.dart';
import 'package:status_view/status_view.dart';

class status extends StatefulWidget {
  const status({super.key});

  @override
  State<status> createState() => _statusState();
}

class _statusState extends State<status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            StatusView(
              radius: 40,
              spacing: 15,
              strokeWidth: 2,
              indexOfSeenStatus: 5,
              numberOfStatus: 10,
              padding: 4,
              centerImageUrl: "https://picsum.photos/200/300",
              seenColor: Colors.grey,
              unSeenColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
