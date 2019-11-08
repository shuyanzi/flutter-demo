import 'package:shared_preferences/shared_preferences.dart';

/// SharedPreferences 本地存储
class LocalStorage {
  static saveBool(String key, bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(key, value);
  }

  static save(String key, value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }

  static get(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.get(key);
  }

  static remove(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove(key);
  }

  static clear() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }

  static saveStringList(String key, value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    List<String> stringList = get(key);
    if (stringList == null) {
      stringList = List<String>();
    }

    if (!stringList.contains(value)) {
      stringList.add(value);
    }

    prefs.setStringList(key, stringList);
  }
}
