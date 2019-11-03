import 'package:caos/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'userMetaData.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
    User current = new User();
    return ScopedModel<User>(
      model: current,
      child: Scaffold(
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
        body: ScopedModelDescendant<User>(
          builder: (context, child, model) => Flex(
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
                        onChanged: (String change) {
                          _save('firstNameChange',change);
                        },
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
                        onChanged: (String change) {
                          _save('lastNameChange',change);
                        },
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
                        onChanged: (String change) {
                          _save('ageChange',change);
                        },
                        keyboardType: TextInputType.number,
                        textAlignVertical: TextAlignVertical.center,
                        cursorColor: Colors.blue[100],
                        style: TextStyle(
                          fontFamily: 'Puritan',
                          fontSize: 25,
                        ),
                        decoration: InputDecoration.collapsed(
                            hintText: 'Age',
                            hintStyle: TextStyle(fontSize: 18)),
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
                        onChanged: (String change) {
                          _save('emailChange',change);
                        },
                        textAlignVertical: TextAlignVertical.center,
                        cursorColor: Colors.blue[100],
                        style: TextStyle(
                          fontFamily: 'Puritan',
                          fontSize: 25,
                        ),
                        decoration: InputDecoration.collapsed(
                            hintText: 'Email',
                            hintStyle: TextStyle(fontSize: 18)),
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
                        onChanged: (String change) {
                          _save('passwordChange',change);
                        },
                        obscureText: true,
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
                    if (_read('firstNameChange') == 0 || _read('firstNameChange') == "") {
                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text('Please enter your first name'),
                      ));
                    } else if (_read('lastNameChange') == 0 || _read('lastNameChange') == "") {
                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text('Please enter your last name'),
                      ));
                    } else if (_read('ageChange') == 0 || _read('ageChange') == "") {
                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text('Please enter your age'),
                      ));
                    } else if (_read('emailChange') == 0 || _read('emailChange') == "") {
                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text('Please enter your email'),
                      ));
                    } else if (_read('passwordChange') == 0 || _read('passwordChange') == "") {
                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text('Please enter a password'),
                      ));
                    } else {
                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text('Processing'),
                      ));
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomePage(model)),
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
                      'create account',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  _save(String key, String userData) async {
    final prefs = await SharedPreferences.getInstance();
    final k = key;
    final value = userData;
    prefs.setString(k, value);
    print('saved $value');
  }

  _read(key) async {
    final prefs = await SharedPreferences.getInstance();
    final k = key;
    final value = prefs.getString(k) ?? 0;
    print('read: $value');
  }
}
