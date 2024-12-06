import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class f_back extends StatefulWidget {
  const f_back({super.key});

  @override
  State<f_back> createState() => _f_backState();
}

class _f_backState extends State<f_back> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: ClipRRect(
                child: Image.network(
                  "https://static.vecteezy.com/system/resources/previews/013/866/251/non_2x/feedback-3d-rendering-isometric-icon-png.png",
                ),
              ),
            ),
            Container(
              height: 40,
              width: 300,
              padding: EdgeInsets.symmetric(horizontal: 50),
              // color: Colors.green,
              child: RatingBar(
                filledIcon: Icons.star,
                emptyIcon: Icons.star_border,
                onRatingChanged: (value) => debugPrint('$value'),
                initialRating: 3,
                maxRating: 5,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              padding: EdgeInsets.only(left: 10),
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromARGB(255, 251, 171, 91)),
              child: TextFormField(
                // controller: mess,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    hintText: "Message",
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: Colors.white)),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 251, 171, 91)),
              child: Center(
                child: Text(
                  "Submit",
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
