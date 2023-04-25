import 'package:airtickets/utils/app_layout.dart';
import 'package:airtickets/utils/app_styles.dart';
import 'package:airtickets/widgets/layout_builder.dart';
import 'package:airtickets/widgets/thick_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TicketView extends StatelessWidget {
  Map<String, dynamic> tickets;
  final bool? isColor;
  TicketView({Key? key, required this.tickets, required this.isColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getsize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: 172,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(children: [
          //This container is used to show the blue color/ticket
          Container(
            decoration: BoxDecoration(
                color: isColor == null ? Color(0xFF526799) : Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21))),
            padding: const EdgeInsets.all(16),
            child: Column(children: [
              Row(
                children: [
                  Text(tickets['from']['code'],
                      style: isColor == null
                          ? Styles.headLineStyle3.copyWith(color: Colors.white)
                          : Styles.headLineStyle3
                              .copyWith(color: Colors.black)),
                  Expanded(child: Container()),
                  ThickContainer(colr: isColor),
                  Expanded(
                      child: Stack(
                    children: [
                      SizedBox(
                        height: 24,
                        child: AppLayoutBuilder(isColor: null, sections: 6),
                      ),
                      Center(
                        child: Transform.rotate(
                          angle: 1.5,
                          child: Icon(
                            Icons.local_airport_rounded,
                            color: isColor == null
                                ? Colors.white
                                : Color(0xFF8ACCF7),
                          ),
                        ),
                      ),
                    ],
                  )),
                  ThickContainer(colr: isColor),
                  const Spacer(),
                  Text(tickets['to']['code'],
                      style: isColor == null
                          ? Styles.headLineStyle3.copyWith(color: Colors.white)
                          : Styles.headLineStyle3
                              .copyWith(color: Colors.black)),
                ],
              ),
              SizedBox(
                height: 3,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                SizedBox(
                  width: 100,
                  child: Text(
                    tickets['from']['name'],
                    style: isColor == null
                        ? Styles.headLineStyle4.copyWith(color: Colors.white)
                        : Styles.headLineStyle4,
                  ),
                ),
                Text(
                  tickets['flying_time'],
                  style: isColor == null
                      ? Styles.headLineStyle4.copyWith(color: Colors.white)
                      : Styles.headLineStyle4.copyWith(color: Colors.black),
                ),
                SizedBox(
                  width: 100,
                  child: Text(
                    tickets['to']['name'],
                    textAlign: TextAlign.end,
                    style: isColor == null
                        ? Styles.headLineStyle4.copyWith(color: Colors.white)
                        : Styles.headLineStyle4,
                  ),
                ),
              ])
            ]),
          ),
          //Now this container we are using to build orange color
          Container(
            color: isColor == null ? Styles.orangeColor : Colors.white,
            child: Row(
              children: [
                SizedBox(
                  height: 20,
                  width: 10,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: LayoutBuilder(
                    builder:
                        (BuildContext context, BoxConstraints constraints) {
                      return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(
                              ((constraints.constrainWidth() / 15).floor()),
                              (index) => SizedBox(
                                  width: 3,
                                  height: 1,
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: isColor == null
                                            ? Colors.white
                                            : Styles.bgColor),
                                  ))));
                    },
                  ),
                )),
                SizedBox(
                  height: 20,
                  width: 10,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          //We are using this container to get the bottom part of the container4
          Container(
              decoration: BoxDecoration(
                  color: isColor == null ? Styles.orangeColor : Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: isColor == null
                          ? Radius.circular(21)
                          : Radius.circular(0),
                      bottomRight: isColor == null
                          ? Radius.circular(21)
                          : Radius.circular(0))),
              padding: const EdgeInsets.only(
                  left: 16, top: 10, right: 16, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              tickets['date'],
                              style: Styles.headLineStyle3.copyWith(
                                  color: isColor == null
                                      ? Colors.white
                                      : Colors.black),
                            ),
                            Text(
                              "Date",
                              style: isColor == null
                                  ? Styles.headLineStyle4
                                      .copyWith(color: Colors.white)
                                  : Styles.headLineStyle4,
                            )
                          ]),

                      //1st may part over
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              tickets['departure_time'],
                              style: Styles.headLineStyle3.copyWith(
                                  color: isColor == null
                                      ? Colors.white
                                      : Colors.black),
                            ),
                            Text(
                              "Departure Time",
                              style: isColor == null
                                  ? Styles.headLineStyle4
                                      .copyWith(color: Colors.white)
                                  : Styles.headLineStyle4,
                            )
                          ]),
                      //23 Number over
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "${tickets['number']}",
                              style: Styles.headLineStyle3.copyWith(
                                  color: isColor == null
                                      ? Colors.white
                                      : Colors.black),
                            ),
                            Text(
                              "Number",
                              style: isColor == null
                                  ? Styles.headLineStyle4
                                      .copyWith(color: Colors.white)
                                  : Styles.headLineStyle4,
                            )
                          ])
                    ],
                  ),
                ],
              ))
        ]),
      ),
    );
  }
}
