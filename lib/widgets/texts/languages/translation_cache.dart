import 'package:shared_preferences/shared_preferences.dart';

class TranslationCache {
  static const String _prefix = 'translation_';

  static Future<String?> get({required String key, required String language}) async {
    final pref = await SharedPreferences.getInstance();

    final cacheKey = _createKey(key: key, language: language);

    return pref.getString(cacheKey);
  }

  static Future<void> set({required String key, required String language, required String value}) async {
    final pref = await SharedPreferences.getInstance();

    final cacheKey = _createKey(key: key, language: language);

    await pref.setString(cacheKey, value);
  }

  static String _createKey({required String key, required String language}) {
    return '$_prefix${language}_$key';
  }
}

// import 'package:shared_preferences/shared_preferences.dart';

// class TranslationCache {
//   static Future<String?> get(String key) async {
//     final prefs = await SharedPreferences.getInstance();
//     return prefs.getString(key);
//   }

//   static Future<void> set(String key, String value) async {
//     final prefs = await SharedPreferences.getInstance();
//     await prefs.setString(key, value);
//   }
// }
