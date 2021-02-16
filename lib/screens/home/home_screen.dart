import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travelapp_flutter/components/app_bar.dart';
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
      appBar: buildAppBar(isTranparent: true),
      body: BodyHome(),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
