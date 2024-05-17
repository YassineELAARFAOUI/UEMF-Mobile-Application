import 'package:flutter/material.dart';

import '../widgets/modul.dart';

class Marks extends StatefulWidget {
  @override
  _MarksState createState() => _MarksState();
}

class _MarksState extends State<Marks> {
  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          padding: EdgeInsets.only(top: 35, right: 10, left: 10),
          color: Colors.transparent, // make the container background transparent
          child: Row(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: null,
              margin: EdgeInsets.only(top: 10),
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: null,
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Colors.grey), // Border color when focused
                      ),
                    ),
                    hint: const Text('Select your semester'),
                    value: dropdownValue,
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                    items: <String>[
                      'Semester 1',
                      'Semester 2',
                      'Semester 3',
                      'Semester 4',
                      'Semester 5',
                      'Semester 6',
                      'Semester 7',
                      'Semester 8',
                      'Semester 9'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: null,
              margin: EdgeInsets.only(top: 30),
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 170,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8), // Add border radius if needed
                    child: OverflowBox(
                      maxWidth: double.infinity,
                      maxHeight: double.infinity,
                      child: Container(
                        color: Color(0XFFF0F0F0),
                        padding: EdgeInsets.only(left: 30,top: 20,bottom: 20),
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: 40,
                              child: Row(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width * 0.55,
                                    height: 40,
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Average semester 1 :',
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
                                    child: Text(
                                      'Average semester 2 :',
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
                                    child: Text(
                                      'Average :',
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
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                modul(),
                modul(),
                modul(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
