import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

import 'colors.dart';


class AppThemeData {
  //
  AppThemeData._();

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: scaffoldColor,
    primaryColor: const Color(0xFF100C57),
    primaryColorDark: const Color(0xFF1E1E1E),
    highlightColor: appTextColorSecondary,
    errorColor: Colors.red,
    hoverColor: Colors.white54,
    dividerColor: viewLineColor,
    cardColor: scaffoldColor,
    fontFamily: GoogleFonts.nunito().fontFamily,
    appBarTheme: const AppBarTheme(
      color: appLayout_background,
      iconTheme: IconThemeData(color: textPrimaryColor),
      systemOverlayStyle: SystemUiOverlayStyle(statusBarIconBrightness: Brightness.dark),
    ),
    textSelectionTheme: const TextSelectionThemeData(cursorColor: Colors.black),
    colorScheme: const ColorScheme.light(primary: appColorPrimary, primaryVariant: appColorPrimary),
    cardTheme: const CardTheme(color: Colors.white),
    iconTheme: const IconThemeData(color: textPrimaryColor),
    bottomSheetTheme: const BottomSheetThemeData(backgroundColor: whiteColor),
    textTheme: const TextTheme(
      button: TextStyle(color: appColorPrimary),
      headline6: TextStyle(color: textPrimaryColor),
      subtitle2: TextStyle(color: textSecondaryColor),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  ).copyWith(
    pageTransitionsTheme: const PageTransitionsTheme(builders: <TargetPlatform, PageTransitionsBuilder>{
      TargetPlatform.android: OpenUpwardsPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      TargetPlatform.linux: ZoomPageTransitionsBuilder(),
      TargetPlatform.macOS: ZoomPageTransitionsBuilder(),
    }),
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xFF1E1E1E),
    highlightColor: appBackgroundColorDark,
    errorColor: const Color(0xFFCF6676),
    appBarTheme: const AppBarTheme(
      color: appBackgroundColorDark,
      iconTheme: IconThemeData(color: Colors.black54),
      systemOverlayStyle: SystemUiOverlayStyle(statusBarIconBrightness: Brightness.dark),
    ),
    primaryColor: color_primary_black,
    hintColor: whiteColor,
    dividerColor: const Color(0xFFDADADA).withOpacity(0.3),
    primaryColorDark: color_primary_black,
    textSelectionTheme: const TextSelectionThemeData(cursorColor: Colors.white),
    hoverColor: Colors.black12,
    fontFamily: GoogleFonts.nunito().fontFamily,
    bottomSheetTheme: const BottomSheetThemeData(backgroundColor: appBackgroundColorDark),
    primaryTextTheme: TextTheme(headline6: primaryTextStyle(color: Colors.white), overline: primaryTextStyle(color: Colors.white)),
    colorScheme: const ColorScheme.dark(primary: appBackgroundColorDark, onPrimary: cardBackgroundBlackDark, primaryVariant: color_primary_black),
    cardTheme: const CardTheme(color: cardBackgroundBlackDark),
    iconTheme: const IconThemeData(color: whiteColor),
    textTheme: const TextTheme(
      button: TextStyle(color: color_primary_black),
      headline6: TextStyle(color: whiteColor),
      subtitle2: TextStyle(color: Colors.white54),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  ).copyWith(
    pageTransitionsTheme: const PageTransitionsTheme(builders: <TargetPlatform, PageTransitionsBuilder>{
      TargetPlatform.android: OpenUpwardsPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      TargetPlatform.linux: ZoomPageTransitionsBuilder(),
      TargetPlatform.macOS: ZoomPageTransitionsBuilder(),
    }),
  );


}
