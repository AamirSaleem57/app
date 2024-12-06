import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class design extends StatefulWidget {
  const design({super.key});

  @override
  State<design> createState() => _designState();
}

class _designState extends State<design> {
  List shop = ['Pizza', 'Salods', 'Shokes', 'Burger'];
  List img = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOay512cBS7DpjEIkivYjDLz0wiY47uwpTOMi2DAJf2A&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmTIkT1OPQplF1EKNHeBbfVpfyJiYcZQPmGHDYWGDyWQ&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTL4cpKBlRQdrR84MuoPbRQThnB35UbrqkIql7q4mb4Xw&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4mXV7r5e6qNMjxCN4-edPiSgh_SbpnVWxskiZruPJAg&s"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 233, 233),
      // appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              color: Color.fromRGBO(139, 195, 74, 1),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: 15,
                    left: 20,
                    child: Row(
                      children: [
                        Icon(
                          Icons.shopping_bag,
                          color: Colors.white,
                        ),
                        Text(
                          "Product is very helpful",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 60,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(148, 255, 255, 255),
                      ),
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      width: MediaQuery.of(context).size.width - 50,
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          Text(
                            "Search the product",
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -50,
                    child: Container(
                      // height: 120,
                      width: MediaQuery.of(context).size.width - 25,
                      margin: EdgeInsets.symmetric(horizontal: 50),
                      child: Container(
                        height: 120,
                        child: ListView.builder(
                            itemCount: shop.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Container(
                                height: 120,
                                width: 90,
                                margin: EdgeInsets.only(right: 15),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.network(
                                          img[index],
                                          height: 80,
                                          width: 80,
                                        ),
                                      ),
                                      Text(shop[index]),
                                    ],
                                  ),
                                ),
                              );
                            }),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Popular foods",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                Text(
                  "View all>",
                  style: TextStyle(color: Colors.orange),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  height: 150,
                  width: 120,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        top: -25,
                        left: 10,
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(color: Colors.black)),
                          child: Image.network(
                              "https://static.vecteezy.com/system/resources/previews/019/607/567/original/fast-food-vector-clipart-design-graphic-clipart-design-free-png.png"),
                        ),
                      ),
                      Positioned(
                        bottom: 20,
                        left: 10,
                        child: Column(
                          children: [
                            Text(
                              "Sea Platter",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Text(
                              "4.5(264)",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  height: 150,
                  width: 120,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        top: -25,
                        left: 10,
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(color: Colors.black)),
                          child: Image.network(
                              "https://cdn-icons-png.flaticon.com/256/6039/6039575.png"),
                        ),
                      ),
                      Positioned(
                        bottom: 20,
                        left: 10,
                        child: Column(
                          children: [
                            Text(
                              "Sea Platter",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Text(
                              "4.5(264)",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.white),
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.home_filled,
                    color: Color.fromRGBO(139, 195, 74, 1),
                  ),
                  Icon(
                    Icons.store,
                  ),
                  Icon(
                    Icons.location_on,
                  ),
                  Icon(Icons.more_vert)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
