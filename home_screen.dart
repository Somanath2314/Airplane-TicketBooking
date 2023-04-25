import 'package:airtickets/Screens/ticket_view.dart';
import 'package:airtickets/utils/app_info_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_styles.dart';
import 'hotel_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            // or use this  padding: const EdgeInsets.symmetric(horizontal:20),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Good morning",
                            style: Styles.headLineStyle3,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Book Tickets",
                            style: Styles.headLineStyle1,
                          ),
                        ]),
                    Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/img_1.png"))))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                //2nd Row
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xFFF4F6FD)),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  child: Row(
                    children: [
                      Icon(Icons.search, color: Color(0xFFBFC205)),
                      Text("Search", style: Styles.headLineStyle4)
                    ],
                  ),
                ),
                //3rd row
                //
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Upcoming Flights",
                      style: Styles.headLineStyle2,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text("View All",
                          style: Styles.textStyle
                              .copyWith(color: Styles.primaryColor)),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),

          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(right: 20),
              child: Row(
                  children: ticketList
                      .map((nticket) => TicketView(
                            tickets: nticket,
                            isColor: null,
                          ))
                      .toList())),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hotels",
                  style: Styles.headLineStyle2,
                ),
                InkWell(
                  onTap: () {},
                  child: Text("View All",
                      style: Styles.textStyle
                          .copyWith(color: Styles.primaryColor)),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                  children: hotelList
                      .map((nhotel) => HotelScreen(hotel: nhotel))
                      .toList())),

          //Yet to add things
        ],
      ),
    );
  }
}
