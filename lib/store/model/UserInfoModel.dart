import 'dart:ui';

import 'package:flutter/foundation.dart' show ChangeNotifier;
import 'package:flutter_firebase/utils/common_utils.dart';
import '../object/UserInfo.dart';
export '../object/UserInfo.dart';

class UserInfoModel extends UserInfo with ChangeNotifier {

  UserInfo _userInfo = UserInfo(name: 'testname');

  String get name => _userInfo.name;

  void setName(name) {
    _userInfo.name = name;
    notifyListeners();
  }

  Locale _locale = Locale('vi');
  Locale get locale => _locale;

  void getLocale() async {
    String locale = await CommonUtils.getCurrentLangType();
    _locale = Locale(locale);
    notifyListeners();
  }
  void updateLocale(locale) {
    print('updateLocale');
    print(locale);
    _locale = Locale(locale);
    notifyListeners();
  }
}