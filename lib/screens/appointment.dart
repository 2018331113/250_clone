import 'dart:ui';

import 'package:flutter/material.dart';

import '../stdEnd/widgets/main_drawer.dart';
import 'acAppts.dart';

class Appointment extends StatefulWidget {
  @override
  _AppointmentState createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => AcceptedAppt(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(0.0, 1.0);
        var end = Offset.zero;
        var curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  void presentDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2023),
    ); //.then((pickedDate) {
    // if (pickedDate == null) {
    // return;
    // }
    // setState(() {
    // _selectedDate = pickedDate;
    // });
    // });
    // print('...');
  }

  void startJoining(BuildContext ctx) {
    TextEditingController c;
    showDialog(
      context: ctx,
      builder: (_) {
        return AlertDialog(
          title: Text("Join"),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text(
                  "Ask your teacher for the code then enter it here",
                  style: TextStyle(color: Colors.grey[900]),
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Code'),
                  controller: c,
                  onSubmitted: (_) {},
                ),
              ],
            ),
          ),
          actions: [
            FlatButton(
              onPressed: () {},
              child: Text('CANCEL'),
            ),
            FlatButton(
              onPressed: () {},
              child: Text('JOIN'),
            ),
          ],
        );
      },
    );
  }

  void createAppt(BuildContext ctx) {
    TextEditingController c;
    showDialog(
      context: ctx,
      builder: (_) {
        return AlertDialog(
          title: Text("Create Appointment"),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                //Text(
                // "Ask your teacher for the code then enter it here",
                // style: TextStyle(color: Colors.grey[900]),
                // ),
                TextField(
                  decoration: InputDecoration(labelText: 'Teacher'),
                  controller: c,
                  onSubmitted: (_) {},
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Time'),
                  controller: c,
                  onSubmitted: (_) {},
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Date'),
                  controller: c,
                  onSubmitted: null,
                ),
              ],
            ),
          ),
          actions: [
            FlatButton(
              onPressed: () {},
              child: Text('CANCEL'),
            ),
            FlatButton(
              onPressed: () {},
              child: Text('CREATE'),
            ),
          ],
        );
      },
    );
  }

  void startModal(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return Container(
          height: MediaQuery.of(context).size.height * .18,
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              // Card(
              //elevation: 2,
              ListTile(
                title: Text(
                  'Create Appointments',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  createAppt(context);
                },
              ),

              //),
              //Card(
              // elevation: 2,

              ListTile(
                title: Text(
                  'Add Teacher',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  startJoining(context);
                },
              ),

              //),
            ],
          ),
        );
      },
    );
  }

  // Widget buildListTile(String title, IconData icon) {
  //return ListTile(
  // leading: Icon(
  // icon,
  //size: 20,
  //),
  // title: Text(title),
  // onTap: () {},
  // );
  // }
  Widget getTitle(String title) {
    return Padding(
      padding: EdgeInsets.only(left: 14, top: 30),
      child: Text(
        title,
        //textAlign: TextAlign.center,
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget getSubTitle(String subTitle) {
    return Padding(
      padding: EdgeInsets.only(left: 23, top: 5),
      child: Text(
        subTitle,
        style: TextStyle(
          color: Colors.grey,
          fontSize: 15,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Appointment Scheduler',
          textAlign: TextAlign.left,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle_rounded),
            onPressed: () {},
            color: Colors.black,
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
            color: Colors.black,
          ),
        ],
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Container(
            padding: EdgeInsets.all(10),
            height: 150,
            width: double.infinity,
            child: InkWell(
              splashColor: Colors.grey[700],
              onTap: () {
                Navigator.of(context).push(_createRoute());
              },
              child: Card(
                elevation: 5,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.green, Colors.lightGreenAccent],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                        ),
                        //color: Colors.blue[100],
                      ),
                    ),
                    Expanded(
                      flex: 15,
                      child: Container(
                        //color: Colors.white,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Column(
                            children: [
                              getTitle('Accepted Appointments'),
                              getSubTitle('Check your scheduled appointments!'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            height: 150,
            width: double.infinity,
            child: InkWell(
              splashColor: Colors.grey[700],
              onTap: () {
                Navigator.of(context).push(_createRoute());
              },
              child: Card(
                elevation: 5,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.lightBlue, Colors.blue[200]],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 15,
                      child: Container(
                        //color: Colors.white,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 21, top: 30),
                                child: Text(
                                  'Requested Appointments',
                                  //textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 23, top: 5),
                                child: Text(
                                  'Check your requested appointments!',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              // getTitle('Requested Appointments'),
                              //getSubTitle('Check your requested appointments!'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            height: 150,
            width: double.infinity,
            child: InkWell(
              splashColor: Colors.grey[700],
              onTap: () {
                Navigator.of(context).push(_createRoute());
              },
              child: Card(
                elevation: 5,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.red, Colors.orangeAccent],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 15,
                      child: Container(
                        //color: Colors.white,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Column(
                            children: [
                              getTitle('Missed Appointments'),
                              getSubTitle('Check your missed appointments!'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          //  buildListTile('Accepted Appointments', Icons.arrow_right),
          // buildListTile('Requested Appointments', Icons.arrow_right),
          // buildListTile('Missed Appointments', Icons.arrow_right),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          startModal(context);
        },
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
