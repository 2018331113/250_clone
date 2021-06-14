import 'package:flutter/material.dart';

class APPBAR extends StatelessWidget {
  String title;
  APPBAR(this.title);
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
    );
  }
}
