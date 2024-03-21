import 'package:flutter/material.dart';

import 'home_page/home_page_state.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home';
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => HomePageState();
}