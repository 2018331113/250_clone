import 'dart:ui';

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
          SizedBox(
            height: 55,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.only(left: 25),
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                border: Border.all(width: 4, color: Colors.white),
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 2,
                    blurRadius: 10,
                    color: Colors.black.withOpacity(0.1),
                  ),
                ],
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1547721064-da6cfb341d50"),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          //alignment: AlignmentDirectional.topStart,
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.only(left: 25),
              child: Text(
                "USER NAME",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                // textAlign: TextAlign.left,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.only(left: 25),
              child: Text(
                'user@gmail.com',
                style: TextStyle(color: Colors.grey[700]),
              ),
            ),
          ),

          SizedBox(
            height: 40,
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

          // buildListTile(
          //'Upcoming Appointments',
          // Icons.toc,
          //),
          buildListTile(
            'Notifications',
            Icons.notifications,
          ),
          buildListTile(
            'Inbox',
            Icons.email,
          ),
          buildListTile(
            'Calendar',
            Icons.calendar_today,
          ),
          buildListTile(
            'Settings',
            Icons.settings,
          ),
        ],
      ),
    );
  }
}
