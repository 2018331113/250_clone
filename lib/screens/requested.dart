import 'package:flutter/material.dart';
import 'package:appointment_scheduler/widgets/appbar.dart';
import 'package:appointment_scheduler/widgets/appointmentList/listDate.dart';
import 'package:appointment_scheduler/widgets/appointmentList/listSubject.dart';

class Requested extends StatelessWidget {
  Widget buildList() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 2,
        child: Container(
          height: 120,
          child: Row(
            children: [
              Container(
                width: 120,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.lightBlue,
                    Colors.blue[200],
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                ),
                child: ListText(),
              ),
              ListSubject(),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: APPBAR('Requested Appointment'),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Container(
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
