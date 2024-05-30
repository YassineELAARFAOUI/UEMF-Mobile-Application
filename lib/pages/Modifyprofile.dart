import 'package:flutter/material.dart';

class Modifyprofile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF8F8F8),  // Setting the background color to red
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
          padding: EdgeInsets.only(top: 35, right: 10, left: 10),
          child: Row(
            children: [
              // Add your widgets here
              Spacer(),
              Text(
                'Modify Profile',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 50),
                width: 360,
                decoration: BoxDecoration(
                  color: Colors.white, // Set border color and width
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4), // Set shadow color
                      spreadRadius: 1, // Set spread radius
                      blurRadius: 2, // Set blur radius
                      offset: Offset(0, 0), // Set offset
                    ),
                  ], // Set border radius
                ),
                child:Focus(
                  onFocusChange: (hasFocus) {

                  },
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Full name',
                      contentPadding: EdgeInsets.symmetric(horizontal: 18, vertical: 15),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                width: 360,
                decoration: BoxDecoration(
                  color: Colors.white, // Set border color and width
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4), // Set shadow color
                      spreadRadius: 1, // Set spread radius
                      blurRadius: 2, // Set blur radius
                      offset: Offset(0, 0), // Set offset
                    ),
                  ], // Set border radius
                ),
                child:Focus(
                  onFocusChange: (hasFocus) {

                  },
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Semestre',
                      contentPadding: EdgeInsets.symmetric(horizontal: 18, vertical: 15),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                width: 360,
                decoration: BoxDecoration(
                  color: Colors.white, // Set border color and width
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4), // Set shadow color
                      spreadRadius: 1, // Set spread radius
                      blurRadius: 2, // Set blur radius
                      offset: Offset(0, 0), // Set offset
                    ),
                  ], // Set border radius
                ),
                child:Focus(
                  onFocusChange: (hasFocus) {

                  },
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Establishment',
                      contentPadding: EdgeInsets.symmetric(horizontal: 18, vertical: 15),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                width: 360,
                decoration: BoxDecoration(
                  color: Colors.white, // Set border color and width
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4), // Set shadow color
                      spreadRadius: 1, // Set spread radius
                      blurRadius: 2, // Set blur radius
                      offset: Offset(0, 0), // Set offset
                    ),
                  ], // Set border radius
                ),
                child:Focus(
                  onFocusChange: (hasFocus) {

                  },
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Phone',
                      contentPadding: EdgeInsets.symmetric(horizontal: 18, vertical: 15),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                width: 360,
                decoration: BoxDecoration(
                  color: Colors.white, // Set border color and width
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4), // Set shadow color
                      spreadRadius: 1, // Set spread radius
                      blurRadius: 2, // Set blur radius
                      offset: Offset(0, 0), // Set offset
                    ),
                  ], // Set border radius
                ),
                child:Focus(
                  onFocusChange: (hasFocus) {

                  },
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Email',
                      contentPadding: EdgeInsets.symmetric(horizontal: 18, vertical: 15),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                width: 360,
                decoration: BoxDecoration(
                  color: Colors.white, // Set border color and width
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4), // Set shadow color
                      spreadRadius: 1, // Set spread radius
                      blurRadius: 2, // Set blur radius
                      offset: Offset(0, 0), // Set offset
                    ),
                  ], // Set border radius
                ),
                child:Focus(
                  onFocusChange: (hasFocus) {

                  },
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Location',
                      contentPadding: EdgeInsets.symmetric(horizontal: 18, vertical: 15),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 80,
                margin: EdgeInsets.only(top: 50),
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: GestureDetector(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 60,
                        color: Color(0XFF004E93),
                        alignment: Alignment.center,
                        child: Text(
                          'SAVE',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}