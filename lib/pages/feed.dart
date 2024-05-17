import 'package:flutter/material.dart';
import 'package:projecteuromedflutter/widgets/postnews.dart';
import 'package:projecteuromedflutter/widgets/Menubot.dart';

import 'fields.dart';
import 'marks.dart';

class feed extends StatelessWidget {
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
          padding: EdgeInsets.only(top: 35,right: 10,left: 10),
          color: Colors.transparent, // make the container background transparent
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 120,
                height: 30,
                child: Image.asset(
                  'assets/icons/uemf.png', // Specify your image path
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                width: 28,
                height: 28,
                child: Image.asset(
                  'assets/icons/notification.png', // Specify your image path
                  fit: BoxFit.contain,
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
              height: 260,
              child: Center(
                child: FractionallySizedBox(
                  widthFactor: 0.93, // This sets the width to 90% of the principal container
                  heightFactor: 0.93,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 15,right: 15,top: 15,bottom: 10),
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
                        child: Column(
                          children: [
                            Container(
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
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 140,
                              margin: EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      // Add your navigation logic here
                                      // For example, you can use Navigator to navigate to another page
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => fields()), // Replace NextPage with the name of your destination page
                                      );
                                    },
                                    child: Container(
                                      height: 130,
                                      width: 95,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: Column(
                                        children: [
                                          Container(
                                            width: 95,
                                            height: 95,
                                            child: Center(
                                              child: Container(
                                                width: 65,
                                                height: 65,
                                                child: Image.asset(
                                                  'assets/icons/school.png', // Specify your image path
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 95,
                                            height: 35,
                                            child: Container(
                                              child: Center(
                                                child: Text(
                                                  'SCHOOLS',
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    color: Color(0xFF004E93),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      // Add your navigation logic here
                                      // For example, you can use Navigator to navigate to another page
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => Marks()), // Replace NextPage with the name of your destination page
                                      );
                                    },
                                    child: Container(
                                      height: 130,
                                      width: 95,
                                      decoration: BoxDecoration(                                color: Colors.white,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: Column(
                                        children: [
                                          Container(
                                            width: 95,
                                            height: 95,
                                            child: Center(
                                              child: Container(
                                                width: 60,
                                                height: 60,
                                                child: Image.asset(
                                                  'assets/icons/marks.png', // Specify your image path
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 95,
                                            height: 35,
                                            child: Container(
                                              child: Center(
                                                child: Text(
                                                  'MARKS',
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    color: Color(0xFF004E93),
                                                  ),
                                                ),
                                              ),
                                            ),

                                          )
                                        ],
                                      ),
                                    ),
                                  ),

                                  Container(
                                    height: 130,
                                    width: 95,
                                    decoration: BoxDecoration(                                color: Colors.white,
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: 95,
                                          height: 95,
                                          child: Center(
                                            child: Container(
                                              width: 60,
                                              height: 60,
                                              child: Image.asset(
                                                'assets/icons/schedule.png', // Specify your image path
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 95,
                                          height: 35,
                                          child: Container(
                                            child: Center(
                                              child: Text(
                                                'SCHEDULE',
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: Color(0xFF004E93),
                                                ),
                                              ),
                                            ),
                                          ),

                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            ),
            Container(
              width: double.infinity,
              height: 60,
              margin: EdgeInsets.only(top: 20),
              child: Container(
                child: Center(
                  child: FractionallySizedBox(
                    widthFactor: 0.93, // This sets the width to 90% of the principal container
                    heightFactor: 0.93,
                    child: Container(
                      padding: EdgeInsets.only(left: 15),
                      decoration: BoxDecoration(
                        color: Color(0XFF5393CC),
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4), // Set shadow color
                            spreadRadius: 1, // Set spread radius
                            blurRadius: 2, // Set blur radius
                            offset: Offset(0, 0), // Set offset
                          ),
                        ],
                      ),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'NEWS',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
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
      bottomNavigationBar: Menubot(
        onTabSelected: (index) {
        },
      ),
    );
  }
}
