import 'package:flutter/material.dart';
import 'dart:async';

class LogigScreen extends StatefulWidget {
  LogigScreen({Key? key}) : super(key: key);

  @override
  State<LogigScreen> createState() => _LogigScreenState();
}

class _LogigScreenState extends State<LogigScreen> {
  Widget emailField() {
    return TextFormField(
      onChanged: (value) {},
      decoration: InputDecoration(
        labelText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
  }

  Widget passwordField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
  }

  Widget submitButton() {
    return ElevatedButton(
      style: ButtonStyle(),
      onPressed: () {},
      child: Text('Login'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("Login"),
        emailField(),
        Text("Enter password"),
        passwordField(),
        submitButton(),
      ],
    );
  }
}
