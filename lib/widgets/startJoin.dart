import 'package:flutter/material.dart';

class StartJoin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return startJoining(context);
  }
}

Widget startJoining(BuildContext ctx) {
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
