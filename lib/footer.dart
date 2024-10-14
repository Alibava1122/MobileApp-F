import 'package:flutter/material.dart';
import 'package:landing_page/app_style.dart';
import 'package:landing_page/color_style.dart';

class Footer extends StatefulWidget {
  final void Function(int n) onPressedIndex;
  final int selectedIndex;

  Footer({
    super.key,
    required this.onPressedIndex,
    required this.selectedIndex,
  });

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  late AppStyle appStyle;

  @override
  Widget build(BuildContext context) {
    appStyle = AppStyle(context);
    return Container(
      height: appStyle.footerHeight,
      width: double.infinity,
      color: BrandColors.greyBackground,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 20,
                      right: 20.0,
                      left: 20.0,
                      bottom: 20.0,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Image.asset(
                          'images/pink_logo.png',
                          height: 85,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 20.0,
                      right: 20.0,
                      left: 20.0,
                      bottom: 20.0,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                            bottom: 10.0,
                            left: 12,
                            top: 15,
                          ),
                          child: Text(
                            'Company',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Download the App:',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      height: 160,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Image.asset(
                            'images/appstore_button.png',
                            width: 150.0,
                          ),
                          Image.asset(
                            'images/playstore_button.png',
                            width: 150.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              '\u00a9 playjogger, all rights reserved',
              style: TextStyle(
                fontSize: 12.0,
                color: BrandColors.greyText,
              ),
            ),
          )
        ],
      ),
    );
  }
}
