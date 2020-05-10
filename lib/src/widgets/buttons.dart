
import 'package:bloc_login_auth/src/blocs/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget submitButton(Bloc bloc){
  return StreamBuilder<Object>(
    stream: bloc.submitBtn,
    builder: (context, snapshot) {
      return RaisedButton(
        color: Colors.blue,
        child: Text('Submit'),
        onPressed: !snapshot.hasData?  null: (){
          bloc.submit();
        },
      );
    },

      );
    }
