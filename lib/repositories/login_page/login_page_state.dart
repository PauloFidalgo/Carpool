

import 'package:carpool/repositories/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../ui/app_bar.dart';
import '../../ui/app_bottom_bar.dart';
import '../../utils/strings/managers/strings_managers.dart';
import '../../utils/strings/strings_constants.dart';

class LoginPageState extends State<LoginPage> {
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