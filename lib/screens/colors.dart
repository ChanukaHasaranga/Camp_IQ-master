import 'package:flutter/material.dart';

class ColorConstants {
  static Color starterWhite = hexToColor('#3D5BB4');
  static Color primaryColor = hexToColor('#3D5BB4');
  static Color cardBackGroundColor = hexToColor('#3D5BB4');
  static Color inputHintColor = hexToColor('#3D5BB4');
}

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex));

  return Color(int.parse(hex.substring(1), radix: 16) +
      (hex.length == 7 ? 0xFF000000 : 0x00000000));
}
