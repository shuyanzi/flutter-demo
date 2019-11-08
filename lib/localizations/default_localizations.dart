import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_firebase/types/enums.dart';
import 'package:flutter_firebase/locale/string_base.dart';
import 'package:flutter_firebase/locale/en.dart';
import 'package:flutter_firebase/locale/zh.dart';

///自定义多语言实现
class MyLocalizations {
  final Locale locale;

  MyLocalizations(this.locale);

  ///根据不同 locale.languageCode 加载不同语言对应
  ///StringEn和StringZh都继承了StringBase
  static Map<String, StringBase> _localizedValues = {
    Language.LANG_EN: new StringEn(),
    Language.LANG_ZH: new StringZh(),
  };

  StringBase get currentLocalized {
    print('object');
    print(locale.languageCode);
    return _localizedValues[locale.languageCode];
  }

  ///通过 MyLocalizations 加载当前的 MyLocalizations，
  ///在应用中要使用 MyLocalizations， 的实例需要通过 MyLocalizations 这个 Widget 来获取的
  ///获取对应的 StringBase
  static MyLocalizations of(BuildContext context) {
    print('MyLocalizations BuildContext context');
    print(context);
    print(MyLocalizations);
    print('1111:${Localizations.of<MyLocalizations>(context, MyLocalizations)}');
    return Localizations.of<MyLocalizations>(context, MyLocalizations);
  }
}
