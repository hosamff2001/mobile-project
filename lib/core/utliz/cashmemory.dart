import 'package:shared_preferences/shared_preferences.dart';

class CashHelper {
  static late final SharedPreferences prefs;

  static init() async {
    prefs = await SharedPreferences.getInstance();
  }

  static Future<bool> setdata(
      {required String key, required dynamic value}) async {
    if (value is bool) {
      return await prefs.setBool(key, value);
    } else if (value is int) {
      return await prefs.setInt(key, value);
    } else if (value is String) {
      return await prefs.setString(key, value);
    }

    return await prefs.setDouble(key, value);
  }

  static dynamic getdata({required String key})  {
    
    return  prefs.get(key);
  }

  static Future<bool> removedata({required String key}) async {
    return prefs.remove(key);
  }
}
