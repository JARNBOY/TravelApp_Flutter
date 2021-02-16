import 'package:flutter/material.dart';
import 'package:travelapp_flutter/components/section_title.dart';
import 'package:travelapp_flutter/constants.dart';
import 'package:travelapp_flutter/models/TravelSpot.dart';
import 'package:travelapp_flutter/models/User.dart';
import 'package:travelapp_flutter/screens/home/components/popular_places.dart';
import 'package:travelapp_flutter/screens/home/components/search_field.dart';
import 'package:travelapp_flutter/screens/home/components/top_traveller.dart';

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
          SizedBox(height: getProportionateScreenWidth(25)),
          VerticalSpacing(),
          PopularPlaces(),
          VerticalSpacing(),
          TopTraveller(),
          VerticalSpacing(),
        ],
      ),
    );
  }
}
