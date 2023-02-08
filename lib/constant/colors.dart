import 'dart:ui';

import 'package:flutter/material.dart';

abstract class Constants {
  static const white = Color.fromARGB(255, 255, 255, 255);
  static const glassShadowOpacity=6;
  static const glassShadowBlur = 13;
  var glassBlur=ImageFilter.blur(
      sigmaX:  10,
      sigmaY:  10);
  var glassOpacity = Colors.white.withOpacity(2/100);
  static const kRounded = 12;

}
