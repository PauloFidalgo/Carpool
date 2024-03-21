import 'package:carpool/theme/app_style.dart';
import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import 'app_main_button.dart';

class CarpoolBottomBar extends StatefulWidget {
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
          color: AppColors.firstColor,
          height: 65,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(
                  Icons.home,
                  color: _selectedIndex == 0
                      ? AppColors.textColor
                      : AppColors.fifthColor,
                ),
                onPressed: () {
                  setState(
                    () {
                      _selectedIndex = 0;
                    },
                  );
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.message,
                  color: _selectedIndex == 1
                      ? AppColors.textColor
                      : AppColors.fifthColor,
                ),
                onPressed: () {
                  setState(
                    () {
                      _selectedIndex = 1;
                    },
                  );
                },
              ),
              SizedBox(width: 60),
              IconButton(
                icon: Icon(
                  Icons.pages,
                  color: _selectedIndex == 2
                      ? AppColors.textColor
                      : AppColors.fifthColor,
                ),
                onPressed: () {
                  setState(
                    () {
                      _selectedIndex = 2;
                    },
                  );
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.eco,
                  color: _selectedIndex == 3
                      ? AppColors.textColor
                      : AppColors.fifthColor,
                ),
                onPressed: () {
                  setState(
                    () {
                      _selectedIndex = 3;
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
