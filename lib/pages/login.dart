import 'package:flutter/material.dart';
import 'package:projecteuromedflutter/pages/feed.dart';
import 'package:projecteuromedflutter/pages/registerStudent.dart';
import 'package:shared_preferences/shared_preferences.dart';

class login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<login> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _isPasswordObscured = true;
  bool _isFocusedusername = false;
  bool _isFocusedpassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Your Scaffold code...
      body: SingleChildScrollView(
        // Your SingleChildScrollView code...
        child: Column(
          // Your Column code...
          children: [
            Container(
              margin: EdgeInsets.only(top: 190), // Marge en bas
              child: Text(
                'Login',
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
                'Welcome back in UEMF app',
                style: TextStyle(
                    fontSize: 17,
                    color: Color(0XFF3A3A3A),
                    fontWeight: FontWeight.w200
                ),
              ),
            ),
            SizedBox(height: 20),
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
                  setState(() {
                    _isFocusedusername = hasFocus;
                  });
                },
                child: TextFormField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Username',
                    labelStyle: TextStyle(color: _isFocusedusername ? Colors.green : Colors.black), // Change color based on focus
                    contentPadding: EdgeInsets.symmetric(horizontal: 18, vertical: 15),
                  ),
                  cursorColor: _isFocusedusername ? Colors.green : Colors.black, // Change cursor color based on focus
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
                  setState(() {
                    _isFocusedpassword = hasFocus;
                  });
                },
                child: TextFormField(
                  controller: _passwordController,
                  obscureText: _isPasswordObscured,
                  // Utilisez un booléen pour contrôler l'obfuscation du texte
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Password',
                    labelStyle: TextStyle(color: _isFocusedpassword ? Colors.green : Colors.black), // Change color based on focus
                    contentPadding: EdgeInsets.symmetric(horizontal: 18, vertical: 15),
                    suffixIcon: IconButton(
                      icon: _isPasswordObscured
                          ? Icon(Icons.visibility)
                          : Icon(Icons.visibility_off),
                      // Changez l'icône en fonction de l'état du mot de passe
                      onPressed: () {
                        setState(() {
                          _isPasswordObscured =
                          !_isPasswordObscured; // Inversez l'état de l'obfuscation du texte
                        });
                      },
                    ),
                  ),
                  cursorColor: _isFocusedpassword ? Colors.green : Colors.black, // Change cursor color based on focus
                ),
              ),
            ),
            Container(
              alignment: AlignmentDirectional.centerEnd,
              margin: EdgeInsets.only(right: 20, top: 15), // Marge en bas
              child: Text(
                'Recovery Password',
                style: TextStyle(
                  fontSize: 14,
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
                  _login(context);
                },
                child: Text(
                  'Login',
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
            Container(
              alignment: AlignmentDirectional.center,
              margin: EdgeInsets.only(top: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member ?',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(width: 5), // Espace entre les deux Text
                  GestureDetector(
                    onTap: () {
                      // Navigate to the registration page
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterStudent()), // Replace RegisterPage() with your registration page widget
                      );
                    },
                    child: Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.green,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.green,
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

  void _login(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? usernamestore = prefs.getString('email');
    String? passwordstore = prefs.getString('password');
    String username = _usernameController.text.trim();
    String password = _passwordController.text.trim();
    if (username == usernamestore && password == passwordstore && username!="" && password!="") {
      await prefs.setString('connected', "1");
      // Navigate to home page or perform any other actions upon successful login
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => feed()), // Replace Home() with your home page widget
      );
    } else {
      // Display error message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Invalid username or password'),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

}
