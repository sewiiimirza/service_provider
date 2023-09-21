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

