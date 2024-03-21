import 'package:carpool/theme/app_style.dart';
import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class CarpoolButton extends StatelessWidget {

  final VoidCallback onTap;
  final String title;
  final bool enabled;
  final Widget? leading;
  final Widget? trailingWidget;
  final Color backgroundColor;
  final TextStyle textStyle;

  const CarpoolButton({
    super.key,
    required this.title,
    required this.onTap,
    this.enabled = true,
    this.leading,
    this.trailingWidget,
    required this.backgroundColor,
    required this.textStyle,
  });

  factory CarpoolButton.primary({
    required String title,
    required VoidCallback onTap,
    bool enabled = true,
    Widget? leading,
    Widget? trailingWidget,
    TextStyle? textStyle,
    Color? backgroundColor,
  }) {
    return CarpoolButton(
      title: title,
      enabled: enabled,
      leading: leading,
      backgroundColor: AppColors.primaryButton,
      trailingWidget: trailingWidget,
      textStyle: AppStyle.primaryButtonLight,
      onTap: onTap,
    );
  }

  factory CarpoolButton.primaryDark({
    required String title,
    required VoidCallback onTap,
    bool enabled = true,
    Widget? leading,
    Widget? trailingWidget,
    TextStyle? textStyle,
    Color? backgroundColor,
  }) {
    return CarpoolButton(
      title: title,
      enabled: enabled,
      textStyle: AppStyle.primaryButtonDark,
      backgroundColor: AppColors.primaryButtonDark,
      leading: leading,
      trailingWidget: trailingWidget,
      onTap: onTap,
    );
  }

  factory CarpoolButton.secondary({
    required String title,
    required VoidCallback onTap,
    bool enabled = true,
    Widget? leading,
    Widget? trailingWidget,
    TextStyle? textStyle,
    Color? backgroundColor,
  }) {
    return CarpoolButton(
      title: title,
      enabled: enabled,
      textStyle: AppStyle.secondaryButtonLight,
      backgroundColor: AppColors.secondaryButton,
      leading: leading,
      trailingWidget: trailingWidget,
      onTap: onTap,
    );
  }

  factory CarpoolButton.secondaryDark({
    required String title,
    required VoidCallback onTap,
    bool enabled = true,
    Widget? leading,
    Widget? trailingWidget,
    TextStyle? textStyle,
    Color? backgroundColor,
  }) {
    return CarpoolButton(
      title: title,
      enabled: enabled,
      textStyle: AppStyle.secondaryButtonDark,
      backgroundColor: AppColors.secondaryButtonDark,
      leading: leading,
      trailingWidget: trailingWidget,
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    const double borderRadius =  16;

    return SizedBox(
      height: 36,
      child: RawMaterialButton(
        fillColor: backgroundColor,
        onPressed: enabled
            ? () {
                onTap();
              }
            : null,
        elevation: 0,
        disabledElevation: 0,
        focusElevation: 0,
        highlightElevation: 0,
        hoverElevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(width: 12.0),
            leading ?? const SizedBox(),
            leading != null ? const SizedBox(width: 4) : const SizedBox(),
            Flexible(
              fit: FlexFit.loose,
              child: Text(
                title,
                maxLines: 1,
                softWrap: false,
                overflow: TextOverflow.fade,
                style: textStyle,
                textAlign: TextAlign.center,
              ),
            ),
            trailingWidget ?? const SizedBox(),
            const SizedBox(width: 12.0),
          ],
        ),
      ),
    );
  }
}
