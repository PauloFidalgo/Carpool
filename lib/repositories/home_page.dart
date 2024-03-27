import 'package:carpool/logic/language_logic.dart';
import 'package:carpool/repositories/home_page/home_page_logic.dart';
import 'package:carpool/repositories/login_page.dart';
import 'package:carpool/theme/app_colors.dart';
import 'package:carpool/ui/app_bar.dart';
import 'package:carpool/ui/app_button.dart';
import 'package:carpool/ui/app_main_button.dart';
import 'package:carpool/utils/strings/managers/strings_managers.dart';
import 'package:carpool/utils/strings/strings_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../logic/theme_logic.dart';
import '../ui/app_bottom_bar.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _buildBodyCard(
      {required BuildContext context, required HomePageState state}) {
    TextEditingController _fromController = TextEditingController();
    TextEditingController _toController = TextEditingController();

    return Card(
      color: AppColors.fifthColor,
      margin: EdgeInsets.all(15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Card(
            color: Colors.white,
            margin: const EdgeInsets.fromLTRB(20, 20, 20, 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextFormField(
              controller: _fromController,
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.pin_drop,
                  color: Colors.red,
                ),
                labelText: StringsManager.instance
                    .getString(context, home_page_search_from_label),
              ),
            ),
          ),
          Card(
            color: Colors.white,
            margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextFormField(
              controller: _toController,
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.pin_drop,
                  color: Colors.green,
                ),
                labelText: StringsManager.instance
                    .getString(context, home_page_search_to_label),
              ),
            ),
          ),
          Card(
            color: Colors.white,
            margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextFormField(
              controller: _toController,
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.calendar_month,
                  color: Colors.black,
                ),
                labelText: StringsManager.instance
                    .getString(context, home_page_search_date_label),
              ),
            ),
          ),
          Card(
            color: Colors.white,
            margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextFormField(
              controller: _toController,
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.people,
                  color: Colors.black,
                ),
                labelText: StringsManager.instance.getString(
                    context, home_page_search_number_of_passengers_label),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchButton(
      {required BuildContext context, required HomePageState state, required HomePageLogic cubit}) {
    return CarpoolButton.primary(
      title: StringsManager.instance.getString(context, home_page_search_label),
      onTap: () => {cubit.changeTheme()},
      width: 120,
      height: 60,
      borderRadius: 5,
      isDarkMode: state.isDarkMode,
      textSize: ButtonTextSize.high,
    );
  }

  @override
  Widget build(BuildContext context) {
    //final themeLogic = BlocProvider.of<ThemeLogic>(context);
    //final currentTheme = themeLogic.state.appTheme;
    //bool isDarkMode = currentTheme == AppThemeModes.dark ? true : false;
    final cubit = context.read<HomePageLogic>();

    return BlocBuilder<HomePageLogic, HomePageState>(builder: (context, state) {
      return Scaffold(
        appBar: CarpoolAppBar(
          title: StringsManager.instance.getString(context, common_app_title),
          onNotificationTap: () => {},
          onSettingsTap: () => {},
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildBodyCard(context: context, state: state),
            _buildSearchButton(context: context, state: state, cubit: cubit),
          ],
        ),
        bottomNavigationBar: CarpoolBottomBar(
          isDarkMode: state.isDarkMode,
        ),
      );
    });
  }
}
