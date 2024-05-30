import 'package:flutter/material.dart';
import 'package:projecteuromedflutter/pages/Modifyprofile.dart';
import 'package:projecteuromedflutter/pages/changepassword.dart';

class setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Setting',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20), // Espace pour séparer de la barre d'app
              Container(
                margin: EdgeInsets.only(top: 30,left:20),
                alignment: Alignment.centerLeft,// Marge en bas
                child: Text(
                  'Your account',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Modifyprofile()), // Replace NextPage with the name of your destination page
                  );
                },
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30, left: 20),
                      child: Row(
                        children: [
                          Icon(
                            Icons.account_circle, // Icône utilisateur
                            color: Colors.black,
                            size: 30,
                          ),
                          SizedBox(width: 10), // Espacement entre l'icône et le texte
                        ],
                      ),
                    ),
                    SizedBox(width: 20), // Espacement entre les deux conteneurs
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Change Informations',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5), // Espacement entre les deux textes
                          Text(
                            'name,email,level',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                          // Votre deuxième conteneur ici
                        ],
                      ),
                    )


                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => changepassword()), // Replace NextPage with the name of your destination page
                  );
                },
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30, left: 20),
                      child: Row(
                        children: [
                          Icon(
                            Icons.lock, // Icône utilisateur
                            color: Colors.black,
                            size: 30,
                          ),
                          SizedBox(width: 10), // Espacement entre l'icône et le texte
                        ],
                      ),
                    ),
                    SizedBox(width: 20), // Espacement entre les deux conteneurs
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Change Password',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5), // Espacement entre les deux textes
                          Text(
                            'Modify password,validation',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                          // Votre deuxième conteneur ici
                        ],
                      ),
                    ),


                  ],
                ),
              ),
              Divider(
                color: Color(0XFFF3F3F3), // Optionally, you can specify the color of the divider
                thickness: 4, // Optionally, you can specify the thickness of the divider
                height: 30, // Optionally, you can specify the height of the divider
              ),
              Container(
                margin: EdgeInsets.only(top: 30,left:20),
                alignment: Alignment.centerLeft,// Marge en bas
                child: Text(
                  'System',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30, left: 20),
                    child: Row(
                      children: [
                        Icon(
                          Icons.notifications, // Icône utilisateur
                          color: Colors.black,
                          size: 30,
                        ),
                        SizedBox(width: 10), // Espacement entre l'icône et le texte
                      ],
                    ),
                  ),

                  SizedBox(width: 20), // Espacement entre les deux conteneurs
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Notifications',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5), // Espacement entre les deux textes
                        Text(
                          'Alert,Information...',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                        // Votre deuxième conteneur ici
                      ],
                    ),
                  )


                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30, left: 20),
                    child: Row(
                      children: [
                        Icon(
                          Icons.delete, // Icône utilisateur
                          color: Colors.black,
                          size: 30,
                        ),
                        SizedBox(width: 10), // Espacement entre l'icône et le texte
                      ],
                    ),
                  ),
                  SizedBox(width: 20), // Espacement entre les deux conteneurs
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Delete Account',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5), // Espacement entre les deux textes
                        Text(
                          'Delete',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                        // Votre deuxième conteneur ici
                      ],
                    ),
                  ),


                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30, left: 20),
                    child: Row(
                      children: [
                        Icon(
                          Icons.warning, // Icône utilisateur
                          color: Colors.black,
                          size: 30,
                        ),
                        SizedBox(width: 10), // Espacement entre l'icône et le texte
                      ],
                    ),
                  ),

                  SizedBox(width: 20), // Espacement entre les deux conteneurs
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Complaint',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5), // Espacement entre les deux textes
                        Text(
                          'send',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                        // Votre deuxième conteneur ici
                      ],
                    ),
                  )


                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}