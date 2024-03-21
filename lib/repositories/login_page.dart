import 'package:flutter/material.dart';

import 'login_page/login_page_state.dart';


class LoginPage extends StatefulWidget {
  static const routeName = '/loginPage';
  const LoginPage({super.key, required this.title});
  final String title;

  @override
  State<LoginPage> createState() => LoginPageState();
}
