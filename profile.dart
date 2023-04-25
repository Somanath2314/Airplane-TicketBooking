import 'package:airtickets/utils/app_styles.dart';
import 'package:airtickets/widgets/column_layout.dart';
import 'package:airtickets/widgets/view_all_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

class profileScrren extends StatelessWidget {
  const profileScrren({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/img_1.png"))),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Book Tickets", style: Styles.headLineStyle1),
                      SizedBox(
                        height: 2,
                      ),
                      Text("New-York",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade500)),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200),
                          color: const Color(0xFFFEF4F3),
                        ),
                        child: Row(
                          children: [
                            Container(
                                padding: EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: const Color(0xFFFEF4F3)),
                                child: Icon(
                                  Icons.shield_outlined,
                                  color: Colors.black,
                                  size: 20,
                                )),
                            SizedBox(
                              width: 0,
                            ),
                            Text("Premium status ",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF526799),
                                )),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(children: [
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'Edit',
                        style: Styles.textStyle.copyWith(
                            color: Styles.primaryColor,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ])
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Divider(color: Colors.grey.shade300),
              Stack(
                children: [
                  Container(
                    height: 90,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Styles.primaryColor,
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                  Positioned(
                      right: -45,
                      top: -40,
                      child: Container(
                          padding: EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 18,
                              color: Color(0xFF264CD2),
                            ),
                          ))),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    child: Row(children: [
                      CircleAvatar(
                        child: Icon(
                          FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                          color: Styles.primaryColor,
                          size: 27,
                        ),
                        maxRadius: 25,
                        backgroundColor: Colors.white,
                      ),
                      Column(children: [
                        Text(
                          "You\'v got a new reward",
                          style: Styles.headLineStyle2.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 22),
                        ),
                        Text(
                          "You have 95 flights in a year",
                          style: Styles.headLineStyle2.copyWith(
                              fontWeight: FontWeight.w500,
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 16),
                        )
                      ])
                    ]),
                  )
                ],
              )

              //yet to add
              ,
              SizedBox(
                height: 25,
              ),
              Text("Accumulated miles", style: Styles.headLineStyle2),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Styles.bgColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 1,
                          spreadRadius: 1,
                        )
                      ]),
                  child: Column(children: [
                    SizedBox(
                      height: 15,
                    ),
                    Text("192802",
                        style: TextStyle(
                          fontSize: 45,
                          color: Styles.textcolor,
                          fontWeight: FontWeight.w600,
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Miles accrued",
                              style:
                                  Styles.headLineStyle4.copyWith(fontSize: 16)),
                          Text("23 April 2023",
                              style:
                                  Styles.headLineStyle4.copyWith(fontSize: 16)),
                        ]),
                    SizedBox(
                      height: 5,
                    ),
                    columnLayout(
                      first: '23 042',
                      firstUnder: 'Miles',
                      second: 'Airline CO',
                      secondUnder: 'Received from',
                      iscolor: false,
                    ),
                    columnLayout(
                      first: '24',
                      firstUnder: 'Miles',
                      second: 'MCDonal\'s',
                      secondUnder: 'Received from',
                      iscolor: false,
                    ),
                    columnLayout(
                      first: '52 340',
                      firstUnder: 'Miles',
                      second: 'Exuma',
                      secondUnder: 'Received from',
                      iscolor: false,
                    ),
                  ])),
              SizedBox(height: 10),
              InkWell(
                onTap: () {},
                child: Center(
                  child: Text(
                    "How to get more miles",
                    style: Styles.textStyle.copyWith(
                        color: Styles.primaryColor,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(height: 20),
            ]));
  }
}
