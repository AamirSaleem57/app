import 'package:app/page/contact.dart';
import 'package:app/page/contactus.dart';
import 'package:app/page/signin.dart';
import 'package:app/page/signup.dart';
import 'package:app/study/education.dart';
import 'package:flutter/material.dart';

class navbar extends StatefulWidget {
  const navbar({super.key});

  @override
  State<navbar> createState() => _navbarState();
}

class _navbarState extends State<navbar> {
  List screen = [education(), contactus(), signin(), signup()];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[index],
      bottomNavigationBar: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        color: Color.fromARGB(217, 242, 103, 93),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    index = 0;
                  });
                },
                icon: const Icon(
                  Icons.home_outlined,
                  size: 30,
                )),
            IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    index = 1;
                  });
                },
                icon: Icon(
                  Icons.contact_page_outlined,
                  size: 30,
                )),
            IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    index = 2;
                  });
                },
                icon: Icon(
                  Icons.rate_review_outlined,
                  size: 30,
                )),
            IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    index = 3;
                  });
                },
                icon: Icon(
                  Icons.person_2_outlined,
                  size: 30,
                ))
          ],
        ),
      ),
    );
  }
}
