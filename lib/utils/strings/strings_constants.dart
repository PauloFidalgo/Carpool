import '../strings/models/app_language_model.dart';

const appLanguages = [
  AppLanguageModel(
    languageCode: "pt",
    languageStringsJsonPath: "assets/strings/strings_pt.json",
  ),
  AppLanguageModel(
    languageCode: "en",
    languageStringsJsonPath: "assets/strings/strings_en.json",
  ),
];

// Strings Keys
const String common_app_title = "common_app_title";
const String common_login_title = "common_login_title";
const String common_settings_title = "common_settings_title";