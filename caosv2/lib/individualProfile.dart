import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IndividualProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
      body: Flex(
        direction: Axis.vertical,
        children: <Widget>[
          Expanded(child: Icon(Icons.account_circle)),
          Expanded(
            child: Text(
              'change profile picture',
              style: TextStyle(color: Colors.black54, fontFamily: 'Puritan'),
            ),
          ),
          Expanded(
            flex: 6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  'First Name',
                  style:
                      TextStyle(color: Colors.black54, fontFamily: 'Puritan'),
                ),
                FormField(initialValue: _read('firstNameChanged')),
              ],
            ),
          )
        ],
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
    return value;
  }
}
