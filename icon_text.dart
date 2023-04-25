import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class IconsText extends StatelessWidget {
  final IconData icon;
  final String text;
  const IconsText({Key? key, required this.icon, required this.text})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Row(children: [
          Icon(icon, color: Color(0xFFBFC2DF)),
          SizedBox(
            width: 15,
          ),
          Text(
            text,
            style: Styles.textStyle,
          )
        ]));
  }
}
