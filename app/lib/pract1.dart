import 'package:app/pract2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class pract1 extends StatefulWidget {
  const pract1({super.key});

  @override
  State<pract1> createState() => _pract1State();
}

class _pract1State extends State<pract1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 229, 229, 229),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 229, 229, 229),
        title: Text(
          "Details",
          style: TextStyle(
              color: Color.fromARGB(255, 2, 0, 107),
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 240,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIEzUmXlI4qfWzrYs5j6o_pxvsYnss2-NNJ0Bv97ECeQ&s"),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  height: 25,
                  width: 90,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          height: 18,
                          width: 22,
                          color: Color.fromARGB(255, 255, 187, 0),
                          child: Icon(
                            Icons.remove,
                            color: Colors.white,
                          )),
                      Icon(Icons.view_sidebar_outlined),
                      Container(
                          height: 18,
                          width: 22,
                          color: Color.fromARGB(255, 255, 187, 0),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            height: 240,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Double Burger",
                        style: TextStyle(
                            color: Color.fromARGB(255, 2, 0, 107),
                            fontWeight: FontWeight.bold,
                            fontSize: 15)),
                    Container(
                      child: Row(
                        children: [Icon(Icons.access_time), Text("5:15 Mon")],
                      ),
                    )
                  ],
                ),
                Text("Cash Deposit"),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Rs.150",
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 187, 0),
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Color.fromARGB(255, 255, 187, 0),
                          ),
                          Text("(2.5k)")
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Description",
                  style: TextStyle(
                      color: Color.fromARGB(255, 2, 0, 107),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                    "Now order the product and get discount.Now order the product and get discount.Now order the product and get discount.Now order the product and get discount.Now order the product and get discount."),
                SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color.fromARGB(255, 255, 187, 0),
                  ),
                  height: 40,
                  width: MediaQuery.of(context).size.width - 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => pract2()));
                        },
                        child: Text(
                          "Add to Cart",
                          style: TextStyle(
                              color: Color.fromARGB(255, 2, 0, 107),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
