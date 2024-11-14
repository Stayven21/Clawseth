import 'package:flutter/material.dart';

class AppTextStyle {
  static TextStyle headline1({Color color = Colors.black}) {
    return TextStyle(
      fontFamily: 'Inter',
      fontWeight: FontWeight.bold,
      fontSize: 35,
      height: 1.0,
      letterSpacing: 0.0,
      color: color,
    );
  }

  static TextStyle headline2({Color color = Colors.black}) {
    return TextStyle(
      fontFamily: 'Inter',
      fontWeight: FontWeight.bold,
      fontSize: 25,
      height: 1.0,
      letterSpacing: 0.0,
      color: color,
    );
  }

  static TextStyle headline3({Color color = Colors.black}) {
    return TextStyle(
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
      fontSize: 20,
      height: 1.0,
      letterSpacing: 0.0,
      color: color,
    );
  }

  // Body Text Style
  static TextStyle bodyText({Color color = Colors.black}) {
    return TextStyle(
      fontFamily: 'Inter',
      fontWeight: FontWeight.normal,
      fontSize: 17,
      height: 1.0,
      letterSpacing: 0.0,
      color: color,
    );
  }

  // Small Text Styles
  static TextStyle smallText15({Color color = Colors.black}) {
    return TextStyle(
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
      fontSize: 15,
      height: 1.0,
      letterSpacing: 0.0,
      color: color,
    );
  }

  static TextStyle smallText12({Color color = Colors.black}) {
    return TextStyle(
      fontFamily: 'Inter',
      fontWeight: FontWeight.normal,
      fontSize: 12,
      height: 1.0,
      letterSpacing: 0.0,
      color: color,
    );
  }

  static TextStyle smallText10({Color color = Colors.black}) {
    return TextStyle(
      fontFamily: 'Inter',
      fontWeight: FontWeight.normal,
      fontSize: 10,
      height: 1.0,
      letterSpacing: 0.0,
      color: color,
    );
  }
}

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Divider(
            thickness: 1.0,
            color: Colors.grey[300],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            'or',
            style:
                AppTextStyle.bodyText(color: Colors.grey), // Use AppTextStyle
          ),
        ),
        Expanded(
          child: Divider(
            thickness: 1.0,
            color: Colors.grey[300],
          ),
        ),
      ],
    );
  }
}
