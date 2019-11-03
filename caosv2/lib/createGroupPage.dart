import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CreateGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          'create a group',
          style: TextStyle(color: Colors.black54, fontFamily: 'Puritan'),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 100, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'name of group',
                style: TextStyle(fontFamily: 'Puritan', fontSize: 30),
              ),
              TextField(
                style: TextStyle(fontFamily: 'Puritan', fontSize: 18),
                textAlignVertical: TextAlignVertical.center,
                cursorColor: Colors.blue[100],
              ),
              Text(
                'category',
                style: TextStyle(fontFamily: 'Puritan', fontSize: 30),
              ),
              DropdownButtonFormField(),
              Text(
                'invite members',
                style: TextStyle(fontFamily: 'Puritan', fontSize: 30),
              ),
              TextField(
                style: TextStyle(fontFamily: 'Puritan', fontSize: 18),
                textAlignVertical: TextAlignVertical.center,
                cursorColor: Colors.blue[100],
              )
            ],
          ),
        ),
      ),
    );
  }
}
