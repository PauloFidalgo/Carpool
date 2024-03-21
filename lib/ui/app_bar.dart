import 'package:carpool/theme/app_colors.dart';
import 'package:carpool/theme/app_style.dart';
import 'package:flutter/material.dart';

class CarpoolAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool isDarkMode;
  final VoidCallback? onNotificationTap;
  final VoidCallback? onSettingsTap;
  final double? height;

  const CarpoolAppBar({
    super.key,
    required this.title,
    this.isDarkMode = false,
    required this.onNotificationTap,
    required this.onSettingsTap,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    final TextStyle titleStyle =
        isDarkMode ? AppStyle.h1Dark : AppStyle.h1Light;

    final Color iconColor =
        isDarkMode ? AppColors.primaryIconDark : AppColors.primaryIcon;

    final Color backgroundColor =
        isDarkMode ? AppColors.appBarColorDark : AppColors.appBarColor;

    return AppBar(
      centerTitle: true,
      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: onSettingsTap,
        color: iconColor,
      ),
      title: Text(
        title,
        style: titleStyle,
      ),
      backgroundColor: backgroundColor,
      actions: [
        IconButton(
          icon: const Icon(Icons.notifications),
          onPressed: onNotificationTap,
          color: iconColor,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height ?? kToolbarHeight);
}
