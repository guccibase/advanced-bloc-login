import 'package:bloc_login_auth/src/blocs/provider.dart';
import 'package:bloc_login_auth/src/widgets/buttons.dart';
import 'package:bloc_login_auth/src/widgets/textfields.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context);
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              emailField(bloc),
              passwordField(bloc),
              submitButton(bloc),
            ],
          ),
        ),
      ),
    );
  }


}

