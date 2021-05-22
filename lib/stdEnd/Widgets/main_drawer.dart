import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon) {
    return ListTile(
      leading: Icon(
        icon,
        size: 20,
      ),
      title: Text(title),
      onTap: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      //backgroundcolor: Colors.white,
      child: Column(
        children: [
          Container(
            height: 70,
            width: double.infinity,
            padding: EdgeInsets.only(top: 35, left: 20),
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(vertical: 20),
            child: Text(
              'Appointment Scheduler',
              style: TextStyle(color: Colors.black, fontSize: 23),
            ),
          ),
          const Divider(
            height: 1,
            thickness: 2,
            indent: 5,
            endIndent: 10,
          ),
          SizedBox(
            height: 10,
          ),
          buildListTile(
            'Calendar',
            Icons.calendar_view_day,
          ),
          buildListTile(
            'Notifications',
            Icons.notifications,
          ),
          buildListTile('Upcoming Appointments', Icons.toc),
        ],
      ),
    );
  }
}
