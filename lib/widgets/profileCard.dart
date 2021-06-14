import 'package:flutter/material.dart';

class BuildCard extends StatelessWidget {
  String title;
  IconData icon;
  String subtitle;
  BuildCard(this.title, this.icon, this.subtitle);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: ListTile(
        leading: Icon(
          icon,
          size: 19,
        ),
        title: Text(
          title,
          style: TextStyle(fontSize: 13, color: Colors.grey[600]),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
            fontSize: 17,
            //fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        onTap: () {},
        //trailing: Icon(Icons.edit),
      ),
    );
  }
}
