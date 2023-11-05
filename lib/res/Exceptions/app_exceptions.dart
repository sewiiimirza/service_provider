class appExceptions implements Exception {

  final _message;
  final _prefix;

  appExceptions([this._message, this._prefix]);

  String toString() {
    return '$_prefix,$_message';
  }
}

class InternetException extends appExceptions{
  InternetException([String? message ]): super(message,'No internet');

}
class RequestTimeout extends appExceptions {
  RequestTimeout([String? message ]) : super(message, 'Request Timeout');
}
class UnAuthorizedUserException extends appExceptions{
  UnAuthorizedUserException([String? message ]): super(message,'Internal server error');

}

class InvalidUrlException extends appExceptions {
  InvalidUrlException([String? message ]) : super(message, 'Unauthorized request');
}
class FetchDataException extends appExceptions {
  FetchDataException([String? message ]) : super(message, '');
}
class SignUp_LoginException extends appExceptions {
 SignUp_LoginException([String? message ]) : super(message, 'An unknown error occurred');
 //we have to call e code exception  so for that we create factory constructor
factory SignUp_LoginException.code(String code){
switch(code){
  case 'invalid-email':
    return  SignUp_LoginException('Email is not valid');
  case 'wrong-password':
    return  SignUp_LoginException('Password is not correct');
  case 'email-already-in-use':
    return  SignUp_LoginException('An account already exists for that email');
  case 'invalid-email':
    return  SignUp_LoginException('Email is not valid');
    default:
      return SignUp_LoginException();
}
}

}


