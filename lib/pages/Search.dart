import 'package:flutter/material.dart';
import 'package:projecteuromedflutter/widgets/postnews.dart';
import 'package:projecteuromedflutter/widgets/Menubot.dart';

import 'fields.dart';
import 'marks.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> postData = [
      {
        "img": "assets/icons/p1.jpg",
        "datepub": "16:38 - le 25 avril 2024",
        "descrip": "Formation en Orthodontie Digitale à l'UEMF"
      },
      {
        "img": "assets/icons/p2.jpg",
        "datepub": "16:42 - le 25 avril 2024",
        "descrip": "Partenariat entre l’Université Euromed de Fès et la Paris School of Technology and Business"
      }
    ];
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              bottom: BorderSide(
                color: Color(0XFFF2F2F2), // Set the color of the border
                width: 2.0, // Set the width of the border
              ),
            ),
          ),
          height: 85,
          padding: EdgeInsets.only(top: 35, right: 10, left: 10), // make the container background transparent
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: null,
                height: 28,
                margin: EdgeInsets.only(left: 60),
                child: Text(
                  'Search',
                  style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 68,
              child: Center(
                child: FractionallySizedBox(
                  widthFactor: 0.93, // This sets the width to 90% of the principal container
                  heightFactor: 0.93,
                  child: Container(
                    padding: EdgeInsets.only(left: 5,right: 5,top: 5,bottom: 5),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4), // Set shadow color
                          spreadRadius: 1, // Set spread radius
                          blurRadius: 2, // Set blur radius
                          offset: Offset(0, 0), // Set offset
                        ),
                      ],
                      gradient: LinearGradient(
                        colors: [Color(0XFF004E93), Color(0XFF3B84C5)],
                        begin: Alignment.topCenter, // Gradient starts at the top center
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Row(
                          children: [
                            Container(
                                height: 60,
                                width: 60,
                                child: Center( // Wrap the inner container with Center
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    child: Image.asset(
                                      'assets/icons/search.png', // Specify your image path
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                )
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                padding: EdgeInsets.only(top: 3),
                                height: 60,
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Search...',
                                    hintStyle: TextStyle(color: Color(0XFFDBDBDB)),// Optional: Add a hint text
                                    border: InputBorder.none, // Remove the underline
                                    contentPadding: EdgeInsets.symmetric(horizontal: 10), // Optional: Add padding inside the text field
                                  ),
                                  cursorColor: Color(0XFF004E93),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),

            ),
            Column(
              children: [
                ...postData.map((post) {
                  return PostNews(
                    img: post['img'],
                    datepub: post['datepub'],
                    descrip: post['descrip'],
                  );
                }).toList(),
                SizedBox(height: 40), // Add SizedBox at the end
              ],
            ),
          ],
        ),
      ),
    );
  }
}
