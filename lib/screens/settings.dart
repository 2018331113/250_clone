import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  Widget buildList(String title, IconData icon) {
    return ListTile(
      leading: Icon(
        icon,
        size: 19,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.black),
      ),
      onTap: () {},
      trailing: Icon(
        Icons.arrow_forward_ios_rounded,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
          textAlign: TextAlign.left,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Container(
        child: Column(
          children: [
            buildList('Edit Profile', Icons.person),
            buildList('Change Password', Icons.lock),
            buildList('Notifications', Icons.notifications),
            ListTile(
              leading: Icon(
                Icons.palette,
                size: 19,
              ),
              title: Text(
                'Dark Mode',
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {},
              trailing: Switch(value: false, onChanged: null),
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
                size: 19,
              ),
              title: Text(
                'LogOut',
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {},
              //trailing: Switch(value: false, onChanged: null),
            ),
          ],
        ),
      ),
    );
  }
}
