import '../initScreens/signIn.dart';
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
                // margin: EdgeInsets.only(left: 0),

                width: size.width * 1,
                child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Container(
                // margin: ,
                padding: EdgeInsets.only(left: 28),
                width: size.width / 1.2,
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
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
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: "Welcome!",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 34,
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
                  "Please sign up to continue",
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 15,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 20),
                  margin: EdgeInsets.only(right: 20, top: 20),
                  child: Column(
                    children: [
                      _ttextInput(hint: "Full Name"),
                      _ttextInput(hint: "Email"),
                      _textInput(hint: "Password"),
                      _textInput(hint: "Confirm Password"),
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
                          child: Card(
                            elevation: 5,
                            child: Container(
                              alignment: Alignment.center,
                              height: 40.0,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              ),
                              // padding: const EdgeInsets.all(0),
                              child: Text(
                                "SIGN UP",
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
                          )),
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
          labelText: hint,
          labelStyle: TextStyle(color: Colors.grey),
          //hintStyle: TextStyle(color: Colors.grey),
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(left: 10),
        ),
      ),
    ),
  );
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
