import 'package:carpool/repositories/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';

import 'logic/language_logic.dart';
import 'main.dart';
import 'routes.dart';
import 'theme/app_theme.dart';
import 'utils/strings/delegates/strings_delegates.dart';
import 'utils/strings/language_preferences.dart';

class _AppState extends State<MyApp> with WidgetsBindingObserver {
  late Brightness _currentTheme;
  late StringsDelegate _currentStringsDelegate;

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addObserver(this);
    _loadSettings();
  }

  Future<void> _loadSettings() async {
    // Retrieve language and theme settings
    final String? selectedLanguageCode = await LanguagePreferences.getPreferredLanguage();
    final Brightness? savedThemeMode = await _loadThemeMode();

    // Apply language and theme settings
    setState(() {
      _currentTheme = savedThemeMode ?? Brightness.light; // Default to light mode if not set
      _currentStringsDelegate = StringsDelegate(); // Default to English if not set
    });
  }

  Future<Brightness?> _loadThemeMode() async {
    // Retrieve theme mode from persistent storage
    // Implement your storage retrieval logic here (e.g., SharedPreferences)
    // Return null if the value is not set
    // For example:
    // final bool? isDarkMode = await SomeStorage.getBool('isDarkMode');
    // return isDarkMode ? Brightness.dark : Brightness.light;
    return null; // Placeholder until you implement storage logic
  }

  @override
  Widget build(BuildContext context) {
    return Phoenix(
      child: MaterialApp(
        title: 'Carpool',
        theme: AppTheme.themeData(_currentTheme),
        localizationsDelegates: [
          _currentStringsDelegate,
        ],
        onGenerateRoute: Routes.generateRoute,
        initialRoute: HomePage.routeName,
        debugShowCheckedModeBanner: false,
        navigatorKey: navigatorKey,
      ),
    );
  }
}
