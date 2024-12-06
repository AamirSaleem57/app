import 'package:app/page/signin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
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
            Text(
              "Sign up",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Enter your account",
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white),
              child: TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    // suffixIcon: Icon(Icons.visibility),
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
                  borderRadius: BorderRadius.circular(15), color: Colors.white),
              child: TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    // suffixIcon: Icon(Icons.visibility),
                    hintText: "Email",
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white),
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
              margin: EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white),
              child: TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: Icon(Icons.visibility),
                    hintText: "Confirm Password",
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40), color: Colors.white),
              height: 50,
              width: MediaQuery.of(context).size.width - 50,
              child: Center(
                  child: Text(
                "Sign up",
                style: TextStyle(color: Colors.black, fontSize: 20),
              )),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Or",
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                border: Border.all(color: Colors.white),
              ),
              height: 50,
              width: MediaQuery.of(context).size.width - 50,
              child: Center(
                  child: Text(
                "Sign In with Google",
                style: TextStyle(
                  color: Colors.black,
                ),
              )),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(color: Colors.black),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => signin()));
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(color: Color.fromARGB(255, 113, 126, 24)),
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
