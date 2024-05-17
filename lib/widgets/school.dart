import 'package:flutter/material.dart';

class School extends StatelessWidget {
  final String img;
  final String descrip;
  final String dr;
  final String date;
  final Color color1 ;
  final Color color2;

  School({required this.img, required this.descrip, required this.dr, required this.date, required this.color1, required this.color2});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 160,
      child: FractionallySizedBox(
        widthFactor: 0.93, // This sets the width to 90% of the principal container
        heightFactor: 0.93,
        child: Container(
          decoration: BoxDecoration(
            color: Color(0XFFF2F2F2),
            borderRadius: BorderRadius.circular(5),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Row(
              children: [
                Container(
                  width: 160,
                  height: 160,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [color1, color2], // Adjust colors as per your preference
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      stops: [0.0, 1.0], // Adjust stops for more complex gradients
                      tileMode: TileMode.clamp,
                    ),
                  ),
                  child: Center(
                    child: Container(
                      width: 130,
                      height: 70,
                      child: Image.asset(
                        img, // Use the img attribute here
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 160,
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 100,
                          padding: EdgeInsets.only(left: 5, right: 5, top: 10),
                          child: Text(
                            descrip,
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.only(left: 5, right: 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start, // Align children to the start
                            crossAxisAlignment: CrossAxisAlignment.start, // Align children to the start
                            children: [
                              Text(
                                dr,
                                textAlign: TextAlign.start,
                                style: TextStyle(fontSize: 12),
                              ),
                              Text(
                                date,
                                textAlign: TextAlign.start,
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
