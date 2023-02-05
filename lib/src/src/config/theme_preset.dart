import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

class ThemePreset {
  static ThemeData get flexLight => _flexLight;
  static ThemeData get flexDark => _flexDark;
  static final ThemeData _flexLight = FlexThemeData.light(
    scheme: FlexScheme.ebonyClay,
    surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
    blendLevel: 40,
    appBarStyle: FlexAppBarStyle.primary,
    appBarOpacity: 0.86,
    appBarElevation: 0,
    transparentStatusBar: true,
    tabBarStyle: FlexTabBarStyle.universal,
    tooltipsMatchBackground: true,
    swapColors: false,
    lightIsWhite: false,
    useSubThemes: true,
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    // To use playground font, add GoogleFonts package and uncomment:
    // fontFamily: GoogleFonts.notoSans().fontFamily,
    subThemesData: const FlexSubThemesData(
      useTextTheme: true,
      fabUseShape: true,
      interactionEffects: true,
      bottomNavigationBarElevation: 0,
      bottomNavigationBarOpacity: 0.95,
      navigationBarOpacity: 0.95,
      navigationBarMutedUnselectedText: true,
      navigationBarMutedUnselectedIcon: true,
      inputDecoratorIsFilled: true,
      inputDecoratorBorderType: FlexInputBorderType.outline,
      inputDecoratorUnfocusedHasBorder: true,
      blendOnColors: true,
      blendTextTheme: true,
      popupMenuOpacity: 0.95,
    ),
  );
  static final ThemeData _flexDark = FlexThemeData.dark(
    scheme: FlexScheme.ebonyClay,
    surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
    blendLevel: 40,
    appBarStyle: FlexAppBarStyle.background,
    appBarOpacity: 0.86,
    appBarElevation: 0,
    transparentStatusBar: true,
    tabBarStyle: FlexTabBarStyle.universal,
    tooltipsMatchBackground: true,
    swapColors: false,
    darkIsTrueBlack: true,
    useSubThemes: true,
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    // To use playground font, add GoogleFonts package and uncomment:
    // fontFamily: GoogleFonts.notoSans().fontFamily,
    subThemesData: const FlexSubThemesData(
      useTextTheme: true,
      fabUseShape: true,
      interactionEffects: true,
      bottomNavigationBarElevation: 0,
      bottomNavigationBarOpacity: 0.95,
      navigationBarOpacity: 0.95,
      navigationBarMutedUnselectedText: true,
      navigationBarMutedUnselectedIcon: true,
      inputDecoratorIsFilled: true,
      inputDecoratorBorderType: FlexInputBorderType.outline,
      inputDecoratorUnfocusedHasBorder: true,
      blendOnColors: true,
      blendTextTheme: true,
      popupMenuOpacity: 0.95,
    ),
  );
}
