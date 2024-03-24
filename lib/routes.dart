
import 'package:carpool/repositories/home_page.dart';
import 'package:carpool/repositories/home_page/home_page_logic.dart';
import 'package:carpool/repositories/login_page.dart';
import 'package:carpool/repositories/login_page/login_page_logic.dart';
import 'package:carpool/theme/app_colors.dart';
import 'package:carpool/theme/app_style.dart';
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
      );
    }

    // Home
    if (name == HomePage.routeName) {
      return route(
        BlocProvider(
          create: (context) => HomePageLogic(),
          child: const HomePage(),
        ),
      );
    }

    if (name == LoginPage.routeName) {
      return route(
        BlocProvider(
          create: (context) => LoginPageLogic(),
          child: const LoginPage(),
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
