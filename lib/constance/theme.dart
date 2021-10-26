// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/constance/constance.dart' as constance;
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static bool isLightTheme = true;

  static ThemeData getTheme() {
    if (isLightTheme) {
      return lightTheme();
    } else {
      return darkTheme();
    }
  }

  static TextTheme _buildTextTheme(TextTheme base) {
    return base.copyWith(
      subtitle1: GoogleFonts.roboto(textStyle: TextStyle(color: base.subtitle1!.color, fontSize: 15)),
      subtitle2: GoogleFonts.roboto(textStyle: TextStyle(color: base.caption!.color, fontSize: 16, fontWeight: FontWeight.w500)),
      bodyText1: GoogleFonts.roboto(textStyle: TextStyle(color: base.bodyText1!.color, fontSize: 14)),
      bodyText2: GoogleFonts.roboto(textStyle: TextStyle(color: base.bodyText2!.color, fontSize: 16)),
      button: GoogleFonts.roboto(textStyle: TextStyle(color: base.button!.color, fontSize: 14, fontWeight: FontWeight.w500)),
      headline1: GoogleFonts.roboto(textStyle: TextStyle(color: base.subtitle1!.color, fontSize: 15, fontWeight: FontWeight.w500)),
      caption: GoogleFonts.roboto(textStyle: TextStyle(color: base.caption!.color, fontSize: 12)),
      headline4: GoogleFonts.roboto(textStyle: TextStyle(color: base.headline4!.color, fontSize: 24)),
      headline3: GoogleFonts.roboto(textStyle: TextStyle(color: base.headline3!.color, fontSize: 48)),
      headline2: GoogleFonts.roboto(textStyle: TextStyle(color: base.headline2!.color, fontSize: 60)),
      headline5: GoogleFonts.roboto(textStyle: TextStyle(color: base.headline5!.color, fontSize: 24)),
      headline6: GoogleFonts.roboto(textStyle: TextStyle(color: base.headline6!.color, fontSize: 20, fontWeight: FontWeight.w500)),
      overline: GoogleFonts.roboto(textStyle: TextStyle(color: base.overline!.color, fontSize: 10)),
    );
  }

  static ThemeData lightTheme() {
    Color primaryColor = HexColor(constance.primaryColorString);
    Color secondaryColor = HexColor(constance.secondaryColorString);
    final ColorScheme colorScheme = ColorScheme.light().copyWith(
      primary: primaryColor,
      secondary: secondaryColor,
    );

    final ThemeData base = ThemeData.light();
    return base.copyWith(
        appBarTheme: AppBarTheme(color: Colors.white),
        popupMenuTheme: PopupMenuThemeData(color: Colors.white),
        iconTheme: IconThemeData(color: Color(0xff2b2b2b)),
        colorScheme: colorScheme,
        primaryColor: primaryColor,
        buttonColor: primaryColor,
        splashColor: Colors.white.withOpacity(0.1),
        hoverColor: Colors.transparent,
        splashFactory: InkRipple.splashFactory,
        highlightColor: Colors.transparent,
        accentColor: primaryColor,
        canvasColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        backgroundColor: Colors.white,
        errorColor: Colors.red,
        cursorColor: primaryColor,
        textTheme: _buildTextTheme(base.textTheme),
        primaryTextTheme: _buildTextTheme(base.textTheme),
        platform: TargetPlatform.iOS,
        indicatorColor: primaryColor,
        disabledColor: HexColor("#D5D7D8"));
  }

  static ThemeData darkTheme() {
    Color primaryColor = HexColor(constance.primaryColorString);
    Color secondaryColor = HexColor(constance.secondaryColorString);
    final ColorScheme colorScheme = ColorScheme.light().copyWith(
      primary: primaryColor,
      secondary: secondaryColor,
    );
    final ThemeData base = ThemeData.dark();
    return base.copyWith(
      appBarTheme: AppBarTheme(color: Colors.grey[850]),
      popupMenuTheme: PopupMenuThemeData(color: Colors.black),
      colorScheme: colorScheme,
      iconTheme: IconThemeData(color: Colors.white),
      primaryColor: primaryColor,
      buttonColor: primaryColor,
      indicatorColor: Colors.white,
      splashColor: Colors.white24,
      splashFactory: InkRipple.splashFactory,
      accentColor: secondaryColor,
      canvasColor: Colors.grey[900],
      backgroundColor: Colors.grey[850],
      scaffoldBackgroundColor: Colors.grey[850],
      buttonTheme: ButtonThemeData(
        colorScheme: colorScheme,
        textTheme: ButtonTextTheme.primary,
      ),
      cursorColor: primaryColor,
      textTheme: _buildTextTheme(base.textTheme),
      primaryTextTheme: _buildTextTheme(base.primaryTextTheme),
      accentTextTheme: _buildTextTheme(base.accentTextTheme),
      platform: TargetPlatform.iOS,
    );
  }
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
