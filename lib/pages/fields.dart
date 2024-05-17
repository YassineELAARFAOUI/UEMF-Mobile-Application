import 'package:flutter/material.dart';

import '../widgets/school.dart';
class fields extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> postData = [
      {
        "img": "assets/icons/eidia.png",
        "descrip": "School of Digital Engineering and Artificial Intelligence (EIDIA)",
        "dr": "Pr. Ahmed EL HILALI ALAOUI",
        "date": "Date of creation: 2019",
        "color1": Color(0XFFFFB681),
        "color2": Color(0XFFF2F2F2),
      },
      {
        "img": "assets/icons/emadu.png",
        "descrip": "Euromed School of Architecture, Design, and Urbanism (EMADU)",
        "dr": "Pr.Wafae Belarbi",
        "date": "Date of creation: 2016",
        "color1": Color(0XFFFFF4AD),
        "color2": Color(0XFFF2F2F2),
      },
      {
        "img": "assets/icons/eps.png",
        "descrip": "Euromed Polytechnic School (EPS)",
        "dr": "Pr. Othmane Benmoussa",
        "date": "Date of creation: 2017",
        "color1": Color(0XFF9DCDD3),
        "color2": Color(0XFFF2F2F2),
      },
      {
        "img": "assets/icons/iemjp.png",
        "descrip": "Euromed Institute of Legal and Political Sciences(IEM | JP)",
        "dr": "Pr. Abderrahman Haddad",
        "date": "Date of creation: 2016",
        "color1": Color(0XFFF3B0D6),
        "color2": Color(0XFFF2F2F2),
      },
      {
        "img": "assets/icons/ebs.png",
        "descrip": "Euromed Business School(EBS)",
        "dr": "Pr. Abdessamad RHALIMI",
        "date": "Date of creation: 2017",
        "color1": Color(0XFF80A5C0),
        "color2": Color(0XFFF2F2F2),
      },
      {
        "img": "assets/icons/femshs.png",
        "descrip": "Faculty of Humanities and Social Sciences(FEM | SHS)",
        "dr": "Pr. Abderrahman Tenkoul",
        "date": "Date of creation: 2016",
        "color1": Color(0XFF45C3FA),
        "color2": Color(0XFFF2F2F2),
      }
    ];
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          padding: EdgeInsets.only(top: 35,right: 10,left: 10),
          color: Colors.transparent, // make the container background transparent
          child: Row(
            
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 60,
              margin: EdgeInsets.only(top: 20,bottom: 10),
              child: Container(
                child: Center(
                  child: FractionallySizedBox(
                    widthFactor: 0.93, // This sets the width to 90% of the principal container
                    heightFactor: 0.93,
                    child: Container(
                      padding: EdgeInsets.only(left: 15),
                      decoration: BoxDecoration(
                        color: Color(0XFF5393CC),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'SCHOOLS',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Column(
              children: postData.map<Widget>((school) {
                return School(
                  img: school['img'],
                  descrip: school['descrip'],
                  dr: school['dr'],
                  date: school['date'],
                  color1: school['color1'],
                  color2: school['color2'],
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
