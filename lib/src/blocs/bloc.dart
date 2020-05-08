import 'dart:async';

import 'package:bloc_login_auth/src/blocs/validators.dart';
class Bloc extends Validators{

  final _email = StreamController<String>();
  final _password = StreamController<String>();



  // get email and password stream
Stream<String> get email => _email.stream.transform(emailValidator);
Stream<String> get password => _password.stream.transform(passwordValidator);

//set email and password stream

Function(String) get changeEmail => _email.sink.add;
Function(String) get changePassword => _password.sink.add;

dispose(){
  _email.close();
  _password.close();
}
}