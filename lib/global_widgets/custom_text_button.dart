import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.onTap,
    this.title = "",
    this.iconPath = "",
    required this.color,
    this.textColor = Colors.white,
    this.borderRadius = 8.0,
    this.horizontalPad = 10,
    this.verticalPad = 10,
  });

  final VoidCallback onTap;
  final String title;
  final String iconPath;

  final Color color;
  final Color textColor;
  final double borderRadius;
  final double horizontalPad;
  final double verticalPad;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(
            vertical: verticalPad, horizontal: horizontalPad),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        backgroundColor: color,
      ),
      onPressed: onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (iconPath.isNotEmpty)
            Padding(
              padding: EdgeInsets.only(right: title.isNotEmpty ? 8 : 0),
              child: const Icon(
                Icons.sports_baseball,
                color: Colors.white,
                size: 20,
              ),
            ),
          if (title.isNotEmpty)
            Text(
              title,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: textColor,
              ),
            ),
        ],
      ),
    );
  }
}
