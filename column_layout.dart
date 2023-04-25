import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class columnLayout extends StatelessWidget {
  final String first;
  final String firstUnder;
  final String second;
  final String secondUnder;
  final bool? iscolor;
  const columnLayout(
      {Key? key,
      required this.first,
      required this.firstUnder,
      required this.second,
      required this.secondUnder,
      required this.iscolor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration:
          BoxDecoration(color: iscolor == null ? Colors.white : Styles.bgColor),
      padding: EdgeInsets.only(
          left: iscolor == null ? 16 : 0,
          top: 10,
          right: iscolor == null ? 16 : 0,
          bottom: 16),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  first,
                  style: Styles.headLineStyle3.copyWith(color: Colors.black),
                ),
                Text(firstUnder, style: Styles.headLineStyle4),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  second,
                  style: Styles.headLineStyle3.copyWith(color: Colors.black),
                ),
                Text(secondUnder, style: Styles.headLineStyle4),
              ],
            ),
          ],
        )
      ]),
    );
  }
}
