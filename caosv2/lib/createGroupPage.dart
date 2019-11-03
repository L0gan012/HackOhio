import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'groupMetaData.dart';
import 'groupMetaData.dart';
import 'userMetaData.dart';
import 'homeScreen.dart';

class CreateGroup extends StatefulWidget {
  final User currentUser;

  CreateGroup(this.currentUser);
  @override
  State<StatefulWidget> createState() {
    return CreateGroupPageState();
  }
}

class CreateGroupPageState extends State<CreateGroup> {
  @override
  void initState() {
    super.initState();
  }

  GroupTypes initialDropDownType = GroupTypes.social;
  String initialName = "";
  String initialDesc = "";
  @override
  Widget build(BuildContext context) {
    TextEditingController name = new TextEditingController();
    TextEditingController description = new TextEditingController();

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    List<DropdownMenuItem<String>> categories = new List();
    AppBar test = new AppBar();
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
          height: height - test.preferredSize.height - 10,
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
          child: Flex(
            direction: Axis.vertical,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.account_circle,
                      size: height / 8,
                      color: Colors.white,
                    ),
                    Text(
                      'Set Photo',
                      style: TextStyle(
                          fontFamily: 'Puritan',
                          fontSize: 20,
                          color: Colors.black54),
                    )
                  ],
                ),
                flex: 2,
              ),
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
                    controller: initialName == ""
                        ? name = new TextEditingController()
                        : name = new TextEditingController(text: initialName),
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
                      'description',
                      style: TextStyle(fontFamily: 'Puritan', fontSize: 20),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  width: width,
                  padding: EdgeInsets.only(left: 10),
                  alignment: Alignment.topLeft,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: TextField(
                    controller: initialDesc == ""
                        ? description = new TextEditingController()
                        : description =
                            new TextEditingController(text: initialDesc),
                    maxLines: null,
                    keyboardType: TextInputType.multiline,
                    textAlignVertical: TextAlignVertical.center,
                    cursorColor: Colors.blue[100],
                    style: TextStyle(
                      fontFamily: 'Puritan',
                      fontSize: 18,
                    ),
                    decoration: InputDecoration.collapsed(
                      hintText: 'description',
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
                        initialDesc = description.text;
                        initialName = name.text;
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
                      fontSize: 20,
                    ),
                    decoration: InputDecoration.collapsed(
                      hintText: 'search for people...',
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Builder(
                  builder: (context) => FlatButton(
                    onPressed: () {
                      String str = name.text;
                      String desc = description.text;
                      if (str == "" || str == null) {
                        final snackBar = SnackBar(
                          content: Text('Please enter a group name'),
                        );
                        Scaffold.of(context).showSnackBar(snackBar);
                      } else {
                        if (desc == null) {
                          desc = 'none';
                        }
                        Group newGroup = Group(str, initialDropDownType);
                        newGroup.description = desc;
                        widget.currentUser.makeAGroup(newGroup);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  HomePage(widget.currentUser)),
                        );
                      }
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: width - 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.blue[300]),
                      child: Text(
                        'create group',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Puritan'),
                      ),
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
