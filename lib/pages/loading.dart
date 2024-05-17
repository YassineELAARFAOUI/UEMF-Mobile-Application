import 'package:flutter/material.dart';
import 'package:projecteuromedflutter/pages/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'feed.dart';

class loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _loginAuto(context); // Call the navigation method here
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Color(0XFFF8FFEF),
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 700,
                child: Center(
                  child: Container(
                    width: 150,
                    height: 150,
                    child: Image.asset(
                      'assets/icons/uemf_loding.png', // Specify your image path
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  void _loginAuto(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? connected = prefs.getString('connected');

    // Simulate successful login (Replace with actual authentication logic)
    if (connected== "1") {
      _navigateToNextFeed(context);
    } else {
      _navigateToNextLogin(context);
    }
  }
  void _navigateToNextLogin(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => login()), // Replace LoginPage() with the actual next page
      );
    });
  }
  void _navigateToNextFeed(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => feed()), // Replace LoginPage() with the actual next page
      );
    });
  }
}
