import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class olx1 extends StatefulWidget {
  const olx1({super.key});

  @override
  State<olx1> createState() => _olx1State();
}

class _olx1State extends State<olx1> {
  List img = [
    "https://static.vecteezy.com/system/resources/thumbnails/016/327/439/small/shopping-bag-gift-box-3d-icon-render-illustration-png.png",
    "https://static.vecteezy.com/system/resources/thumbnails/016/327/439/small/shopping-bag-gift-box-3d-icon-render-illustration-png.png",
    "https://static.vecteezy.com/system/resources/thumbnails/016/327/439/small/shopping-bag-gift-box-3d-icon-render-illustration-png.png",
    "https://static.vecteezy.com/system/resources/thumbnails/016/327/439/small/shopping-bag-gift-box-3d-icon-render-illustration-png.png",
    "https://static.vecteezy.com/system/resources/thumbnails/016/327/439/small/shopping-bag-gift-box-3d-icon-render-illustration-png.png",
    "https://static.vecteezy.com/system/resources/thumbnails/016/327/439/small/shopping-bag-gift-box-3d-icon-render-illustration-png.png",
    "https://static.vecteezy.com/system/resources/thumbnails/016/327/439/small/shopping-bag-gift-box-3d-icon-render-illustration-png.png",
    "https://static.vecteezy.com/system/resources/thumbnails/016/327/439/small/shopping-bag-gift-box-3d-icon-render-illustration-png.png",
    "https://static.vecteezy.com/system/resources/thumbnails/016/327/439/small/shopping-bag-gift-box-3d-icon-render-illustration-png.png",
    "https://static.vecteezy.com/system/resources/thumbnails/016/327/439/small/shopping-bag-gift-box-3d-icon-render-illustration-png.png",
  ];
  List type = [
    'shop',
    'shoes',
    'copy',
    'shop',
    'shoes',
    'copy',
    'shop',
    'shoes',
    'copy',
    'shop',
  ];
  List pho = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNsYsNQnuKh5e2PdsxRMYlgDe9C6ABhGDjZYzy-eFtGQ&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQa3NJeWb5kcCEe6a_nlQKBDylYt31XHCZwyDNFR3bg9sWhcDYWdqnkC71EIVpjbFX0EtM&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYRzNYBSU3kFuF-VUFLBpWqzRAugaPe6ffCyRmffvhvw&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqJwgK4FipxxReLvWOpu3fUh6DW2-p7d52BSWZrr5qNIWjkMpcDlmAga72OLTTemxIsio&usqp=CAU",
  ];
  List txt = ['Rs 60,000', 'Rs 95,000', 'Rs 100,000', 'Rs 97,000'];

  List car_pho = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsrtwutc0QR5hPYaQ9nVpnH66Cu4d7c_8dcCDvaVyV7g&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1IV5tgc1LE5_Y-ozSPj69dsXyN04PwzX8xwsRLnAuLg&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUVuECN_xeA-FriUzf0FIKnWuSLkEp1eoBHe8zod-vQw&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0vzaUmBARobdcHiF6XsTfm8zWe9cbGzfm_xt3A_YaKA&s"
  ];
  List car_txt = [
    'Rs 7,000,000',
    'Rs 20,000,000',
    'Rs 7,500,000',
    'Rs 8,700,000'
  ];
  List motor_pho = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTr513q7OmGX22izkdSTm49iJzOEV_s50BNL8vsOu0_Nw&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkO5qe9Pv3DwwT3ACZVXQNXHMxR5_VCVpe-LWoA0ofmA&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS22XmOXRR8jrZBewiRWxnwBwL7RXYN3rz8CYUb0ZP44A&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3N1mS_nH2ucH9ly1ySnlbBXdEBv0Mm2igiYgesatnnA&s"
  ];
  List motor_txt = ['Rs 170,000', 'Rs 120,000', 'Rs 100,000', 'Rs 150,000'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading:
        title: Text(
          "olx",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 40,
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 90),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromARGB(255, 255, 211, 208)),
                  child: Icon(Icons.car_crash_outlined),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Motors",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 90),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color.fromARGB(255, 255, 211, 208)),
                    child: Icon(Icons.add_home_outlined)),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Property",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                )
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.95,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.blue,
                      ),
                      Text(
                        "Farid Town, Sahiwal",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.arrow_drop_down_outlined)
                    ],
                  ),
                ),
                Icon(Icons.notifications_active_outlined)
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width - 20,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey)),
            child: Row(
              children: [
                Icon(Icons.search),
                Text(
                  "What are you looking for?",
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRigrK01tkWc6GakLXBrbKGDoVdp8Ynfi4hXDXWX_sFnw&s"),
                Image.network(
                    "https://c76c7bbc41.mjedge.net/wp-content/uploads/tc/2023/04/image-6.png")
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  "Browse categories",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "See all",
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(left: 10),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: img.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Container(
                      height: 170,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100)),
                      child: Column(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 255, 211, 208),
                                borderRadius: BorderRadius.circular(100)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.network(
                                img[index],
                                fit: BoxFit.cover,
                                height: 60,
                                width: 60,
                              ),
                            ),
                          ),
                          Text(type[index])
                        ],
                      ),
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Mobile Phones",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "See all",
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 220,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(left: 10),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: pho.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Container(
                      height: 200,
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1),
                          border: Border.all(color: Colors.grey)),
                      child: Column(
                        children: [
                          Container(
                            height: 210,
                            width: 300,
                            // padding: EdgeInsets.all(0),
                            decoration: BoxDecoration(
                                // color: const Color.fromARGB(255, 255, 211, 208),
                                borderRadius: BorderRadius.circular(5)),
                            child: ClipRRect(
                                child: Container(
                              child: Column(
                                children: [
                                  Image.network(
                                    pho[index],
                                    fit: BoxFit.cover,
                                    height: 150,
                                    width: 300,
                                  ),
                                  Text(txt[index])
                                ],
                              ),
                            )),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Cars",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                Text(
                  "See all",
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 220,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(left: 10),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: car_pho.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Container(
                      height: 200,
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1),
                          border: Border.all(color: Colors.grey)),
                      child: Column(
                        children: [
                          Container(
                            height: 210,
                            width: 300,
                            // padding: EdgeInsets.all(0),
                            decoration: BoxDecoration(
                                // color: const Color.fromARGB(255, 255, 211, 208),
                                borderRadius: BorderRadius.circular(5)),
                            child: ClipRRect(
                                child: Container(
                              child: Column(
                                children: [
                                  Image.network(
                                    car_pho[index],
                                    fit: BoxFit.cover,
                                    height: 150,
                                    width: 300,
                                  ),
                                  Text(car_txt[index])
                                ],
                              ),
                            )),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Motorcycles",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                Text(
                  "See all",
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 220,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(left: 10),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: motor_pho.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Container(
                      height: 200,
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1),
                          border: Border.all(color: Colors.grey)),
                      child: Column(
                        children: [
                          Container(
                            height: 210,
                            width: 300,
                            // padding: EdgeInsets.all(0),
                            decoration: BoxDecoration(
                                // color: const Color.fromARGB(255, 255, 211, 208),
                                borderRadius: BorderRadius.circular(5)),
                            child: ClipRRect(
                                child: Container(
                              child: Column(
                                children: [
                                  Image.network(
                                    motor_pho[index],
                                    fit: BoxFit.cover,
                                    height: 150,
                                    width: 300,
                                  ),
                                  Text(motor_txt[index])
                                ],
                              ),
                            )),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ]),
      ),
      bottomNavigationBar: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        color: Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                enableFeedback: false,
                onPressed: () {},
                icon: const Icon(
                  Icons.home_outlined,
                  size: 35,
                )),
            IconButton(
                enableFeedback: false,
                onPressed: () {},
                icon: Icon(
                  Icons.message,
                  size: 35,
                )),
            IconButton(
                enableFeedback: false,
                onPressed: () {},
                icon: Icon(
                  Icons.ads_click,
                  size: 35,
                )),
            IconButton(
                enableFeedback: false,
                onPressed: () {},
                icon: Icon(
                  Icons.supervisor_account_outlined,
                  size: 35,
                ))
          ],
        ),
      ),
    );
  }
}
