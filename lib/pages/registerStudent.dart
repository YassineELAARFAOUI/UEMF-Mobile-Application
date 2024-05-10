import 'package:flutter/material.dart';

class registerStudent extends StatefulWidget {
  @override
  _registerStudentState createState() => _registerStudentState();
}

class _registerStudentState extends State<registerStudent> {
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
                margin: EdgeInsets.only(top: 60), // Marge en bas
                child: Text(
                  'Register',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 13), // Marge en bas
                child: Text(
                  'Create your university account',
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
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Email',
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 18, vertical: 15),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  // Pour afficher le clavier de l'email
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Veuillez entrer votre email';
                    }
                    if (!RegExp(
                        r'\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b')
                        .hasMatch(value)) {
                      return 'Veuillez entrer une adresse email valide';
                    }
                    return null;
                  },
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
                          _isPasswordObscured = !_isPasswordObscured; // Inversez l'état de l'obfuscation du texte
                        });
                      },
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
                margin: EdgeInsets.only(top: 15),
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
                    Text(
                      'Login',
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
