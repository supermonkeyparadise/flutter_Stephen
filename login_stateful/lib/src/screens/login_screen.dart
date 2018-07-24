import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
        child: Column(
          children: <Widget>[
            emailField(),
            passwordField(),
            Container(
              margin: EdgeInsets.only(top: 25.0),
            ),
            submitButton(),
          ],
        ),
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email Address',
        hintText: 'you@example.com',
      ),
      validator: (String value) {
        if (!value.contains('@')) {
          return 'Please enter a valid email';
        } else {
          return null;
        }
      },
      onSaved: (String value) {
        print(value);
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Password',
      ),
      validator: (String value) {
        if (value.length < 4) {
          return 'Password must be a least 4 characters';
        } else {
          return null;
        }
      },
      onSaved: (String value) {
        print(value);
      },
    );
  }

  Widget submitButton() {
    return RaisedButton(
      color: Colors.blue,
      child: Text('Submit!'),
      onPressed: () {
        // formKey.currentState.reset();
        if (formKey.currentState.validate()) {
          formKey.currentState.save();
        }
      },
    );
  }
}
