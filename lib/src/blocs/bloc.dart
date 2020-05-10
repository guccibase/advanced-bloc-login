import 'dart:async';

import 'package:bloc_login_auth/src/blocs/validators.dart';
import 'package:rxdart/rxdart.dart';
class Bloc extends Validators{

  final _email = BehaviorSubject<String>();
  final _password = BehaviorSubject<String>();



  // get email and password stream
Stream<String> get email => _email.stream.transform(emailValidator);
Stream<String> get password => _password.stream.transform(passwordValidator);
Stream<bool> get submitBtn => Rx.combineLatest2(email, password, (a, b) => true);

//set email and password stream

Function(String) get changeEmail => _email.sink.add;
Function(String) get changePassword => _password.sink.add;

submit(){
  String email = _email.value;
  String password = _password.value;

  print('email is $email and password is $password ');
  }

dispose(){
  _email.close();
  _password.close();
}
}

