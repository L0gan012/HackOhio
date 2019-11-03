import 'package:caos/homeScreen.dart';
import 'package:flutter/material.dart';
import 'userMetaData.dart';

class CreateAccountPage extends StatefulWidget {
  @override
  CreateAccountPageState createState() {
    return CreateAccountPageState();
  }
}

class CreateAccountPageState extends State<CreateAccountPage> {
  @override
  Widget build(BuildContext buildContext) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black54,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'create an account',
          style: TextStyle(color: Colors.black54, fontFamily: 'Puritan'),
        ),
      ),
      body: Flex(
        direction: Axis.vertical,
        children: <Widget>[
          Expanded(
              child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Icon(
                Icons.account_circle,
                size: 100,
                color: Colors.white,
              ),
              Text('Set Photo')
            ],
          )),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
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
                        hintText: 'First Name',
                        hintStyle: TextStyle(fontSize: 18)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
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
                        hintText: 'Last Name',
                        hintStyle: TextStyle(fontSize: 18)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
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
                        hintText: 'Age', hintStyle: TextStyle(fontSize: 18)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
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
                        hintText: 'Email', hintStyle: TextStyle(fontSize: 18)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
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
                        hintText: 'Password',
                        hintStyle: TextStyle(fontSize: 18)),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage(new User())),
                );
              },
              child: Container(
                alignment: Alignment.center,
                height: 40,
                width: width - 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blue[300]),
                child: Text(
                  'create account',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
