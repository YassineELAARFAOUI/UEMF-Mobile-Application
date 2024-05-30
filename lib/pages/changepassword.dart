import 'package:flutter/material.dart';
import 'package:projecteuromedflutter/pages/feed.dart';
import 'package:projecteuromedflutter/pages/registerStudent.dart';
import 'package:shared_preferences/shared_preferences.dart';

class changepassword extends StatefulWidget {
  @override
  _Changepassword createState() => _Changepassword();
}

class _Changepassword extends State<changepassword> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF8F8F8),
      appBar: AppBar(),// Setting the background color to red
      body: SingleChildScrollView(
        // Your SingleChildScrollView code...
        child: Column(
          // Your Column code...
          children: [
            Container(
              margin: EdgeInsets.only(top: 110), // Marge en bas
              child: Text(
                'Password',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 15,left: 20,right: 20),
              margin: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color(0XFF3A3A3A),
                    width: 0.5,
                  ),
                ),
              ),
              child: Text(
                'Make it  more secure',
                style: TextStyle(
                    fontSize: 17,
                    color: Color(0XFF3A3A3A),
                    fontWeight: FontWeight.w200
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    width: 360,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4), // Set shadow color
                          spreadRadius: 1, // Set spread radius
                          blurRadius: 2, // Set blur radius
                          offset: Offset(0, 0), // Set offset
                        ),
                      ],
                    ),
                    child: Focus(
                      onFocusChange: (hasFocus) {

                      },
                      child: TextFormField(
                        // Utilisez un booléen pour contrôler l'obfuscation du texte
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: 'Last Password',
                          contentPadding: EdgeInsets.symmetric(horizontal: 18, vertical: 15),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    width: 360,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4), // Set shadow color
                          spreadRadius: 1, // Set spread radius
                          blurRadius: 2, // Set blur radius
                          offset: Offset(0, 0), // Set offset
                        ),
                      ],
                    ),
                    child: Focus(
                      onFocusChange: (hasFocus) {

                      },
                      child: TextFormField(
                        // Utilisez un booléen pour contrôler l'obfuscation du texte
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: 'New Password',
                          contentPadding: EdgeInsets.symmetric(horizontal: 18, vertical: 15),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    width: 360,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4), // Set shadow color
                          spreadRadius: 1, // Set spread radius
                          blurRadius: 2, // Set blur radius
                          offset: Offset(0, 0), // Set offset
                        ),
                      ],
                    ),
                    child: Focus(
                      onFocusChange: (hasFocus) {

                      },
                      child: TextFormField(
                        // Utilisez un booléen pour contrôler l'obfuscation du texte
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: 'Repeat Password',
                          contentPadding: EdgeInsets.symmetric(horizontal: 18, vertical: 15),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    width: 360,
                    height: 60,
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
                    ), // Marge en bas
                    child: ElevatedButton(
                      onPressed: () {

                      },
                      child: Text(
                        'Change Password',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Couleur du texte du bouton
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFF004E93)),
                        // Couleur de fond du bouton lorsqu'il est pressé
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                            // Définissez votre bordure personnalisée ici
                            // Par exemple, si vous voulez une bordure avec un contour rouge de 2 pixels
                            side: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}
