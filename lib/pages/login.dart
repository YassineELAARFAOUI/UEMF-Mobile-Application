import 'package:flutter/material.dart';

class login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<login> {
  bool _isPasswordObscured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF8FFEF),
      ),
      backgroundColor: Color(0xFFF8FFEF),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20), // Espace pour séparer de la barre d'app
              Container(
                margin: EdgeInsets.only(top: 120), // Marge en bas
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15), // Marge en bas
                child: Text(
                  'Welcome back in UEMF app',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                width: 360,
                decoration: BoxDecoration(
                  color: Colors.white, // Set border color and width
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4), // Set shadow color
                      spreadRadius: 3, // Set spread radius
                      blurRadius: 7, // Set blur radius
                      offset: Offset(0, 3), // Set offset
                    ),
                  ], // Set border radius
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Username',
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 18, vertical: 15),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 360,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: TextFormField(
                  obscureText: _isPasswordObscured,
                  // Utilisez un booléen pour contrôler l'obfuscation du texte
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Password',
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 18, vertical: 15),
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
                ),
              ),
              Container(
                alignment: AlignmentDirectional.centerEnd,
                margin: EdgeInsets.only(right: 20, top: 15), // Marge en bas
                child: Text(
                  'Recovery Password',
                  style: TextStyle(
                    fontSize: 17,
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
                      color: Colors.grey.withOpacity(0.8), // Set shadow color
                      spreadRadius: 3, // Set spread radius
                      blurRadius: 7, // Set blur radius
                      offset: Offset(0, 3), // Set offset
                    ),
                  ], // Set border radius
                ), // Marge en bas
                child: ElevatedButton(
                  onPressed: () {
                    // Actions à effectuer lors du clic sur le bouton
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
                margin: EdgeInsets.only(top: 15),
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
                    Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
