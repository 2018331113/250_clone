import 'package:flutter/material.dart';

class Accepted extends StatelessWidget {
  Widget buildList() {
    return Card(
      elevation: 2,
      child: Container(
        height: 120,
        // width: 900,
        //width: MediaQuery.of(context).size.width,
        //decoration: BoxDecoration(
        //border: Border.all(width: 1),
        //),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(18),
              child: Container(
                //padding: EdgeInsets.all(18),
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    // Colors.limeAccent,
                    Colors.lightGreen,
                    Colors.lightGreen[400],
                    Colors.lightGreenAccent,
                    // Colors.lightGreen[400],
                    //Colors.limeAccent,
                    // Colors.lightGreenAccent[700],
                    // Colors.lightGreenAccent[400],
                    Colors.limeAccent,
                    //Colors.lightGreenAccent
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text(
                        'June 10',
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      Text(
                        '3:10 pm',
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: 200,
              //decoration: BoxDecoration(
              // border: Border.all(
              // width: 1,
              // color: Colors.grey[400],
              // ),
              // ),
              child: Padding(
                padding: EdgeInsets.only(top: 30, right: 18, bottom: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Text(
                        'Enamul Haque',
                        maxLines: 4,
                        overflow: TextOverflow.clip,
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Discussion on a project ',
                        maxLines: 2,
                        overflow: TextOverflow.clip,
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        //textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Scheduled Appointment',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Container(
          //height: size.height,
          width: size.width,
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              buildList(),
              buildList(),
              buildList(),
              buildList(),
              buildList(),
              buildList(),
              buildList(),
            ],
          ),
        ),
      ),
    );
  }
}
