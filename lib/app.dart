import 'package:carpool/logic/theme_logic.dart';
import 'package:carpool/repositories/home_page.dart';
import 'package:carpool/repositories/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:overlay_support/overlay_support.dart';
import 'logic/language_logic.dart';
import 'routes.dart';
import 'theme/app_theme.dart';
import 'utils/strings/delegates/strings_delegates.dart';

final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class App extends StatefulWidget {
  final StringsDelegate stringsDelegate = StringsDelegate();

  App({super.key});

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
      child: MultiRepositoryProvider(
        providers: [
          BlocProvider(
            create: (context) => LanguageLogic(),
          ),
          BlocProvider(
            create: (context) => ThemeLogic(),
          ),
        ],
        child: BlocBuilder<LanguageLogic, LanguageState>(
          builder: (context, state) {
            return BlocBuilder<ThemeLogic, ThemeState>(
              builder: (context, themeState) {
                return Phoenix(
                  child: OverlaySupport(
                    child: MaterialApp(
                      title: 'SmartHome',
                      theme: themeState.appTheme == AppThemeModes.light
                          ? AppTheme.themeData(Brightness.light)
                          : AppTheme.themeData(Brightness.dark),
                      localizationsDelegates: [
                        widget.stringsDelegate,
                      ],
                      onGenerateRoute: Routes.generateRoute,
                      initialRoute: HomePage.routeName,
                      navigatorKey: navigatorKey,
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
