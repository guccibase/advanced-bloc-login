import 'package:bloc_login_auth/src/blocs/bloc.dart';

import 'package:flutter/material.dart';

Widget emailField(Bloc bloc){
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

Widget passwordField(Bloc bloc){
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