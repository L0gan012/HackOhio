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
      backgroundColor: new Color(0xFFFCFDFF),
      body: Flex(
        direction: Axis.vertical,
        children: <Widget>[
          Expanded(
            child: Container(),
            flex: 1,
          ),
          Expanded(
            flex: 3,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'caos',
                style: TextStyle(fontSize: 70),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                  width: width * .666,
                  height: height * .05,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 3,
                      color: Colors.blue[100],
                    ),
                  ),
                  child: TextField(
                    cursorColor: Colors.blue[100],
                    style: TextStyle(
                      fontSize: 25,
                    ),
                    decoration: InputDecoration.collapsed(
                      hintText: 'username',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                  width: width * .666,
                  height: height * .05,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 3,
                      color: Colors.blue[100],
                    ),
                  ),
                  child: TextField(
                     cursorColor: Colors.blue[100],
                    obscureText: true,
                    style: TextStyle(
                      fontSize: 25,
                    ),
                    decoration: InputDecoration.collapsed(
                      hintText: 'password',
                    ),
                  ),
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
                        style: TextStyle(fontSize: 20),
                      ),
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
            flex: 4,
            child: Container(),
          ),
        ],
      ),
    );
  }
}
