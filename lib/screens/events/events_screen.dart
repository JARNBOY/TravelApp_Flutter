import 'package:flutter/material.dart';
import 'package:travelapp_flutter/components/app_bar.dart';
import 'package:travelapp_flutter/components/custom_nav_bar.dart';

import 'components/body_events.dart';

class EventsScreen extends StatelessWidget {
  static String routeName = "/events";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: "New Events"),
      body: BodyEvents(),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
