import 'package:flutter/foundation.dart' show ChangeNotifier;
import '../object/UserInfo.dart';
export '../object/UserInfo.dart';

class UserInfoModel extends UserInfo with ChangeNotifier {

  UserInfo _userInfo = UserInfo(name: 'testname');

  String get name => _userInfo.name;

  void setName(name) {
    _userInfo.name = name;
    notifyListeners();
  }
}