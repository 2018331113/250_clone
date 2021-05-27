import 'package:flutter/material.dart';

class ProfileBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 130,
          width: 130,
          child: Stack(
            fit: StackFit.expand,
            children: [
              CircleAvatar(
                  // backgroundImage: Image.network("https://images.unsplash.com/photo-1547721064-da6cfb341d50"),
                  ),
            ],
          ),
        ),
      ],
    );
  }
}
