import 'package:carpool/logic/theme_logic.dart';
import 'package:carpool/theme/app_style.dart';
import 'package:carpool/utils/strings/managers/strings_managers.dart';
import 'package:carpool/utils/strings/strings_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../theme/app_colors.dart';
import 'app_main_button.dart';

class CarpoolBottomBar extends StatefulWidget {
  final bool isDarkMode;

  const CarpoolBottomBar({Key? key, required this.isDarkMode}) : super(key:key);

  @override
  _CarpoolBottomBarState createState() => _CarpoolBottomBarState();
}

class _CarpoolBottomBarState extends State<CarpoolBottomBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {

    return Stack(
      alignment: Alignment.bottomCenter,
      fit: StackFit.passthrough,
      children: [
        Container(
          color: widget.isDarkMode ? AppColors.ninthColor : AppColors.thirdColor,
          height: 65,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                child: Column(
                  children: [
                    Icon(
                      Icons.search,
                      color: _selectedIndex == 0
                          ? AppColors.textColor
                          : AppColors.fifthColor,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      StringsManager.instance
                          .getString(context, home_page_search_label),
                    ),
                  ],
                ),
                onPressed: () {
                  setState(
                    () {
                      _selectedIndex = 0;
                    },
                  );
                },
              ),
              TextButton(
                child: Column(
                  children: [
                    Icon(
                      Icons.add,
                      color: _selectedIndex == 1
                          ? AppColors.textColor
                          : AppColors.fifthColor,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      StringsManager.instance
                          .getString(context, home_page_publish_label),
                    ),
                  ],
                ),
                onPressed: () {
                  setState(
                    () {
                      _selectedIndex = 1;
                    },
                  );
                },
              ),
              TextButton(
                child: Column(
                  children: [
                    Icon(
                      Icons.message,
                      color: _selectedIndex == 2
                          ? AppColors.textColor
                          : AppColors.fifthColor,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      StringsManager.instance
                          .getString(context, home_page_messages_label),
                    ),
                  ],
                ),
                onPressed: () {
                  setState(
                    () {
                      _selectedIndex = 2;
                    },
                  );
                },
              ),
              TextButton(
                child: Column(
                  children: [
                    Icon(
                      Icons.calendar_month,
                      color: _selectedIndex == 3
                          ? AppColors.textColor
                          : AppColors.fifthColor,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      StringsManager.instance
                          .getString(context, home_page_schedule_label),
                    ),
                  ],
                ),
                onPressed: () {
                  setState(
                    () {
                      _selectedIndex = 3;
                    },
                  );
                },
              ),
              TextButton(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.eco,
                      color: _selectedIndex == 4
                          ? AppColors.textColor
                          : AppColors.fifthColor,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      StringsManager.instance
                          .getString(context, home_page_metrics_label),
                    ),
                  ],
                ),
                onPressed: () {
                  setState(
                    () {
                      _selectedIndex = 4;
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
