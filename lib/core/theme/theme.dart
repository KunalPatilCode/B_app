import 'package:app/core/theme/app_palate.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static _border([Color color=const Color.fromARGB(255, 76, 76, 86)]) => OutlineInputBorder(
    borderSide:  BorderSide(
      color: color,
      width: 3,
    ),
    borderRadius: BorderRadius.circular(10),
  );
  static final darkThemeMode = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppPallete.backgroundColor,
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(27),
      enabledBorder: _border(),
      focusedBorder: _border(AppPallete.gradient2),
    ),
  );
}
