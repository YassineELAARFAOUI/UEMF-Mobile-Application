import 'package:flutter/material.dart';
import 'package:projecteuromedflutter/pages/login.dart';
import 'package:projecteuromedflutter/pages/registerStudent.dart';

class registerTeacher extends StatefulWidget {
  @override
  _registerTeacherState createState() => _registerTeacherState();
}

class _registerTeacherState extends State<registerTeacher> {
  bool _isPasswordObscured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF8F8F8),  // Setting the background color to red
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 160), // Marge en bas
                child: Text(
                  'Register | Professor',
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
                margin: EdgeInsets.only(top: 60),
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
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Type',
                    contentPadding: EdgeInsets.symmetric(horizontal: 18, vertical: 15),
                  ),
                  items: <String>['.','vacataire','Assistant' ,'Permanent'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    // Ajoutez votre logique de gestion du changement de sélection ici
                  },
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
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Speciality',
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
                margin: EdgeInsets.only(top: 30),
                width: 360,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white, // Set border color and width
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1), // Set shadow color
                      spreadRadius: 1, // Set spread radius
                      blurRadius: 3, // Set blur radius
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
                margin: EdgeInsets.only(top: 13),
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
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterStudent()), // Replace RegisterPage() with your registration page widget
                    );
                  },
                  child: Text(
                    'Register | Student',
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
                margin: EdgeInsets.only(top: 60,bottom: 60),
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
                        ),
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
