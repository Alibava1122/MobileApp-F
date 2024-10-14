import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:landing_page/app_style.dart';
import 'package:landing_page/button_style.dart';
import 'package:landing_page/color_style.dart';
import 'package:landing_page/text_content.dart';

class LandingPageDesktop extends StatefulWidget {
  LandingPageDesktop({super.key});

  @override
  State<LandingPageDesktop> createState() => _LandingPageDesktopState();
}

class _LandingPageDesktopState extends State<LandingPageDesktop> {
  late AppStyle appStyle;

  @override
  void initState() {
    Logger.Green.log("Landing page is initialising...");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    appStyle = AppStyle(context);
    return Container(
      height: appStyle.landingPageHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  SvgPicture.asset(
                    'images/landing_page_background_2.svg',
                    width: appStyle.fullScreenWidth,
                    alignment: Alignment.topLeft,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: appStyle.textContainerHeight,
                        width: appStyle.textContainerWidth,
                        margin: EdgeInsets.only(
                          right: appStyle.textContainerRight,
                          left: appStyle.textContainerLeft,
                          top: appStyle.textContainerStartTop,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Do you want to go jogging while playing entertaining games!',
                              style: TextStyle(
                                fontSize: appStyle.fontSize1,
                                color: BrandColors.greyText,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: BrandColors.blueBackground,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(32))),
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text(
                                  'Download PlayJogger Now!',
                                  style: TextStyle(
                                    fontSize: appStyle.fontSize1,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        right: appStyle.storeButtonPadding),
                                    child: Image.asset(
                                      'images/appstore_button.png',
                                      width: appStyle.storeButtonWidth,
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    'images/playstore_button.png',
                                    width: appStyle.storeButtonWidth,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 75),
                        child: Image.asset(
                          'images/games_page.png',
                          height: appStyle.phoneImageHeight,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 42,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: appStyle.textContainerHeight,
                    width: appStyle.textContainer2Width,
                    margin: EdgeInsets.only(
                      right: appStyle.textContainerRight,
                      left: appStyle.textContainerLeft,
                      top: appStyle.textContainerStartTop,
                    ),
                    child: Text(
                      Content.landingPageText1,
                      style: thirdTextStyle,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 75),
                    child: Image.asset(
                      'images/laptop.png',
                      width: appStyle.landingPageImageWidth,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: appStyle.textContainerHeight,
                    width: appStyle.textContainer2Width,
                    margin: EdgeInsets.only(
                      right: appStyle.textContainerRight,
                      left: appStyle.textContainerLeft,
                      top: appStyle.textContainerStartTop,
                    ),
                    child: Text(
                      Content.landingPageText2,
                      style: thirdTextStyle,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 75),
                    child: Image.asset(
                      'images/laptop.png',
                      width: appStyle.landingPageImageWidth,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: appStyle.textContainerHeight,
                    width: appStyle.textContainer2Width,
                    margin: EdgeInsets.only(
                      right: appStyle.textContainerRight,
                      left: appStyle.textContainerLeft,
                      top: appStyle.textContainerStartTop,
                    ),
                    child: Text(
                      Content.landingPageText3,
                      style: thirdTextStyle,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 75),
                    child: Image.asset(
                      'images/laptop.png',
                      width: appStyle.landingPageImageWidth,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Stack(
            children: [
              SvgPicture.asset(
                'images/landing_page_background_3.svg',
                width: appStyle.fullScreenWidth,
                alignment: Alignment.bottomRight,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 250),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: appStyle.textContainer2Height,
                      width: appStyle.textContainerWidth,
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(
                        right: appStyle.textContainerRight,
                        left: appStyle.textContainerEndLeft,
                        top: appStyle.textContainerEndTop,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Enter the world of adventure ' +
                                'while getting benefits of exercise!',
                            style: TextStyle(
                              fontSize: appStyle.fontSize3,
                              color: BrandColors.greyText,
                            ),
                          ),
                          Text(
                            'Download PlayJogger Now!',
                            style: TextStyle(
                              fontSize: appStyle.fontSize3,
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      right: appStyle.storeButtonPadding),
                                  child: Image.asset(
                                    'images/appstore_button.png',
                                    width: appStyle.storeButtonWidth,
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Image.asset(
                                  'images/playstore_button.png',
                                  width: appStyle.storeButtonWidth,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: appStyle.landingPageEndPaddingTop),
                      child: Image.asset(
                        'images/home_screen_cropped.png',
                        height: appStyle.phone2ImageHeight,
                        alignment: Alignment.bottomCenter,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

enum Logger {
  Black("30"),
  Red("31"),
  Green("32"),
  Yellow("33"),
  Blue("34"),
  Magenta("35"),
  Cyan("36"),
  White("37");

  final String code;
  const Logger(this.code);

  void log(dynamic text) =>
      print('\x1B[' + code + 'm' + text.toString() + '\x1B[0m');
}
