import 'package:evently/common/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppThemes{
  static ThemeData lightTheme = ThemeData(
    dividerTheme: DividerThemeData(color: AppColors.mainColor),
    scaffoldBackgroundColor: AppColors.lightBgColor,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.mainColor,primary: AppColors.mainColor),
    hintColor: AppColors.grayColor,
    hoverColor: AppColors.grayColor,
    iconTheme: IconThemeData(color: AppColors.mainColor),
    appBarTheme: AppBarTheme(color: AppColors.lightBgColor,
    centerTitle: true,
      titleTextStyle: TextStyle(
        color: AppColors.mainColor,
        fontWeight: FontWeight.w500,
        fontSize: 22,
      ),
    ),
textTheme: _getTextTheme(AppColors.lightTextColor),
  );
////////////////////////////////////////////////////////////////////////////////////
  static ThemeData darkTheme = ThemeData(
    dividerTheme: DividerThemeData(color: AppColors.mainColor),
    scaffoldBackgroundColor: AppColors.darkBgColor,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.mainColor,primary: AppColors.mainColor),
    hintColor: AppColors.mainColor,
    hoverColor: AppColors.darkTextColor,
    iconTheme: IconThemeData(color: AppColors.mainColor),
    appBarTheme: AppBarTheme(color: AppColors.darkBgColor,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: AppColors.mainColor,
        fontWeight: FontWeight.w500,
        fontSize: 22,
      ),
    ),
    textTheme: _getTextTheme(AppColors.darkTextColor),
  );

}
TextTheme _getTextTheme(Color textColor){
  return TextTheme(
    labelSmall: TextStyle(
      color: textColor,
      fontSize: 10,
      fontWeight: FontWeight.w400,
    ),
    labelLarge: TextStyle(
      color: textColor,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    bodySmall: TextStyle(
      color: textColor,
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
    bodyMedium: TextStyle(
      color: textColor,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    bodyLarge: TextStyle(
      color: textColor,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    titleSmall: TextStyle(
      color: textColor,
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
    titleMedium: TextStyle(
      color: textColor,
      fontSize: 16,
      fontWeight: FontWeight.w500,
    ),
    titleLarge: TextStyle(
      color: textColor,
      fontSize: 22,
      fontWeight: FontWeight.w500,
    ),
  );
}