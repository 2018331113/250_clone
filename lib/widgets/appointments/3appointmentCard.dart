import 'package:flutter/material.dart';
import 'package:appointment_scheduler/widgets/appointments/subtitle.dart';
import 'package:appointment_scheduler/widgets/appointments/title.dart';

class ListCard extends StatelessWidget {
  String title;
  String subTitle;
  ListCard(this.title, this.subTitle);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 15,
      child: Container(
        child: Align(
          alignment: Alignment.topLeft,
          child: Column(
            children: [
              getTitle(title),
              getSubtitle(subTitle),
            ],
          ),
        ),
      ),
    );
  }
}
