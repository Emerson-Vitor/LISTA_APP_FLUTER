import 'package:flutter/material.dart';
part 'color_schemes.g.dart';

ThemeData get lightTheme => ThemeData(
  useMaterial3: true,
  colorScheme: _lightColorScheme,
  appBarTheme: AppBarTheme(
    centerTitle: true,
    backgroundColor: _lightColorScheme.primaryContainer,
    foregroundColor: _lightColorScheme.onPrimaryContainer,
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: _lightColorScheme.primary,
    foregroundColor: _lightColorScheme.onPrimary,
  ),
  segmentedButtonTheme: _segmentedButtonTheme,
);

ThemeData get darkTheme => ThemeData(
  useMaterial3: true,
  colorScheme: _darkColorScheme,
  appBarTheme: AppBarTheme(
    centerTitle: true,
    backgroundColor: _darkColorScheme.primaryContainer,
    foregroundColor: _darkColorScheme.onPrimaryContainer,
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: _darkColorScheme.primary,
    foregroundColor: _darkColorScheme.onPrimary,
  ),
  segmentedButtonTheme: _segmentedButtonTheme,
);

SegmentedButtonThemeData get _segmentedButtonTheme => SegmentedButtonThemeData(
  style: ButtonStyle(

    padding: MaterialStateProperty.all(const EdgeInsets.fromLTRB(8, -5, 8, -5)),
    iconSize: MaterialStateProperty.all(13),
    textStyle: MaterialStateProperty.resolveWith<TextStyle?>((states) {
      if (states.contains(MaterialState.selected)) {
        return const TextStyle(fontSize: 11, fontWeight: FontWeight.bold);
      }
      else{
        return const TextStyle(fontSize: 12);
      }

    }),
  ),
);
