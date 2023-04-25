import 'package:airtickets/utils/app_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs(
      {Key? key, required this.firstTab, required this.secondTab})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getsize(context);
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        child: Row(children: [
          //Airline Tickets
          Container(
              width: size.width * .44,
              padding: const EdgeInsets.symmetric(vertical: 7),
              child: Center(child: Text(firstTab)),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.horizontal(left: Radius.circular(50)),
                color: Colors.white,
              )),
          Container(
              width: size.width * .44,
              padding: const EdgeInsets.symmetric(vertical: 7),
              child: Center(child: Text(secondTab)),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.horizontal(left: Radius.circular(50)),
                color: Color(0xFFF4f6FD),
              )),

          //Hotels
        ]),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Color(0xFFF4F6FD),
        ),
      ),
    );
  }
}
