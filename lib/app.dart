import 'package:carpool/routes.dart';
import 'package:carpool/theme/app_theme.dart';
import 'package:carpool/utils/strings/delegates/strings_delegates.dart';
import 'package:carpool/utils/strings/language_preferences.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'logic/language_logic.dart';
import 'utils/strings/managers/strings_managers.dart';


class App extends StatefulWidget {
  final StringsDelegate stringsDelegate = StringsDelegate();

  App({
    super.key,
  });

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addObserver(this);
  }


  @override
  Widget build(BuildContext context) {
    return Phoenix(
      child: BlocBuilder(
        builder: (context, state) {
          final String selectedLanguageCode = LanguagePreferences.getPreferredLanguage();

          return Phoenix(
              child: MaterialApp(
                title: 'Carpool',
                theme: AppTheme.themeData(Brightness.dark),
                localizationsDelegates: [
                  widget.stringsDelegate,
                ],
                onGenerateRoute: Routes.generateRoute,
                initialRoute: SplashScreenPage.routeName,
                debugShowCheckedModeBanner: false,
                navigatorKey: navigatorKey,
              ),
          );
        },
      ),
    );
  }
}
