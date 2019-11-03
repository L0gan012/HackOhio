import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'groupMetaData.dart';

class CreateGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    List<DropdownMenuItem<String>> categories = new List();
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
          padding: EdgeInsets.symmetric(vertical: 60, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'name of group',
                style: TextStyle(fontFamily: 'Puritan', fontSize: 30),
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
                    hintText: 'name',
                  ),
                ),
              ),
              Text(
                'category',
                style: TextStyle(fontFamily: 'Puritan', fontSize: 30),
              ),
              DropdownButtonFormField(
                items: categories,
                decoration: InputDecoration(),
              ),
              Text(
                'invite members',
                style: TextStyle(fontFamily: 'Puritan', fontSize: 30),
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
                  decoration: InputDecoration.collapsed(),
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: width - 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.blue[300]),
                  child: Text(
                    'create group',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
