import 'package:flutter_firebase/types/enums.dart';
import 'package:flutter_firebase/utils/configs.dart';
import 'package:flutter_firebase/utils/storage.dart';

class CommonUtils {
  static getCurrentLangType() async {
    var lang = await LocalStorage.get(Configs.LOCALE);
    return lang == Language.LANG_EN ? Language.LANG_EN : Language.LANG_VI;
  }
}