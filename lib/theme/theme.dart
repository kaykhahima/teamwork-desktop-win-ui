import 'package:flutter/material.dart';

const colorPrimary = Color(0xff0560fd);
const colorDark = Color(0xff25252b);
const colorLight = Color(0xffffffff);
const colorGray100 = Color(0xff686b79);
const colorGray80 = Color(0xff9fa1ad);
const colorGray60 = Color(0xfff4f4f4);
const colorAlert = Color(0xffd7575d);
const colorWarning = Color(0xffe86825);
const colorSuccess = Color(0xff28d380);
const colorPinBox = Color(0xffc5bcca);
const fontFamily = 'circular-std';

ThemeData teamWorkTheme = ThemeData(
  primaryColor: colorPrimary,
  fontFamily: fontFamily,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(
        fontFamily: fontFamily,
        fontWeight: FontWeight.w500,
        fontSize: 14,
      )),
      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
        const EdgeInsets.symmetric(horizontal: 32.0, vertical: 18.0),
      ),
      shape: MaterialStateProperty.all<OutlinedBorder>(
        const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
      ),
      backgroundColor: MaterialStateProperty.all<Color>(colorPrimary),
      minimumSize: MaterialStateProperty.all<Size>(
        const Size.fromHeight(48.0),
      ),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      textStyle: MaterialStateProperty.all<TextStyle>(
        const TextStyle(
          fontFamily: fontFamily,
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
      ),
      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
        const EdgeInsets.symmetric(horizontal: 32.0, vertical: 12.0),
      ),
      shape: MaterialStateProperty.all<OutlinedBorder>(
        const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(4.0),
          ),
        ),
      ),
      side: MaterialStateProperty.all<BorderSide>(const BorderSide(
        color: colorPrimary,
        width: 1,
      )),
      minimumSize: MaterialStateProperty.all<Size>(
        const Size.fromHeight(48.0),
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    contentPadding:
    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(4.0),
      borderSide: const BorderSide(color: colorGray60, width: 2.0),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(4.0),
      borderSide: const BorderSide(color: colorPrimary, width: 2.0),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(4.0),
      borderSide: const BorderSide(color: colorAlert, width: 2.0),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(4.0),
      borderSide: const BorderSide(color: colorAlert, width: 2.0),
    ),
    hintStyle: const TextStyle(
      fontSize: 16.0,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      color: colorGray60,
    ),
  ),
  radioTheme: RadioThemeData(
    fillColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return colorPrimary;
        } else if (states.contains(MaterialState.disabled)) {
          return colorGray60;
        }
        return colorGray60;
      },
    ),
  ),
  textTheme: const TextTheme(
    subtitle1: TextStyle(
      fontSize: 12.0,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      color: colorGray80,
    ),
    bodyText1: TextStyle(
      fontSize: 16.0,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      color: colorGray100,
    ),
    bodyText2: TextStyle(
      fontSize: 14.0,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      color: colorGray100,
    ),
    headline2: TextStyle(
      fontSize: 32.0,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
      color: colorLight,
    ),
    headline3: TextStyle(
      fontSize: 20.0,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
      color: colorGray100,
    ),
    headline4: TextStyle(
      fontSize: 18.0,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
      color: colorDark,
    ),
    headline5: TextStyle(
      fontSize: 16.0,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w600,
      color: colorGray100,
    ),
    headline6: TextStyle(
      fontSize: 14.0,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w600,
      color: colorGray100,
    ),
  ),
);
