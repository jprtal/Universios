import 'package:flutter/material.dart';
import 'package:univeos/src/models/home_info_model.dart';
import 'package:univeos/src/models/tui_model.dart';
import 'package:univeos/src/models/user_info_model.dart';

class RestInfo with ChangeNotifier {
  String _username;
  String _accessToken;
  String _pocketToken;
  int _id;
  String _document; // DNI
  UserInfoModel _userInfo;
  HomeInfoModel _homeInfo;
  TuiModel _tui;

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

  UserInfoModel get userInfo {
    return _userInfo;
  }

  set userInfo(UserInfoModel value) {
    this._userInfo = value;

    notifyListeners();
  }

  HomeInfoModel get homeInfo {
    return _homeInfo;
  }

  set homeInfo(HomeInfoModel value) {
    this._homeInfo = value;

    notifyListeners();
  }

  TuiModel get tui {
    return _tui;
  }

  set tui(TuiModel value) {
    this._tui = value;
  }
}
