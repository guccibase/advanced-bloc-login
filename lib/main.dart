import 'package:bloc_login_auth/src/blocs/provider.dart';
import 'package:bloc_login_auth/src/screens/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
      Provider(
          child: MaterialApp(
            title: "Login",
            home: LoginScreen(),
          ),),);
}