import 'package:flutter/material.dart';

final class AppChatTheme {
  static const blueColor = Colors.blue;
  static const lighBlueColor = Color.fromARGB(255, 217, 228, 237);
  static const blackColor = Colors.black;
  //static const lighGrayColor = Color(0xFFFFFEFE9);

  static final _defaultInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: const BorderSide(color: lighBlueColor),
  );

  static final lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: lighBlueColor),
    useMaterial3: true,
    fontFamily: 'Montserrat',
    scaffoldBackgroundColor: lighBlueColor,
    inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: lighBlueColor,
        labelStyle: const TextStyle(
          fontSize: 14,
          color: blueColor,
          fontWeight: FontWeight.w700,
        ),
        floatingLabelStyle:
            const TextStyle(color: blueColor, fontWeight: FontWeight.w600),
        enabledBorder: _defaultInputBorder,
        focusedBorder: _defaultInputBorder,
        border: _defaultInputBorder,
        errorBorder: _defaultInputBorder.copyWith(
            borderSide: const BorderSide(color: Colors.red))),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: blueColor,
          foregroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          textStyle: const TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 14,
              fontWeight: FontWeight.w700)),
    ),
  );

  static final darkTheme = lightTheme;

  static const titleStyle = TextStyle(
    color: blueColor,
    fontSize: 32,
    fontWeight: FontWeight.w900,
  );

  static const titleSmallStyle = TextStyle(
    color: blueColor,
    fontSize: 24,
    fontWeight: FontWeight.w900,
  );
  static const subTitleStyle = TextStyle(
    color: blueColor,
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
}
