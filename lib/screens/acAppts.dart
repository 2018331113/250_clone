import 'package:flutter/material.dart';

class Accepted extends StatelessWidget {
  Widget buildList() {
    return Container(
      width: double.infinity,
      height: 200,
      child: Row(
        children: [
          Card(
            color: Colors.lightGreenAccent,
            child: Text('Date'),
          ),
        ],
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
      body: Column(
        children: [
          buildList(),
        ],
      ),
    );
  }
}
