import 'dart:convert';

import 'package:app/App/olx1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class contactus extends StatefulWidget {
  const contactus({super.key});

  @override
  State<contactus> createState() => _contactusState();
}

class _contactusState extends State<contactus> {
  TextEditingController name = TextEditingController();
  TextEditingController mail = TextEditingController();
  TextEditingController mess = TextEditingController();
  Future addContact() async {
    var res = await http.post(
        Uri.parse("https://geoponic-pace.000webhostapp.com/contact.php"),
        body: {
          "user_name": name.text,
          "user_email": mail.text,
          "message": mess.text,
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 233, 223, 223),
      ),
      backgroundColor: Color.fromARGB(255, 233, 223, 223),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Container(
            //   height: 200,
            //   // width: MediaQuery.of(context).size.width - 70,
            //   margin: EdgeInsets.symmetric(horizontal: 25),
            //   color: Colors.pink,
            //   child: Image.network(
            //   "https://png.pngtree.com/png-clipart/20230804/original/pngtree-vector-blue-contact-icon-wired-simple-vector-vector-picture-image_9536439.png"),
            // ),
            Text(
              "Contact Us",
              style: TextStyle(
                  // color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              padding: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white),
              child: TextFormField(
                controller: name,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    hintText: "Name Surname", border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              padding: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white),
              child: TextFormField(
                controller: mail,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    hintText: "Email /Phone Number", border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              padding: EdgeInsets.only(left: 10),
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white),
              child: TextFormField(
                controller: mess,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    hintText: "Message", border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => olx1()));
                addContact();
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white),
                height: 50,
                width: MediaQuery.of(context).size.width - 50,
                child: Center(
                    child: Text(
                  "Send",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
