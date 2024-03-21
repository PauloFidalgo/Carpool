

import 'package:carpool/repositories/home_page.dart';
import 'package:carpool/theme/app_colors.dart';
import 'package:carpool/theme/app_style.dart';
import 'package:carpool/ui/app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Routes {
  static MaterialPageRoute generateRoute(RouteSettings settings) {
    final name = settings.name;
    final args = settings.arguments;

    MaterialPageRoute route(Widget widget) {
      return MaterialPageRoute(
        builder: (context) => widget,
        settings: settings,
      );
    }

    // Home
    if (name == HomePage.routeName) {
      final bool? pushedFromOnboardingUser = args as bool?;

      return route(
        BlocProvider(
          create: (context) => HomePageLogic(
            homesCubit: RepositoryProvider.of<HomesCubit>(context),
            feedbackRepository: RepositoryProvider.of<FeedbackRepository>(context),
            devicesRepository: RepositoryProvider.of<DevicesRepository>(context),
            remoteConfigRepository: RepositoryProvider.of<RemoteConfigRepository>(context),
            roomsRepository: RepositoryProvider.of<RoomsRepository>(context),
            scenariosRepository: RepositoryProvider.of<ScenariosRepository>(context),
            invitesRepository: RepositoryProvider.of<InvitesRepository>(context),
            settingsRepository: RepositoryProvider.of<SettingsRepository>(context),
            securityRepository: RepositoryProvider.of<SecurityRepository>(context),
            userAccountRepository: RepositoryProvider.of<UserAccountRepository>(context),
            helpRepository: RepositoryProvider.of<HelpRepository>(context),
            pushedFromOnboardingUser: pushedFromOnboardingUser ?? false,
          ),
          child: const HomePage(),
        ),
      );
    }

    return route(_errorRoute(settings));
  }

  static Widget _errorRoute(RouteSettings settings) {
    return Scaffold(
      backgroundColor: AppColors.textColor,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Route doesn\'t exist', style: AppStyle.bodyLight),
            Text('Route: ${settings.name}', style: AppStyle.bodyLight),
            Text('Arguments: ${settings.arguments}', style: AppStyle.bodyLight),
          ],
        ),
      ),
    );
  }
}
