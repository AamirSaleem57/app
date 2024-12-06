import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class get_info extends StatefulWidget {
  const get_info({super.key});

  @override
  State<get_info> createState() => _get_infoState();
}

class _get_infoState extends State<get_info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // backgroundColor: Color.fromARGB(255, 233, 223, 223),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              // color: Colors.amber,
              child: Image.network(
                  "https://cdn-icons-png.flaticon.com/512/2278/2278931.png"),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Write Your Information",
              style: TextStyle(
                  color: Color.fromARGB(234, 250, 92, 81),
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              padding: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromARGB(234, 250, 92, 81)),
              child: TextFormField(
                // controller: name,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    hintText: "Enter Your Name",
                    hintStyle: TextStyle(color: Colors.white),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              padding: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromARGB(234, 250, 92, 81)),
              child: TextFormField(
                // controller: name,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    hintText: "Enter Your Class",
                    hintStyle: TextStyle(color: Colors.white),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(234, 250, 92, 81)),
              child: Center(
                child: Text(
                  "Registered",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
