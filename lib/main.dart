import './screens/appointment.dart';

import './screens/userProfile.dart';
import 'package:flutter/material.dart';

import 'screens/initScreens/signIn.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignIn(),
    );
  }
}
