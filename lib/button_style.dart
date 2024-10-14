import 'package:flutter/material.dart';
import 'package:landing_page/color_style.dart';

final TextStyle defaultTextStyle = TextStyle(
  fontSize: 14.0,
  fontWeight: FontWeight.w300,
  letterSpacing: 0.2,
  color: Colors.white,
);

final TextStyle secondTextStyle = TextStyle(
  fontSize: 14.0,
  fontWeight: FontWeight.w300,
  letterSpacing: 0.2,
  color: BrandColors.greyText,
);

final TextStyle thirdTextStyle = TextStyle(
  fontSize: 30.0,
  fontWeight: FontWeight.w300,
  letterSpacing: 0.2,
  color: Colors.black,
);

final BoxDecoration navTextUnderLine = BoxDecoration(
  border: Border(
    bottom: BorderSide(
      color: Colors.white,
      width: 1.0, // This would be the width of the underline
    ),
  ),
);

final class midHeaderTextStyle {
  const midHeaderTextStyle();
  final TextStyle style = const TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.2,
    color: Colors.black,
    fontFamily: 'OpenSans',
  );
}

final class gameItemTextStyle {
  const gameItemTextStyle();
  final TextStyle style = const TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.2,
    color: Colors.black,
    fontFamily: 'OpenSans',
  );
}
