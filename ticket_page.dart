// ignore_for_file: prefer_const_constructors

import 'package:airtickets/Screens/ticket_view.dart';
import 'package:airtickets/main.dart';
import 'package:airtickets/utils/app_info_list.dart';
import 'package:airtickets/widgets/column_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:barcode_widget/barcode_widget.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';
import '../utils/text_tab.dart';
import '../widgets/layout_builder.dart';

class ticketspage extends StatelessWidget {
  const ticketspage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getsize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(children: [
        ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Tickets",
                style: Styles.headLineStyle1.copyWith(fontSize: 35),
              ),
              SizedBox(
                height: 15,
              ),
              AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
              SizedBox(
                height: 15,
              ),
              TicketView(tickets: ticketList[0], isColor: true),
              Container(
                margin: const EdgeInsets.only(left: 5, right: 5),
                decoration: BoxDecoration(color: Colors.white),
                padding: const EdgeInsets.only(
                    left: 16, top: 20, right: 16, bottom: 16),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Flutter Dash",
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.black),
                          ),
                          Text("Passenger", style: Styles.headLineStyle4),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "5221478566",
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.black),
                          ),
                          Text("Passport", style: Styles.headLineStyle4),
                        ],
                      ),
                    ],
                  )
                ]),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(color: Colors.white),
                child: SizedBox(
                  height: 24,
                  child: AppLayoutBuilder(isColor: false, sections: 15),
                ),
              ),
              columnLayout(
                first: '0055 444 77174',
                firstUnder: 'Number of E-ticket',
                second: 'B2SG28',
                secondUnder: 'Booking code',
                iscolor: null,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(color: Colors.white),
                child: SizedBox(
                  height: 24,
                  child: AppLayoutBuilder(isColor: false, sections: 15),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(color: Colors.white),
                padding: const EdgeInsets.only(
                    left: 16, top: 10, right: 16, bottom: 16),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: [
                            Image.asset(
                              "assets/images/visa.png",
                              scale: 11,
                            ),
                            Text(" *** 2462",
                                style: Styles.headLineStyle3
                                    .copyWith(color: Colors.black)),
                          ]),
                          Text("Payment method", style: Styles.headLineStyle4)
                        ],
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("\$249.99",
                                style: Styles.headLineStyle3
                                    .copyWith(color: Colors.black)),
                            Text("Price", style: Styles.headLineStyle4),
                          ]),
                    ]),
              ),
              SizedBox(
                height: 2,
              ),
              //Barcode
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(color: Colors.white),
                  padding: const EdgeInsets.only(
                      left: 16, top: 10, right: 16, bottom: 16),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: BarcodeWidget(
                      barcode: Barcode.code128(),
                      data: 'https://github.com/martinovovo',
                      drawText: false,
                      color: Styles.textcolor,
                      width: double.infinity,
                      height: 70,
                    ),
                  )),
              SizedBox(
                height: 15,
              ),
              //Last ticket view

              TicketView(tickets: ticketList[0], isColor: null),
            ]),
        Positioned(
          left: 15,
          top: 295,
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Styles.textcolor, width: 2),
            ),
            child: CircleAvatar(
              maxRadius: 5,
              backgroundColor: Styles.textcolor,
            ),
          ),
        ),
        Positioned(
          right: 15,
          top: 295,
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Styles.textcolor, width: 2),
            ),
            child: CircleAvatar(
              maxRadius: 5,
              backgroundColor: Styles.textcolor,
            ),
          ),
        ),
      ]),
    );
  }
}
