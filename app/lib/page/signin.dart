import 'package:app/page/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class signin extends StatefulWidget {
  const signin({super.key});

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Welcome Back",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Enter your credential to login",
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromARGB(38, 156, 56, 227)),
              child: TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    suffixIcon: Icon(Icons.visibility),
                    hintText: "Enter Username",
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromARGB(38, 156, 56, 227)),
              child: TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: Icon(Icons.visibility),
                    hintText: "Password",
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Color.fromARGB(255, 156, 56, 227)),
              height: 50,
              width: MediaQuery.of(context).size.width - 50,
              child: Center(
                  child: Text(
                "Login",
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Forgot password?",
              style: TextStyle(color: Color.fromARGB(255, 156, 56, 227)),
            ),
            SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(color: Colors.black),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => signup()));
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(color: Color.fromARGB(255, 156, 56, 227)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
