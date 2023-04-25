import 'package:airtickets/utils/app_styles.dart';
import 'package:airtickets/utils/text_tab.dart';
import 'package:airtickets/widgets/view_all_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../utils/app_layout.dart';
import '../widgets/icon_text.dart';

class searchScreen extends StatelessWidget {
  const searchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getsize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "What are\nyou looking for?",
              style: Styles.headLineStyle1.copyWith(fontSize: 35),
            ),
            SizedBox(
              height: 15,
            ),
            AppTicketTabs(firstTab: "Airline tickets", secondTab: "hotels"),
            SizedBox(
              height: 15,
            ),

            //Departure
            Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Row(children: [
                  Icon(Icons.flight_takeoff_rounded, color: Color(0xFFBFC2DF)),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Departure",
                    style: Styles.textStyle,
                  )
                ])),
            SizedBox(
              height: 15,
            ),
            //Arrival
            IconsText(icon: Icons.flight_land_rounded, text: "Arrival"),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xD91130CE),
              ),
              child: Center(
                child: Text(
                  "Find Tickets",
                  style: Styles.headLineStyle3.copyWith(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            viewAll(bigText: 'Upcoming Flight', smallText: 'View all'),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: 425,
                    width: size.width * .42,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200,
                            blurRadius: 1,
                            spreadRadius: 1,
                          )
                        ]),
                    child: Column(children: [
                      Container(
                          height: 190,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/images/sit.jpg")))),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "20% discount on the early booking of this flight.Don't miss this chance",
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.black),
                      ),
                    ])),
                Column(children: [
                  Stack(children: [
                    Container(
                      width: size.width * 0.44,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Color(0xFF3AB8B8),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Discount\nfor survey",
                                style: Styles.headLineStyle2.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                                "Take the survey about our services and grab discount",
                                style: Styles.headLineStyle2.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    fontSize: 18)),
                          ]),
                    ),
                    Positioned(
                      right: -45,
                      top: -40,
                      child: Container(
                          padding: EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border:
                                Border.all(width: 18, color: Color(0xFF189999)),
                            color: Colors.transparent,
                          )),
                    )
                  ]),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: size.width * 0.44,
                    height: 210,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Color(0xFFEC6545),
                    ),
                    child: Column(children: [
                      Text("Take love",
                          style: Styles.headLineStyle2.copyWith(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 15,
                      ),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(text: '😍', style: TextStyle(fontSize: 30)),
                        TextSpan(text: '🥰', style: TextStyle(fontSize: 32)),
                        TextSpan(text: '😘', style: TextStyle(fontSize: 30)),
                      ]))
                    ]),
                  )
                ])
              ],
            )
          ]),
    );
  }
}
