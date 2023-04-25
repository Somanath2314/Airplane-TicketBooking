import 'package:airtickets/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppLayoutBuilder extends StatelessWidget {
  final bool? isColor;
  final int sections;
  const AppLayoutBuilder(
      {Key? key, required this.isColor, required this.sections})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
                ((constraints.constrainWidth() / sections).floor()),
                (index) => SizedBox(
                    width: 3,
                    height: 1,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: isColor == null
                              ? Colors.white
                              : Colors.grey.shade400),
                    ))));
      },
    );
  }
}
