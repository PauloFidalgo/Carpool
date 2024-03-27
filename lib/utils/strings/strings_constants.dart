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
const String home_page_metrics_label = "home_page_metrics_label";
const String home_page_schedule_label = "home_page_schedule_label";
const String home_page_messages_label = "home_page_messages_label";
const String home_page_publish_label = "home_page_publish_label";
const String home_page_search_label = "home_page_search_label";
const String home_page_search_from_label = "home_page_search_from_label";
const String home_page_search_to_label = "home_page_search_to_label";
const String home_page_search_date_label = "home_page_search_date_label";
const String home_page_search_number_of_passengers_label = "home_page_search_number_of_passengers_label";