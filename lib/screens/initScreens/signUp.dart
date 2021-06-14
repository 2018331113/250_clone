import 'package:appointment_scheduler/widgets/loginButton/deco.dart';
import 'package:appointment_scheduler/widgets/loginButton/passInput.dart';
import 'package:appointment_scheduler/widgets/loginButton/textInput.dart';
import 'package:appointment_scheduler/widgets/loginScreenTitle/titleOne.dart';
import 'package:appointment_scheduler/widgets/loginScreenTitle/titleThree.dart';
import 'package:appointment_scheduler/widgets/loginScreenTitle/titleTwo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import '../initScreens/signIn.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[200],
          width: size.width,
          height: size.height,
          padding: EdgeInsets.only(top: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: size.width * 1,
                child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Title1('SignUp'),
              SizedBox(
                height: size.height * 0.03,
              ),
              Title2('Hi,', 'Welcome!'),
              SizedBox(
                height: size.height * 0.004,
              ),
              Title3('Please sign up to continue'),
              SizedBox(height: size.height * 0.01),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 20),
                  margin: EdgeInsets.only(right: 20, top: 20),
                  child: Column(
                    children: [
                      TextInput('Full Name'),
                      TextInput('Email'),
                      PassInput('Password'),
                      PassInput('Confirm Password'),
                      SizedBox(
                        height: size.height * 0.003,
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        margin:
                            EdgeInsets.symmetric(horizontal: 1, vertical: 10),
                        child: MaterialButton(
                          textColor: Colors.white,
                          onPressed: () {},
                          padding: const EdgeInsets.all(0),
                          child: Deco('SIGN UP'),
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
                        text: "Already have an account? ",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text: "Sign In",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignIn()),
                              );
                            }),
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
