import 'package:flutter/widgets.dart';
import 'package:flutter_firebase/locale/string_base.dart';
import 'package:flutter_firebase/localizations/default_localizations.dart';
import 'package:flutter_firebase/types/enums.dart';
import 'package:flutter_firebase/utils/configs.dart';
import 'package:flutter_firebase/utils/storage.dart';

class CommonUtils {
  static getCurrentLangType() async {
    var lang = await LocalStorage.get(Configs.LOCALE);
    // return lang == Language.LANG_EN ? Language.LANG_EN : Language.LANG_ZH;
    return lang == Language.LANG_EN ? Language.LANG_EN : Language.LANG_EN;
  }
  static StringBase getLocale(BuildContext context) {
    return MyLocalizations.of(context).currentLocalized;
  }
}