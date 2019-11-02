import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
        Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Username';
                  }
                  return null;
                },
              ),
              TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Password';
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
