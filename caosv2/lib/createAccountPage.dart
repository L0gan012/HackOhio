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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage(new User())),
          );
        },
        child: Icon(Icons.near_me),
      ),
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        elevation: 0,
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
    );
  }
}
