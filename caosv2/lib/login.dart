import 'package:caos/createAccountPage.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Caos',
      home: Scaffold(
        body: LoginBody(),
      ),
    );
  }
}

class LoginBody extends StatefulWidget {
  @override
  LoginBodyFormState createState() {
    return LoginBodyFormState();
  }
}

class LoginBodyFormState extends State<LoginBody> {
  @override
  Widget build(BuildContext buildContext) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    print(height);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Container(
          height: height,
          child: Flex(
            direction: Axis.vertical,
            children: <Widget>[
              Expanded(
                child: Container(),
                flex: 1,
              ),
              Expanded(
                flex: 2,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'caos',
                    style: TextStyle(fontSize: 70, color: Colors.black54),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                      width: width * .666,
                      height: height * .05,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          width: 3,
                          color: Colors.transparent,
                        ),
                      ),
                      child: TextField(
                        textAlignVertical: TextAlignVertical.center,
                        cursorColor: Colors.blue[100],
                        style: TextStyle(
                          fontFamily: 'Puritan',
                          fontSize: 25,
                        ),
                        decoration: InputDecoration.collapsed(
                          hintText: 'username',
                          hintStyle: TextStyle(fontSize: 20)
                        ),
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                      width: width * .666,
                      height: height * .05,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          width: 3,
                          color: Colors.transparent,
                        ),
                      ),
                      child: TextField(
                        textAlignVertical: TextAlignVertical.center,
                        cursorColor: Colors.blue[100],
                        obscureText: true,
                        style: TextStyle(
                          fontFamily: 'Puritan',
                          fontSize: 25,
                        ),
                        decoration: InputDecoration.collapsed(
                          hintText: 'password',
                          hintStyle: TextStyle(fontSize: 20)
                        ),
                      ),
                    ),
                    FlatButton(
                      child: Container(
                        alignment: Alignment.center,
                        width: width * .6666,
                        height: height * .05,
                        decoration: BoxDecoration(
                          color: Colors.blue[300],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          'login',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                      onPressed: () {},
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          height: 5,
                          width: width / 4,
                          color: Colors.blue[100],
                        ),
                        GestureDetector(
                          child: Text(
                            'create an account',
                            style:
                                TextStyle(fontSize: 20, color: Colors.black54),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CreateAccountPage()),
                            );
                          },
                        ),
                        Container(
                          height: 5,
                          width: width / 4,
                          color: Colors.blue[100],
                        )
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
