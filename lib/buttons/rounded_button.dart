import 'package:aquaseth/Theme/app_colors.dart';
import 'package:flutter/material.dart';

class RoundButtons extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;
  final double borderSideWidth;
  final EdgeInsetsGeometry padding;
  final double height;
  final double borderRadius;
  final TextStyle? textStyle;

  const RoundButtons({
    super.key,
    required this.text,
    required this.onPressed,
    required this.backgroundColor,
    required this.textColor,
    required this.borderColor,
    this.borderSideWidth = 0,
    this.padding = const EdgeInsets.symmetric(vertical: 16, horizontal: 50),
    this.height = 75,
    this.borderRadius = 35,
    this.textStyle,
  });

  factory RoundButtons.primary({
    required String text,
    required VoidCallback onPressed,
  }) {
    return RoundButtons(
      text: text,
      onPressed: onPressed,
      backgroundColor: AppColors.brandPrimary,
      textColor: Colors.white,
      borderColor: Colors.transparent,
      borderSideWidth: 2,
    );
  }
  factory RoundButtons.secondary({
    required String text,
    required VoidCallback onPressed,
    Color color = Colors.white,
  }) {
    return RoundButtons(
      text: text,
      onPressed: onPressed,
      backgroundColor: AppColors.alertPrimary.withOpacity(0.7),
      textColor: color,
      borderColor: color,
      borderSideWidth: 1.5,
    );
  }

  factory RoundButtons.custom({
    required String text,
    required VoidCallback onPressed,
    required Color backgroundColor,
    required Color textColor,
    Color borderColor = Colors.transparent,
    double borderSideWidth = 0,
    EdgeInsetsGeometry padding =
        const EdgeInsets.symmetric(vertical: 16, horizontal: 50),
    double height = 70,
    double borderRadius = 35,
    TextStyle? textStyle,
  }) {
    return RoundButtons(
      text: text,
      onPressed: onPressed,
      backgroundColor: backgroundColor,
      textColor: textColor,
      borderColor: borderColor,
      borderSideWidth: borderSideWidth,
      padding: padding,
      height: height,
      borderRadius: borderRadius,
      textStyle: textStyle,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: textColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          side: BorderSide(width: borderSideWidth, color: borderColor),
          padding: padding,
        ),
        child: Text(
          text,
          style: textStyle ??
              const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
