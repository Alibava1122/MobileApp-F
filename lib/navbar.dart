import 'package:flutter/material.dart';
import 'package:landing_page/app_style.dart';
import 'package:landing_page/color_style.dart';
import 'package:landing_page/item_text.dart';

class NavBar extends StatefulWidget {
  final String role;
  final void Function(int n) onPressedIndex;
  final int selectedIndex;

  NavBar({
    Key? key,
    required this.onPressedIndex,
    required this.selectedIndex,
    required this.role,
  }) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  late AppStyle appStyle;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    appStyle = AppStyle(context);

    return Container(
      width: appStyle.fullScreenWidth,
      height: 110,
      color: BrandColors.greyBackground,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Image.asset(
                  'images/pink_logo.png',
                  height: 130,
                ),
              ),
              ItemText(
                isSelected: widget.selectedIndex == 0,
                text: 'Home',
                onPressed: () {
                  widget.onPressedIndex(0);
                },
                role: '',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
