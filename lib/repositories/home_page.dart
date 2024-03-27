import 'package:carpool/repositories/login_page.dart';
import 'package:carpool/ui/app_bar.dart';
import 'package:carpool/ui/app_button.dart';
import 'package:carpool/utils/strings/managers/strings_managers.dart';
import 'package:carpool/utils/strings/strings_constants.dart';
import 'package:flutter/material.dart';

import '../ui/app_bottom_bar.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CarpoolAppBar(
        title: StringsManager.instance.getString(context, common_app_title),
        onNotificationTap: () => {},
        onSettingsTap: () => {},
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CarpoolButton.primary(
              title: "Primary Light",
              onTap: () {
                Navigator.of(context).pushNamed(LoginPage.routeName);
              },
            ),
            const SizedBox(height: 15,),
            CarpoolButton.primaryDark(
              title: "Primary Dark",
              onTap: () {},
            ),
            const SizedBox(height: 15,),
            CarpoolButton.secondary(
              title: "Secondary Light",
              onTap: () {},
            ),
            const SizedBox(height: 15,),
            CarpoolButton.secondaryDark(
              title: "Secondary Dark",
              onTap: () {},
            ),
          ],
        ),
      ),
      bottomNavigationBar: CarpoolBottomBar(),
    );
  }
}