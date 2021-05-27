import 'package:flutter/material.dart';
import '../stdEnd/widgets/profile_body.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 55,
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 40),
              height: 150,
              width: 150,
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
            height: 30,
          ),
          RaisedButton(
            color: Colors.white,
            onPressed: () {},
            child: Text(
              "Edit Profile",
              style: TextStyle(color: Colors.blue, fontSize: 16),
            ),
          ),
          ListView(
            children: [
              Container(
                height: 20,
                margin: EdgeInsets.only(top: 15),
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    Text(
                      'Name',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text('A'),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
