import 'package:flutter/material.dart';

class PostNews extends StatelessWidget {
  final String img;
  final String datepub;
  final String descrip;

  PostNews({
    required this.img,
    required this.datepub,
    required this.descrip,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: double.infinity,
      height: null,
      child: FractionallySizedBox(
        widthFactor: 0.93,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(4.0),
          child: Container(
            color: Color(0XFFEEEEEE),
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4), // Set shadow color
                        spreadRadius: 1, // Set spread radius
                        blurRadius: 2, // Set blur radius
                        offset: Offset(0, 0), // Set offset
                      ),
                    ],
                  ),
                  child: Image.asset(
                    img,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: null,
                  padding: EdgeInsets.only(left: 10, top: 20, bottom: 20, right: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        left: BorderSide(
                          color: Color(0XFF737373),  // You can set the color you want here
                          width: 3.0,  // Width of the border
                        ),
                      ),
                    ),
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.only(left: 10),
                            height: 20,
                            child: Text(
                              datepub,
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0XFF737373)
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            width: double.infinity,
                            height: null,
                            child: Text(
                              descrip,
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0XFF737373),
                              ),
                            ),
                          ),
                          // Displaying the additional attributes
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
