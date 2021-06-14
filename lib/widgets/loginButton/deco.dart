import 'package:appointment_scheduler/widgets/loginButton/buttonText.dart';
import 'package:flutter/material.dart';

class Deco extends StatelessWidget {
  String text;
  Deco(this.text);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        alignment: Alignment.center,
        height: 40.0,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        // padding: const EdgeInsets.all(0),
        child: ButtonText(text),
      ),
    );
  }
}
