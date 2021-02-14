import 'package:flutter/material.dart';
import 'package:travelapp_flutter/constants.dart';
import 'package:travelapp_flutter/screens/home/components/search_field.dart';
import 'package:travelapp_flutter/size_config.dart';

import 'home_header.dart';

class BodyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      clipBehavior: Clip.none,
      child: Column(
        children: [
          HomeHeader(),
        ],
      ),
    );
  }
}
