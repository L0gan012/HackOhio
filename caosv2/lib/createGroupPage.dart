import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'groupMetaData.dart';
import 'groupMetaData.dart';

class CreateGroup extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CreateGroupPageState();
  }
}

class CreateGroupPageState extends State<CreateGroup> {
  @override
  void initState() {
    super.initState();
  }

  GroupTypes initialDropDownType = GroupTypes.social;
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
        child: Container(
          height: height / 2,
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
          child: Flex(
            direction: Axis.vertical,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    padding: EdgeInsets.only(left: 5, bottom: 3),
                    child: Text(
                      'name of group',
                      style: TextStyle(fontFamily: 'Puritan', fontSize: 20),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: Colors.white,
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
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    padding: EdgeInsets.only(left: 5, bottom: 3),
                    child: Text(
                      'group type',
                      style: TextStyle(fontFamily: 'Puritan', fontSize: 20),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: DropdownButton<GroupTypes>(
                    value: initialDropDownType,
                    elevation: 0,
                    style: TextStyle(color: Colors.black87),
                    onChanged: (GroupTypes newValue) {
                      setState(() {
                        initialDropDownType = newValue;
                      });
                    },
                    items: new Group('name', GroupTypes.school)
                        .groupTypesDropDown(),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    padding: EdgeInsets.only(left: 5, bottom: 3),
                    child: Text(
                      'invite members',
                      style: TextStyle(fontFamily: 'Puritan', fontSize: 20),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    cursorColor: Colors.blue[100],
                    style: TextStyle(
                      fontFamily: 'Puritan',
                      fontSize: 25,
                    ),
                    decoration: InputDecoration.collapsed(
                      hintText: 'search for people...',
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: FlatButton(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
