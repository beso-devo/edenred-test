import 'package:flutter/material.dart';

///
/// GitScrum #TK-2
///
/// [ThemeColors] class is responsible for matching between the theme colors and the app colors
///
class ThemeColors {
  static Color? getAppBarColor(BuildContext context) =>
      Theme.of(context).appBarTheme.backgroundColor;

  static Color getCardTitleColor(BuildContext context) =>
      Theme.of(context).cardColor;

  static Color getBackgroundColor(BuildContext context) =>
      Theme.of(context).scaffoldBackgroundColor;

  static Color getPrimaryColor(BuildContext context) =>
      Theme.of(context).primaryColor;

  static Color getBottomNavigationBarIconColor(BuildContext context) =>
      Theme.of(context).hoverColor;

  static Color getAlertTextColor(BuildContext context) =>
      Theme.of(context).disabledColor;

  static Color getNameColor(BuildContext context) =>
      Theme.of(context).canvasColor;
}
