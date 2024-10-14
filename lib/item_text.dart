import 'package:flutter/material.dart';
import 'package:landing_page/button_style.dart';

class ItemText extends StatelessWidget {
  final bool isSelected;
  final String text;
  final VoidCallback onPressed;

  ItemText({
    required this.isSelected,
    required this.text,
    required this.onPressed,
    required String role,
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
          style: defaultTextStyle,
        ),
        decoration: isSelected ? navTextUnderLine : null,
      ),
    );
  }
}
