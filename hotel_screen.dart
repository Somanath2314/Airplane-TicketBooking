import 'package:airtickets/utils/app_layout.dart';
import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class HotelScreen extends StatelessWidget {
  Map<String, dynamic> hotel;
  HotelScreen({Key? key, required this.hotel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getsize(context);
    return Container(
        width: size.width * 0.6,
        height: 350,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
        margin: const EdgeInsets.only(right: 17, top: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Styles.primaryColor,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200,
                blurRadius: 20,
                spreadRadius: 10,
              ),
            ]),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              height: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Styles.primaryColor,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/${hotel['image']}')))),
          SizedBox(
            height: 20,
          ),
          Text(
            "${hotel['place']}",
            style: Styles.headLineStyle2.copyWith(
              color: Styles.kakiColor,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "${hotel['destination']}",
            style: Styles.headLineStyle3.copyWith(
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "\$${hotel['price']}/night",
            style: Styles.headLineStyle2.copyWith(
              color: Styles.kakiColor,
            ),
          )
        ]));
  }
}
