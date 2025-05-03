import 'package:flutter/material.dart';

var primaryColor = const Color(0xFF1b8755);
var primaryDarkColor = const Color(0xFF1daa61);

var primaryBgColor = const Color(0xFFFFFFFF);
var primaryDarkBgColor = const Color(0xFF383838);

var themeData = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.light,
    seedColor: primaryColor,
    primary: primaryColor,
    surface: primaryBgColor,
  ),
);
var darkThemeData = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: primaryDarkColor,
    primary: primaryDarkColor,
    surface: primaryDarkBgColor,
  ),
);
