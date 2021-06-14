import 'package:flutter/material.dart';

class CreateAppointment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController c;
    return AlertDialog(
      title: Text("Create Appointment"),
      content: SingleChildScrollView(
        child: ListBody(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Teacher',
              ),
              controller: c,
              onSubmitted: (_) {},
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Title',
              ),
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
          child: Text('CREATE'),
        ),
      ],
    );
  }
}
