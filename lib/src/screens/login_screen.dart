import 'package:bloc_login_auth/src/blocs/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              emailField(),
              passwordField(),
              submitButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget emailField(){
    return StreamBuilder<Object>(
      stream: bloc.email,
      builder: (context, snapshot) {
        return TextField(
          onChanged: bloc.changeEmail,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: 'you@email.com',
            labelText: 'Email Address',
            errorText: snapshot.error
          ),

        );
      }
    );
  }

  Widget passwordField(){
    return StreamBuilder(
      stream: bloc.password,
      builder: (context, snapshot) {
        return TextField(
          onChanged: bloc.changePassword,
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'Enter Password',
            labelText: 'Your Password',
            errorText: snapshot.error,
          ),

        );
      }
    );
  }

  Widget submitButton(){
    return RaisedButton(
      color: Colors.blue,
      child: Text('Submit'),
      onPressed: (){},

    );
  }
}

