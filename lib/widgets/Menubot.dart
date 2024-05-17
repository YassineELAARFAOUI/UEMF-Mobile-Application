import 'package:flutter/material.dart';
import 'package:projecteuromedflutter/pages/profile.dart';
import 'package:projecteuromedflutter/pages/setting.dart';

import '../pages/Search.dart';

class Menubot extends StatefulWidget {
  final Function(int) onTabSelected;

  const Menubot({Key? key, required this.onTabSelected}) : super(key: key);

  @override
  _MenubotState createState() => _MenubotState();
}

class _MenubotState extends State<Menubot> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Color(0XFF004E93),
      unselectedItemColor: Color(0XFF0C79DA),
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: (index) {
        if (index != _selectedIndex) {
          setState(() {
            _selectedIndex = index;
          });
          widget.onTabSelected(index);
          if (index == 1) {
            _selectedIndex = 0;
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => setting(), // Using the imported ProfilePage class
            ));
          }else if(index == 2){
            _selectedIndex = 0;
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Search(), // Using the imported ProfilePage class
            ));
          }else if(index == 3){
            _selectedIndex = 0;
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => profile(), // Using the imported ProfilePage class
            ));
          }
        }
      },
    );
  }
}
