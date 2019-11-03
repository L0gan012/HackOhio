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
  SharedPreferences preferences;
  @override
  void initState() {
    super.initState();
    SharedPreferences.getInstance().then((prefs) {
      setState(() {
        preferences = prefs;
        print(preferences.getKeys());
        preferences.clear();
      });
    });
  }

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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          width: width,
          height: height - 50,
          child: Flex(
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
                        focusNode: new FocusNode(),
                        onChanged: (String change) {
                          _save('firstNameChange', change);
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
                          _save('lastNameChange', change);
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
                          _save('ageChange', change);
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
                          _save('emailChange', change);
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
                          _save('passwordChange', change);
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
                flex: 2,
                child: Align(
                  child: FlatButton(
                    onPressed: () {
                      if (preferences.getString('firstNameChange') == null) {
                        final snackBar = SnackBar(
                          content: Text('Yay! A SnackBar!'),
                          action: SnackBarAction(
                            label: 'Undo',
                            onPressed: () {
                              // Some code to undo the change.
                            },
                          ),
                        );

                        // Find the Scaffold in the widget tree and use
                        // it to show a SnackBar.
                        Scaffold.of(context).showSnackBar(snackBar);
                      } else if (preferences.getString('lastNameChange') ==
                          "") {
                        Scaffold.of(context).showSnackBar(SnackBar(
                          content: Text('Please enter your last name'),
                        ));
                      } else if (preferences.getString('ageChange') == "") {
                        Scaffold.of(context).showSnackBar(SnackBar(
                          content: Text('Please enter your age'),
                        ));
                      } else if (preferences.getString('emailChange') == "") {
                        Scaffold.of(context).showSnackBar(SnackBar(
                          content: Text('Please enter your email'),
                        ));
                      } else if (preferences.getString('passwordChange') ==
                          "") {
                        Scaffold.of(context).showSnackBar(SnackBar(
                          content: Text('Please enter a password'),
                        ));
                      } else {
                        User current = new User();
                        current.firstName =
                            preferences.getString('firstNameChange');
                        current.lastName =
                            preferences.getString('lastNameChange');
                        current.age = preferences.getString('ageChange');
                        current.email = preferences.getString('emailChange');
                        current.password =
                            preferences.getString('passwordChange');
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomePage(current)),
                        );
                      }
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.blue[200]),
                      child: Text(
                        'create account',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Puritan',
                            fontSize: 30),
                      ),
                    ),
                  ),
                  alignment: Alignment.topCenter,
                ),
              ),
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
