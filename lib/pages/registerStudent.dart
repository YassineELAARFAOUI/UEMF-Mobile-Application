import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


import 'login.dart'; // Import SharedPreferences

class RegisterStudent extends StatefulWidget {
  @override
  _RegisterStudentState createState() => _RegisterStudentState();
}

class _RegisterStudentState extends State<RegisterStudent> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _isPasswordObscured = true;
  bool _isFocusedusername = false;
  bool _isFocusedemail = false;
  bool _isFocusedpassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 160), // Marge en bas
                child: Text(
                  'Register',
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
                  'Create your university account',
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
                      _isFocusedemail = hasFocus;
                    });
                  },
                  child: TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Email',
                      labelStyle: TextStyle(color: _isFocusedemail ? Colors.green : Colors.black), // Change color based on focus
                      contentPadding: EdgeInsets.symmetric(horizontal: 18, vertical: 15),
                    ),
                    cursorColor: _isFocusedemail ? Colors.green : Colors.black, // Change cursor color based on focus
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
                margin: EdgeInsets.only(top: 30),
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
                    _saveRegistrationData();
                  },
                  child: Text(
                    'Register',
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
                margin: EdgeInsets.only(top: 10),
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
                    // Actions à effectuer lors du clic sur le bouton
                  },
                  child: Text(
                    'Register | Teachers',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF004E93), // Couleur du texte du bouton
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
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
                      'Already a member ?',
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
                          MaterialPageRoute(builder: (context) => login()), // Replace RegisterPage() with your registration page widget
                        );
                      },
                      child: Text(
                        'Login',
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
              // Your other UI code here...
            ],
          ),
        ),
      ),
    );
  }

  void _saveRegistrationData() async {
    // Retrieve data from text form fields
    String username = _usernameController.text.trim();
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();

    // Save data using SharedPreferences
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('username', username);
    await prefs.setString('email', email);
    await prefs.setString('password', password);
    await prefs.setString('connected', "0");

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Account created successfully'),
        duration: Duration(seconds: 2), // Adjust the duration as needed
      ),
    );
    // Navigate to login page or perform any other actions
  }

  @override
  void dispose() {
    // Dispose controllers
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
