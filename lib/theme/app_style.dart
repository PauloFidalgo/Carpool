import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppStyle {
  static get singleLineHeight => 1.0;

  static TextStyle get h1Light => TextStyle(
    fontFamily: 'Mulish',
    fontWeight: FontWeight.bold,
    fontSize: 22,
    color: AppColors.titleColor,
  );

  static TextStyle get h1Dark => TextStyle( 
    fontFamily: 'Mulish',
    fontWeight: FontWeight.bold,
    fontSize: 22,
    color: AppColors.titleColorDark,
  );

  static TextStyle get h2Light => TextStyle(
    fontFamily: 'Mulish',
    fontWeight: FontWeight.bold,
    fontSize: 18,
    color: AppColors.titleColor,
  );


  static TextStyle get h2Dark => TextStyle(
    fontFamily: 'Mulish',
    fontWeight: FontWeight.bold,
    fontSize: 18,
    color: AppColors.titleColorDark,
  );


  static TextStyle get h3Light => TextStyle(
    fontFamily: 'Mulish',
    fontWeight: FontWeight.bold,
    fontSize: 16,
    color: AppColors.titleColor,
  );

  static TextStyle get h3Dark => TextStyle(
    fontFamily: 'Mulish',
    fontWeight: FontWeight.bold,
    fontSize: 16,
    color: AppColors.titleColorDark,
  );

  static TextStyle get primaryButtonLight => TextStyle(
    fontFamily: 'Mulish',
    fontWeight: FontWeight.w500,
    fontSize: 13,
    color: AppColors.primaryButtonText,
  );

  static TextStyle get primaryButtonDark => TextStyle(
    fontFamily: 'Mulish',
    fontWeight: FontWeight.w500,
    fontSize: 13,
    color: AppColors.primaryButtonTextDark,
  );

  static TextStyle get secondaryButtonLight => TextStyle(
    fontFamily: 'Mulish',
    fontWeight: FontWeight.w500,
    fontSize: 13,
    color: AppColors.secondaryButtonText,
  );

  static TextStyle get secondaryButtonDark => TextStyle(
    fontFamily: 'Mulish',
    fontWeight: FontWeight.w500,
    fontSize: 13,
    color: AppColors.secondaryButtonTextDark,
  );

  static TextStyle get bodyLight => TextStyle(
    fontFamily: 'Mulish',
    fontWeight: FontWeight.normal,
    fontSize: 11,
    color: AppColors.textColor,
  ); 

  static TextStyle get bodyDark => TextStyle(
    fontFamily: 'Mulish',
    fontWeight: FontWeight.normal,
    fontSize: 11,
    color: AppColors.textColorDark,
  ); 
}