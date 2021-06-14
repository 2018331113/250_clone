import 'package:flutter/material.dart';

class ListSubject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Padding(
        padding: EdgeInsets.only(top: 30, right: 18, bottom: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Text(
                'Enamul Haque',
                maxLines: 4,
                overflow: TextOverflow.clip,
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            Expanded(
              child: Text(
                'Discussion on a project ',
                maxLines: 2,
                overflow: TextOverflow.clip,
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
