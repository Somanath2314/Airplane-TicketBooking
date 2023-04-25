import 'package:airtickets/Screens/home_screen.dart';
import 'package:airtickets/Screens/profile.dart';
import 'package:airtickets/Screens/search_screen.dart';
import 'package:airtickets/Screens/ticket_page.dart';
import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

class mm extends StatefulWidget {
  const mm({super.key});

  @override
  State<mm> createState() => _mmState();
}

class _mmState extends State<mm> {
  // This widget is the home page of your application. It is stateful, meaning
  @override
  int selectedIndex = 0;

  void tapping(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  static final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    searchScreen(),
    ticketspage(),
    profileScrren(),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar is used to get to the top bar of the page
      body: Center(child: _widgetOptions[selectedIndex]),
      //Body to use the contents for the body
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: tapping,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,

        //Remove above 2 lines to knwo the difference
        selectedItemColor: Colors.blueGrey,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: const Color(0xFF526480),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
              label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
              label: "Tickets"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
              label: "Profile"),
        ],
      ),
    );
  }
}
