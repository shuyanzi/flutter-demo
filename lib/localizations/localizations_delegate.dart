import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/localizations/default_localizations.dart';
import 'package:flutter_firebase/types/enums.dart';

/// 多语言代理
class MyLocalizationsDelegate extends LocalizationsDelegate<MyLocalizations> {

  MyLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    ///支持中文和英语
    return [Language.LANG_EN, Language.LANG_ZH].contains(locale.languageCode);
  }

  ///根据locale，创建一个对象用于提供当前locale下的文本显示，load 方法，VNLocalizations就是在此方法内被初始化的
  @override
  Future<MyLocalizations> load(Locale locale) {
    return new SynchronousFuture<MyLocalizations>(new MyLocalizations(locale));
  }

  @override
  bool shouldReload(LocalizationsDelegate<MyLocalizations> old) {
    return false;
  }

  ///全局静态的代理
  static MyLocalizationsDelegate delegate = new MyLocalizationsDelegate();
}
