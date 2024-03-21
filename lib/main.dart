import 'package:carpool/repositories/home_page.dart';
import 'package:carpool/utils/strings/delegates/strings_delegates.dart';
import 'package:carpool/utils/strings/managers/strings_managers.dart';
import 'package:carpool/utils/strings/models/app_language_model.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();


  // Get the selected language from preferences
  String? selectedLanguage = null;

  // Initialize StringsManager with the selected language
  StringsManager.instance.initAsync(
    appLanguages: [
      AppLanguageModel(languageCode: selectedLanguage ?? 'en', languageStringsJsonPath: 'assets/strings/strings_en.json'),
    ],
  );

  runApp(MyApp());
}


class MyApp extends StatelessWidget{

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Carpolling App',
      localizationsDelegates: [
        StringsDelegate(),
      ],
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(title: 'Irbilhos',),
    );
  }
  
}