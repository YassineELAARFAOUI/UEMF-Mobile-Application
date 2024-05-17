import 'package:flutter/material.dart';
import 'package:projecteuromedflutter/widgets/postnews.dart';
import 'package:projecteuromedflutter/widgets/Menubot.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'fields.dart';
import 'login.dart';
import 'marks.dart';

class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          padding: EdgeInsets.only(top: 35, right: 10, left: 10),
          color: Colors.transparent,
          child: Row(
            children: [
              // Add your widgets here
              Spacer(),
              Text(
                'Profile',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Icon(Icons.edit),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 140,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Color(0XFF1D90F4), Color(0XFF004E93)],
                      ),
                    ),
                  ),
                  Container(
                    width: 130,
                    height: 130,
                    margin: EdgeInsets.only(left: 30, top: 70),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(150),
                    ),
                    child: Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(150),
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                          ),
                          child: Image.asset(
                            'assets/icons/yassine.png', // Specify your image path
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              child: Text(
                'Yassine ELAARFAOUI',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Container(
              width: double.infinity,
              height: 30,
              margin: EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              child: Text(
                'Semestre: 07',
                style: TextStyle(fontSize: 17, color: Colors.grey),
              ),
            ),
            Container(
              width: double.infinity,
              height: 30,
              margin: EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              child: Text(
                'EIDIA',
                style: TextStyle(fontSize: 17, color: Colors.grey),
              ),
            ),
            buildInfoRow(context, 'assets/icons/phone.png', '+212 639694872'),
            buildInfoRow(context, 'assets/icons/email.png', 'yassine@gmail.com'),
            buildInfoRow(context, 'assets/icons/location.png', 'Sidi benoor'),
            buildInfoRow(context, 'assets/icons/cin.png', 'JF6825473'),
            buildInfoRow(context, 'assets/icons/date.png', '22-04-2002'),
            Container(
              width: double.infinity,
              height: 80,
              margin: EdgeInsets.only(top: 50),
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: GestureDetector(
                    onTap: () => _disconnect(context),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 60,
                      color: Color(0XFFA4D4FF),
                      alignment: Alignment.center,
                      child: Text(
                        'Disconnect',
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
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(bottom: 50),
              height: 60,
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: GestureDetector(
                    onTap: () {
                      _removeAccount(context);
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 60,
                      color: Color(0XFFFFA4A9),
                      alignment: Alignment.center,
                      child: Text(
                        'Delete',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _disconnect(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('connected', false);
    _navigateToNextLogin(context);
  }

  void _navigateToNextLogin(BuildContext context) {
    Future.delayed(Duration(seconds: 0), () {
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => login()), // Replace Login with the actual next page
            (Route<dynamic> route) => false,
      );
    });
  }
  void _removeAccount(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('username', "");
    await prefs.setString('email', "");
    await prefs.setString('password', "");
    await prefs.setString('connected', "0");
    Future.delayed(Duration(seconds: 0), () {
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => login()), // Replace Login with the actual next page
            (Route<dynamic> route) => false,
      );
    });
  }


  Widget buildInfoRow(BuildContext context, String iconPath, String infoText) {
    return Container(
      width: double.infinity,
      height: 40,
      margin: EdgeInsets.only(top: 5, left: 20),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            child: Center(
              child: Container(
                width: 25,
                height: 25,
                child: Image.asset(
                  iconPath, // Specify your image path
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            width: 250,
            height: 40,
            alignment: Alignment.centerLeft,
            child: Text(infoText),
          ),
        ],
      ),
    );
  }
}
