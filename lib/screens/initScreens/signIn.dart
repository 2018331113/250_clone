import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import '../appointment.dart';
import 'signUp.dart';
import 'package:appointment_scheduler/widgets/loginButton/deco.dart';
import 'package:appointment_scheduler/widgets/loginButton/passInput.dart';
import 'package:appointment_scheduler/widgets/loginButton/textInput.dart';
import 'package:appointment_scheduler/widgets/loginScreenTitle/titleOne.dart';
import 'package:appointment_scheduler/widgets/loginScreenTitle/titleThree.dart';
import 'package:appointment_scheduler/widgets/loginScreenTitle/titleTwo.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[200],
          width: size.width,
          height: size.height,
          padding: EdgeInsets.only(top: 150),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Title1('Log In'),
              SizedBox(
                height: size.height * 0.05,
              ),
              Title2('Hi,', 'Good Day!'),
              SizedBox(
                height: size.height * 0.004,
              ),
              Title3('Please sign in to continue'),
              SizedBox(
                height: size.height * 0.03,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 20),
                  margin: EdgeInsets.only(right: 20, top: 20),
                  child: Column(
                    children: [
                      TextInput('Email'),
                      PassInput('Password'),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                              backgroundColor: Colors.grey[200]),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        margin:
                            EdgeInsets.symmetric(horizontal: 1, vertical: 30),
                        child: MaterialButton(
                          textColor: Colors.white,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Appointment()),
                            );
                          },
                          padding: const EdgeInsets.all(0),
                          child: Deco('LOGIN'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 95),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Don't have an account? ",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: "Sign Up",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignUp()),
                            );
                          },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.06,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
