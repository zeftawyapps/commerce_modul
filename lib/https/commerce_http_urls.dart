// create class UsersHttpUrls use singleton pattern

import 'i_http_urls.dart';
class CommerceBaseUrlEnveiroment {

  String? baseUrl = "https://eventapp-api.herokuapp.com/api/v1";

  static final CommerceBaseUrlEnveiroment _baseUrlEnvet = CommerceBaseUrlEnveiroment._internal();
  factory CommerceBaseUrlEnveiroment({String? baseUrl }) {
    if (baseUrl != null) _baseUrlEnvet.baseUrl = baseUrl ;

    return _baseUrlEnvet;
  }
  CommerceBaseUrlEnveiroment._internal();


}


// create class UsersHttpheader use singleton pattern
class CommerceHttpHeader {
  // create instance UsersHttpheader
  static final CommerceHttpHeader _instance = CommerceHttpHeader._internal();

  // create factory UsersHttpheader
  factory CommerceHttpHeader() => _instance;
  void setToken(String token) {
    _usertoken = token;
  }

  String get usertoken => _usertoken;
  // create UsersHttpheader._internal
  CommerceHttpHeader._internal();

  String _usertoken = '';
}
