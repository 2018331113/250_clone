import 'package:flutter/material.dart';

class getSubtitle extends StatelessWidget {
  String subTitle;
  getSubtitle(this.subTitle);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 23, top: 5),
      child: Text(
        subTitle,
        style: TextStyle(
          color: Colors.grey,
          fontSize: 15,
        ),
      ),
    );
  }
}
