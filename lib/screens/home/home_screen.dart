import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travelapp_flutter/components/custom_nav_bar.dart';
import 'package:travelapp_flutter/constants.dart';
import 'package:travelapp_flutter/size_config.dart';

import 'components/body_home.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: homeAppBar(),
      body: BodyHome(),
      bottomNavigationBar: CustomNavBar(),
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
