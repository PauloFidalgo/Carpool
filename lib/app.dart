import 'package:carpool/repositories/home_page.dart';
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
  late Brightness _currentTheme;
  final StringsDelegate stringsDelegate = StringsDelegate();

  App({Key? key}) : super(key: key);

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
        ],
        child: BlocBuilder<LanguageLogic, LanguageState>(
            builder: (context, state) {
              final String selectedLanguageCode = "en";

              return Phoenix(
                child: OverlaySupport(
                  child: MaterialApp(
                    title: 'SmartHome',
                    theme: AppTheme.themeData(Brightness.dark),
                    localizationsDelegates: [
                      widget.stringsDelegate,
                    ],
                    onGenerateRoute: Routes.generateRoute,
                    navigatorObservers: [
                      routeObserver,
                    ],
                    initialRoute: HomePage.routeName,
                    debugShowCheckedModeBanner: false,
                    navigatorKey: navigatorKey,
                  ),
                ),
              );
            },
          ),
      ),
    );
  }
}
