import 'package:appointment_scheduler/screens/appointment.dart';

import './signUp.dart';
import 'package:flutter/material.dart';

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
              Container(
                // margin: ,
                padding: EdgeInsets.only(left: 28),
                width: size.width / 1.2,
                child: Text(
                  "Log In",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Container(
                padding: EdgeInsets.only(left: 28),
                child: RichText(
                  //padding: EdgeInsets.only(left: 28),
                  text: TextSpan(children: [
                    TextSpan(
                      text: "Hi,",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: "Good Day!",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]),
                ),
              ),
              SizedBox(
                height: size.height * 0.004,
              ),
              Container(
                width: size.width / 1.2,
                padding: EdgeInsets.only(left: 28),
                child: Text(
                  "Please sign in to continue",
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 15,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 20),
                  margin: EdgeInsets.only(right: 20, top: 20),
                  child: Column(
                    children: [
                      _ttextInput(hint: "Email"),
                      _textInput(hint: "Password"),
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
                          onPressed: () {},
                          padding: const EdgeInsets.all(0),
                          child: Card(
                            elevation: 5,
                            child: Container(
                              alignment: Alignment.center,
                              height: 40.0,
                              width: 90,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              ),
                              // padding: const EdgeInsets.all(0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Appointment()),
                                  );
                                },
                                child: Text(
                                  "LOGIN",
                                  // style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 95),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUp()),
                    );
                  },
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
                            )),
                      ],
                    ),
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

Widget _textInput({controller, hint}) {
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
        controller: controller,
        //decoration: InputDecoration(labelText: 'Amount'),

        decoration: InputDecoration(
          //border: InputBorder.none,
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(left: 10),
          labelText: hint,
          labelStyle: TextStyle(color: Colors.grey),
          suffixIcon: IconButton(
            icon: Icon(Icons.remove_red_eye),
            onPressed: () {},
          ),
          //hintStyle: TextStyle(color: Colors.grey),
        ),
      ),
    ),
  );
}

Widget _ttextInput({controller, hint}) {
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
        controller: controller,
        //decoration: InputDecoration(labelText: 'Amount'),

        decoration: InputDecoration(
          //border: InputBorder.none,
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(left: 10),
          labelText: hint,
          labelStyle: TextStyle(color: Colors.grey),

          //hintStyle: TextStyle(color: Colors.grey),
        ),
      ),
    ),
  );
}
