import 'package:flutter/material.dart';
import 'package:landing_page/button_style.dart';

class ItemText2 extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  ItemText2({
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: AnimatedContainer(
        padding: EdgeInsets.only(
          bottom: 3,
        ),
        duration: Duration(milliseconds: 500),
        child: Text(
          text,
          style: secondTextStyle,
        ),
      ),
    );
  }
}
