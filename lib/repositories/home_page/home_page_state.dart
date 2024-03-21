import 'package:carpool/app.dart';
import 'package:carpool/ui/app_button.dart';
import 'package:flutter/material.dart';

import '../../ui/app_bar.dart';
import '../../ui/app_bottom_bar.dart';
import '../../ui/app_main_button.dart';
import '../../utils/strings/managers/strings_managers.dart';
import '../../utils/strings/strings_constants.dart';
import '../home_page.dart';
import '../login_page.dart';

class HomePageState extends State<HomePage> {
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
            onTap: () {
              Navigator.of(context).pushNamed(LoginPage.routeName);
            },
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