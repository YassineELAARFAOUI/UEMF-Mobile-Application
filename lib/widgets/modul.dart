import 'package:flutter/material.dart';

class modul extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: null,
      margin: EdgeInsets.only(top: 20),
      child: Center(

        child: ClipRRect(
          borderRadius: BorderRadius.circular(5.0),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: null,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Column(
              children: [
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Color(0XFF1D90F4), Color(0XFF004E93)],
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 110,
                        height: 50,
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          'Module :',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      Container(
                        width: 200,
                        height: 50,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Anglais 2023-2024',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 180,
                  color: Color(0XFFF0F0F0),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 40,
                        margin: EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              width: MediaQuery.of(context).size.width * 0.55,
                              height: 40,
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Assessment :',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.35,
                              height: 40,
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '18.50',
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 40,
                        child: Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.55,
                              height: 40,
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                'Continuous monitoring :',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.35,
                              height: 40,
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '18.50',
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 40,
                        child: Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.55,
                              height: 40,
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                'Partial Note:',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.35,
                              height: 40,
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '18.50',
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 40,
                        child: Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.55,
                              height: 40,
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                'Admitted to catch-up:',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.35,
                              height: 40,
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '18.50',
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
