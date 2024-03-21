import 'package:shared_preferences/shared_preferences.dart';

class PreferencesManager {
  static final PreferencesManager _instance = PreferencesManager._();
  static PreferencesManager get instance => _instance;

  SharedPreferences? _prefs;

  PreferencesManager._();

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // Method to get the selected language from preferences
  String? getSelectedLanguage() {
    return _prefs?.getString('selectedLanguage');
  }

  // Method to set the selected language in preferences
  Future<void> setSelectedLanguage(String languageCode) async {
    await _prefs?.setString('selectedLanguage', languageCode);
  }
}
