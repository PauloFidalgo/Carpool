import 'package:carpool/ui/app_bar.dart';
import 'package:flutter/material.dart';

import '../ui/app_bottom_bar.dart';
import '../utils/strings/managers/strings_managers.dart';
import '../utils/strings/strings_constants.dart';


class LoginPage extends StatefulWidget {
  static const String routeName = "/loginPage";
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CarpoolAppBar(
        title: StringsManager.instance.getString(context, common_login_title),
        onNotificationTap: () => {},
        onSettingsTap: () => {},
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
            Text("I am on Login Page"),
        ],
      ),
      bottomNavigationBar: CarpoolBottomBar(),
    );
  }
}