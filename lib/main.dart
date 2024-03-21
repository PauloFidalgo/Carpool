import 'package:carpool/ui/app_bar.dart';
import 'package:carpool/ui/app_bottom_bar.dart';
import 'package:carpool/ui/app_button.dart';
import 'package:carpool/ui/app_main_button.dart';
import 'package:carpool/utils/strings/delegates/strings_delegates.dart';
import 'package:carpool/utils/strings/managers/strings_managers.dart';
import 'package:carpool/utils/strings/models/app_language_model.dart';
import 'package:carpool/utils/strings/strings_constants.dart';
import 'package:flutter/material.dart';

import 'app_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize preferences manager
  await PreferencesManager.instance.init();

  // Get the selected language from preferences
  String? selectedLanguage = PreferencesManager.instance.getSelectedLanguage();

  // Initialize StringsManager with the selected language
  await StringsManager.instance.initAsync(
    appLanguages: [
      AppLanguageModel(languageCode: selectedLanguage ?? 'en', languageStringsJsonPath: 'strings_en.json'),
    ],
  );

  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Carpolling App',
      localizationsDelegates: [
        StringsDelegate(), // Custom strings delegate
      ],
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CarpoolAppBar(
        title: StringsManager.instance.getString(context, common_app_title),
        onNotificationTap: () => {},
        onSettingsTap: () => {},
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CarpoolButton.primary(
            title: "Primary Light",
            onTap: () {},
          ),
          CarpoolButton.primaryDark(
            title: "Primary Dark",
            onTap: () {},
          ),
          CarpoolButton.secondary(
            title: "Secondary Light",
            onTap: () {},
          ),
          CarpoolButton.secondaryDark(
            title: "Secondary Dark",
            onTap: () {},
          ),
          HexagonalButton.primaryDark(
            onPressed: () {},
          ),
          HexagonalButton.primary(
            onPressed: () {},
          ),
        ],
      ),
      bottomNavigationBar: CarpoolBottomBar(),
    );
  }
}
