import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';

class AppStyle {
  int sizeIndex = 0;
  AppStyle(BuildContext context) {
    if (Breakpoints.small.isActive(context)) {
      sizeIndex = 2;
    } else if (Breakpoints.medium.isActive(context)) {
      sizeIndex = 1;
    } else {
      sizeIndex = 0;
    }
  }

  List<SizeModel> sizeList = [
    SizeModel(
      fullScreenWidth: 2000,
      textContainerHeight: 550,
      textContainer2Height: 450,
      textContainerWidth: 600,
      textContainer2Width: 500,
      textContainerStartTop: 75,
      textContainerLeft: 10,
      textContainerEndLeft: 10,
      fontSize1: 40,
      fontSize2: 24,
      fontSize3: 30,
      storeButtonWidth: 200,
      storeButtonPadding: 25,
      textContainerRight: 40,
      phoneImageHeight: 800,
      footerHeight: 420,
      landingPageImageWidth: 300,
      landingPageHeight: 3500,
      textContainerEndTop: 320,
      phone2ImageHeight: 600,
      landingPageEndPaddingTop: 75,
      GameLinkLeft: 20.0,
      GameLinkRight: 20.0,
      GameLinkImageWidth: 350,
      GameHeader: 60,
    ),
    SizeModel(
      fullScreenWidth: 900,
      textContainerHeight: 420,
      textContainer2Height: 400,
      textContainerWidth: 480,
      textContainer2Width: 400,
      textContainerStartTop: 55,
      textContainerLeft: 5,
      textContainerEndLeft: 20,
      fontSize1: 32,
      fontSize2: 20,
      fontSize3: 20,
      storeButtonWidth: 140,
      storeButtonPadding: 20,
      textContainerRight: 5,
      phoneImageHeight: 420,
      footerHeight: 420,
      landingPageImageWidth: 250,
      landingPageHeight: 2000,
      textContainerEndTop: 320,
      phone2ImageHeight: 450,
      landingPageEndPaddingTop: 36,
      GameLinkLeft: 10,
      GameLinkRight: 10,
      GameLinkImageWidth: 300,
      GameHeader: 45,
    ),
    SizeModel(
      fullScreenWidth: 550,
      textContainerHeight: 420,
      textContainer2Height: 250,
      textContainerWidth: 396,
      textContainer2Width: 350,
      textContainerStartTop: 42,
      textContainerLeft: 5,
      textContainerEndLeft: 5,
      fontSize1: 20,
      fontSize2: 18,
      fontSize3: 16,
      storeButtonWidth: 120,
      storeButtonPadding: 17.5,
      textContainerRight: 0.0,
      phoneImageHeight: 0.0,
      footerHeight: 1200,
      landingPageImageWidth: 230,
      landingPageHeight: 2000,
      textContainerEndTop: 140,
      phone2ImageHeight: 0.0,
      landingPageEndPaddingTop: 0.0,
      GameLinkLeft: 0.0,
      GameLinkRight: 0.0,
      GameLinkImageWidth: 250,
      GameHeader: 35,
    ),
  ];

  late final double fullScreenWidth = sizeList[sizeIndex].fullScreenWidth;
  late final double textContainerWidth = sizeList[sizeIndex].textContainerWidth;
  late final double textContainer2Width =
      sizeList[sizeIndex].textContainer2Width;
  late final double textContainerHeight =
      sizeList[sizeIndex].textContainerHeight;
  late final double textContainer2Height =
      sizeList[sizeIndex].textContainer2Height;
  late final double textContainerStartTop =
      sizeList[sizeIndex].textContainerStartTop;
  late final double textContainerLeft = sizeList[sizeIndex].textContainerLeft;
  late final double fontSize1 = sizeList[sizeIndex].fontSize1;
  late final double fontSize2 = sizeList[sizeIndex].fontSize2;
  late final double storeButtonWidth = sizeList[sizeIndex].storeButtonWidth;
  late final double storeButtonPadding = sizeList[sizeIndex].storeButtonPadding;
  late final double textContainerRight = sizeList[sizeIndex].textContainerRight;
  late final double phoneImageHeight = sizeList[sizeIndex].phoneImageHeight;
  late final double footerHeight = sizeList[sizeIndex].footerHeight;
  late final double landingPageImageWidth =
      sizeList[sizeIndex].landingPageImageWidth;
  late final double landingPageHeight = sizeList[sizeIndex].landingPageHeight;
  late final double textContainerEndTop =
      sizeList[sizeIndex].textContainerEndTop;
  late final double phone2ImageHeight = sizeList[sizeIndex].phone2ImageHeight;
  late final double fontSize3 = sizeList[sizeIndex].fontSize3;
  late final double landingPageEndPaddingTop =
      sizeList[sizeIndex].landingPageEndPaddingTop;
  late final double textContainerEndLeft =
      sizeList[sizeIndex].textContainerEndLeft;
  late final double GameLinkLeft = sizeList[sizeIndex].GameLinkLeft;
  late final double GameLinkRight = sizeList[sizeIndex].GameLinkRight;
  late final double GameLinkImageWidth = sizeList[sizeIndex].GameLinkImageWidth;
  late final double GameHeader = sizeList[sizeIndex].GameHeader;
}

class SizeModel {
  SizeModel({
    required this.phone2ImageHeight,
    required this.fullScreenWidth,
    required this.textContainerHeight,
    required this.textContainer2Height,
    required this.textContainerWidth,
    required this.textContainer2Width,
    required this.textContainerStartTop,
    required this.textContainerEndTop,
    required this.textContainerLeft,
    required this.textContainerRight,
    required this.fontSize1,
    required this.fontSize2,
    required this.fontSize3,
    required this.storeButtonWidth,
    required this.storeButtonPadding,
    required this.phoneImageHeight,
    required this.footerHeight,
    required this.landingPageImageWidth,
    required this.landingPageHeight,
    required this.landingPageEndPaddingTop,
    required this.textContainerEndLeft,
    required this.GameLinkLeft,
    required this.GameLinkRight,
    required this.GameLinkImageWidth,
    required this.GameHeader,
  });

  final double fullScreenWidth;
  final double textContainerHeight;
  final double textContainer2Height;
  final double textContainerWidth;
  final double textContainer2Width;
  final double textContainerStartTop;
  final double textContainerLeft;
  final double fontSize1;
  final double fontSize2;
  final double storeButtonWidth;
  final double storeButtonPadding;
  final double textContainerRight;
  final double phoneImageHeight;
  final double phone2ImageHeight;
  final double footerHeight;
  final double landingPageImageWidth;
  final double landingPageHeight;
  final double textContainerEndTop;
  final double fontSize3;
  final double landingPageEndPaddingTop;
  final double textContainerEndLeft;
  final double GameLinkLeft;
  final double GameLinkRight;
  final double GameLinkImageWidth;
  final double GameHeader;
}
