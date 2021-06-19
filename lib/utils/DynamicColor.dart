import 'package:flutter/material.dart';

class DynamicColor {
  const DynamicColor._();

  static Color withBrightness({
    required BuildContext context,
    required Color color,
    Color? darkColor,
  }) {
    if (darkColor == null) return color;
    if (Theme.of(context).brightness == Brightness.dark) return darkColor;
    return color;
  }
}
