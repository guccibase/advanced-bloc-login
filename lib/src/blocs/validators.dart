import 'dart:async';

class Validators {
  final emailValidator = StreamTransformer<String, String>.fromHandlers(
    handleData: (email, sink){
      if(email.contains('@') && email.contains('.')){
        sink.add(email);
      }else{
        sink.addError('Please Enter a valid email');
      }
    }
  );

  final passwordValidator = StreamTransformer<String, String>.fromHandlers(
    handleData: (password, sink){
      if(password.length > 5){
        sink.add(password);
      }else{
        sink.addError("Password must be at least six characters");
      }
    }
  );
}