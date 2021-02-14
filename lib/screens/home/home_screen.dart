import 'package:flutter/material.dart';
import 'package:travelapp_flutter/constants.dart';

import 'components/body_home.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(),
      body: BodyHome(),
    );
  }

  AppBar homeAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          color: kIconColor,
        ),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: ClipOval(child: Image.asset("assets/images/profileImg.jpg")),
          onPressed: () {},
        )
      ],
    );
  }
}
