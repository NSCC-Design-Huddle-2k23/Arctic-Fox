import 'dart:ui';

import 'package:flutter/material.dart';

abstract class Constants {
  static Color contrast = const Color(0x7045167e);
  static Color primary = const Color(0xFFCBC1DA);
  static const white = Color.fromARGB(255, 255, 255, 255);
  static const glassShadowOpacity = 6;
  static const glassShadowBlur = 13;
  static var glassBlur = ImageFilter.blur(sigmaX: 10, sigmaY: 10);
  static var glassOpacity = Colors.white.withOpacity(2 / 100);
  static const double kRounded = 12;
  static Offset kShadowOffset = const Offset(0, 3);
}
