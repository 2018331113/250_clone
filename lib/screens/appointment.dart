import 'package:flutter/material.dart';
import '../screens/settings.dart';
import '../screens/missed.dart';
import '../screens/requested.dart';
import '../screens/accepted.dart';
import '../widgets/appbar.dart';
import '../widgets/appointments/Colors/accepted.dart';
import '../widgets/appointments/Colors/missed.dart';
import '../widgets/appointments/Colors/requested.dart';
import '../widgets/appointments/3appointmentCard.dart';
import '../widgets/modalSheet.dart';
import '../widgets/main_drawer.dart';

class Appointment extends StatefulWidget {
  @override
  _AppointmentState createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: APPBAR('Appointment Scheduler'),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Settings()),
              );
            },
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Accepted()),
                );
              },
              child: Card(
                elevation: 5,
                child: Row(
                  children: [
                    ScheduledColor(),
                    ListCard('Scheduled Appointments',
                        'Check your scheduled appointments!'),
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Requested()),
                );
              },
              child: Card(
                elevation: 5,
                child: Row(
                  children: [
                    RequestedColor(),
                    ListCard('Requested Appointments',
                        'Check your requested appointments!'),
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Missed()),
                );
              },
              child: Card(
                elevation: 5,
                child: Row(
                  children: [
                    MissedColor(),
                    ListCard('Missed Appointments',
                        'Check your missed appointments!'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (_) {
              return ShowModal();
            },
          );
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
