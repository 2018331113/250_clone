import 'package:flutter/material.dart';

class PassInput extends StatelessWidget {
  //Function controller;
  String hint;
  PassInput(
    //this.controller,
    this.hint,
  );
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        padding: EdgeInsets.only(left: 10),
        child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(left: 10),
            labelText: hint,
            labelStyle: TextStyle(color: Colors.grey),
            suffixIcon: IconButton(
              icon: Icon(Icons.remove_red_eye),
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
    ;
  }
}
