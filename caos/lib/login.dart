import 'package:flutter/material.dart';

class login extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Caos',
      home: Scaffold(
        body: loginBody(),
      ),
    );
  }
}

class loginBody extends StatefulWidget {
  @override
  loginBodyFormState createState() {
    return loginBodyFormState();
  }
}

class loginBodyFormState extends State<loginBody> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext buildContext) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Caos', ),
        Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('Username', style: TextStyle(fontSize: 24)),
                ],
              ),
              TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter a username';
                  }
                  return null;
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('Password', style: TextStyle(fontSize: 24)),
                ],
              ),
              TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter a password';
                  }
                  return null;
                },
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                child: RaisedButton(
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      Scaffold.of(context).showSnackBar(
                          SnackBar(content: Text('Processing Data')));
                    } else {
                      Scaffold.of(context).showSnackBar(SnackBar(
                          content: Text('Username or Password incorrect')));
                    }
                  },
                  child: Text('Login'),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
