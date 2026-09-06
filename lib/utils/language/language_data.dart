import 'en_en_language.dart';

class LanguageData {
  static Map<String, String> getLanguage(String language) {
    switch (language.toLowerCase()) {
      case 'en_us':
      case 'en':
        return enEnLanguage;

      default:
        return enEnLanguage;
    }
  }
}
