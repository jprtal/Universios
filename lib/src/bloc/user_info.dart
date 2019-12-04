import 'package:flutter/material.dart';

class UserInfo with ChangeNotifier {

  String _username;
  String _accessToken;
  String _pocketToken;
  int _id;
  String _document; // DNI

  get username {
    return _username;
  }

  set username(String value) {
    this._username = value;

    notifyListeners();
  }

  get accessToken {
    return _accessToken;
  }

  set accessToken(String value) {
    this._accessToken = value;

    notifyListeners();
  }

  get pocketToken {
    return _pocketToken;
  }

  set pocketToken(String value) {
    this._pocketToken = value;

    notifyListeners();
  }

  get id {
    return _id;
  }

  set id(int value) {
    this._id = value;

    notifyListeners();
  }

  get document {
    return _document;
  }

  set document(String value) {
    this._document = value;

    notifyListeners();
  }

}