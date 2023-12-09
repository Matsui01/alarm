import 'package:alarm/design/design.dart';
import 'package:flutter/material.dart';

ThemeData get light {
  return ThemeData(
    useMaterial3: true,
    textTheme: const TextTheme(),
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.dark,
      seedColor: AppColors.primary,
    ),
    scaffoldBackgroundColor: AppColors.primary,
    appBarTheme: const AppBarTheme(
      surfaceTintColor: AppColors.primary,
      backgroundColor: AppColors.primary,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      showUnselectedLabels: true,
    ),
  );
}
