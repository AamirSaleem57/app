import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:msh_checkbox/msh_checkbox.dart';

class pract3 extends StatefulWidget {
  const pract3({super.key});

  @override
  State<pract3> createState() => _pract3State();
}

class _pract3State extends State<pract3> {
  bool isChecked2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 229, 229, 229),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 229, 229, 229),
        title: Text(
          "Check Out",
          style: TextStyle(
              color: Color.fromARGB(255, 2, 0, 107),
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Your Order",
              style: TextStyle(
                  color: Color.fromARGB(255, 2, 0, 107), fontSize: 20),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: Colors.white),
              height: 60,
              width: MediaQuery.of(context).size.width - 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaBibm7anJ8fzA8gxFfv3QoYS5DM3PrKNs-ZZeKsRMAg&s",
                        height: 50,
                        width: 50,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Zinger Burger",
                        style: TextStyle(
                            color: Color.fromARGB(255, 2, 0, 107),
                            fontWeight: FontWeight.bold),
                      ),
                      Text("asdfghjkl"),
                      Text("Rs. 180")
                    ],
                  ),
                  Container(
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
                        Icon(Icons.view_compact),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white),
                  height: 60,
                  width: MediaQuery.of(context).size.width - 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNgu-0sUkRI2q4xM-4H6-AQonx-cXMzlvMtpFkANtLOg&s",
                            height: 50,
                            width: 50,
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Cheese Burger",
                            style: TextStyle(
                                color: Color.fromARGB(255, 2, 0, 107),
                                fontWeight: FontWeight.bold),
                          ),
                          Text("fhkyrddjl"),
                          Text("Rs. 100")
                        ],
                      ),
                      Container(
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
                            Icon(Icons.view_compact),
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
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color.fromARGB(255, 253, 183, 178)),
                  child: Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: Colors.white),
              height: 60,
              width: MediaQuery.of(context).size.width - 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTu2_pLGxaWPR7GNwp7QYOUl3C2-Nlqfsy4HCtqWyN3yg&s",
                        height: 50,
                        width: 50,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Zinger Burger",
                        style: TextStyle(
                            color: Color.fromARGB(255, 2, 0, 107),
                            fontWeight: FontWeight.bold),
                      ),
                      Text("sdfaaahjhg"),
                      Text("Rs. 180")
                    ],
                  ),
                  Container(
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
                        Icon(Icons.view_compact),
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
              height: 30,
            ),
            Divider(),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [Text("Dilivery Charges"), Text("50.00")],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Total",
                  style: TextStyle(
                    color: Color.fromARGB(255, 2, 0, 107),
                  ),
                ),
                Text(
                  "Rs. 230",
                  style: TextStyle(
                    color: Color.fromARGB(255, 2, 0, 107),
                  ),
                )
              ],
            ),
            Row(
              children: [
                MSHCheckbox(
                  size: 30,
                  value: isChecked2,
                  colorConfig: MSHColorConfig.fromCheckedUncheckedDisabled(
                    checkedColor: Colors.blue,
                  ),
                  style: MSHCheckboxStyle.stroke,
                  onChanged: (selected) {
                    setState(() {
                      isChecked2 = selected;
                    });
                  },
                ),
                Column(
                  children: [
                    Text(
                      "Order Confirmation",
                      style: TextStyle(
                          color: Color.fromARGB(255, 2, 0, 107),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    isChecked2 == true
                        ? Text(
                            "this is invisible text",
                            style: TextStyle(
                                color: Color.fromARGB(255, 2, 0, 107),
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          )
                        : Text(""),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {
                bool isChecked = false;
                showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: MediaQuery.of(context).size.height * 0.75,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color.fromARGB(255, 229, 229, 229)),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                MSHCheckbox(
                                  size: 30,
                                  value: isChecked,
                                  colorConfig: MSHColorConfig
                                      .fromCheckedUncheckedDisabled(
                                    checkedColor: Colors.blue,
                                  ),
                                  style: MSHCheckboxStyle.stroke,
                                  onChanged: (selected) {
                                    setState(() {
                                      isChecked = selected;
                                    });
                                  },
                                ),
                                Text(
                                  "Order Confirmation",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 2, 0, 107),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width * 0.9,
                              color: Colors.white,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Image.network(
                                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIHFAGlKzBBrJBzXyZk3iCwFLDloUX8k3iOYWpa5a-k7ykxkPNiQ83uUYwxxsPQinOT7I&usqp=CAU",
                                            height: 50,
                                            width: 50,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        Column(
                                          children: [
                                            Text(
                                              "Credit Card",
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 2, 0, 107),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15),
                                            ),
                                            Text(
                                              "6759821354",
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 2, 0, 107)),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 15,
                                    width: 15,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color:
                                            Color.fromARGB(255, 255, 187, 0)),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width * 0.9,
                              color: Colors.white,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Image.network(
                                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRm-Au9XSuazZrUR1tDWkhgp-EuLsd2pFOlb4bQH-RHYQ&s"),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        Column(
                                          children: [
                                            Text(
                                              "Credit Card",
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 2, 0, 107),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15),
                                            ),
                                            Text(
                                              "6759821354",
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 2, 0, 107)),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 15,
                                    width: 15,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color:
                                            Color.fromARGB(255, 255, 187, 0)),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Delivery Adress",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 2, 0, 107),
                                  fontSize: 20),
                            )
                          ],
                        ),
                      );
                    });
              },
              child: Container(
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
                    Text(
                      "Add to Cart",
                      style: TextStyle(
                          color: Color.fromARGB(255, 2, 0, 107),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.home_filled,
                    color: Color.fromARGB(255, 229, 229, 229),
                  ),
                  Icon(
                    Icons.store,
                    color: Color.fromARGB(255, 229, 229, 229),
                  ),
                  Icon(
                    Icons.location_on,
                    color: Color.fromARGB(255, 229, 229, 229),
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Color.fromARGB(255, 255, 187, 0),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
