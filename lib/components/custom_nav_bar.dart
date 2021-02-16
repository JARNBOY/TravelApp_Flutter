import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travelapp_flutter/screens/events/events_screen.dart';

import '../constants.dart';
import '../size_config.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(kDefaultPadding)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NavItem(
                title: "Events",
                icon: "assets/icons/calendar.svg",
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EventsScreen(),
                      ));
                },
              ),
              NavItem(
                title: "Chat",
                icon: "assets/icons/chat.svg",
                press: () {},
              ),
              NavItem(
                title: "Friend",
                icon: "assets/icons/friendship.svg",
                press: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  const NavItem({
    Key key,
    @required this.icon,
    @required this.title,
    this.isActive = false,
    @required this.press,
  }) : super(key: key);

  final String icon, title;
  final bool isActive;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(5),
        height: getProportionateScreenWidth(60),
        width: getProportionateScreenWidth(60),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if (isActive) kDefualtShadow]),
        child: Column(
          children: [
            SvgPicture.asset(
              icon,
              height: 28,
            ),
            Spacer(),
            Text(
              title,
              style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
