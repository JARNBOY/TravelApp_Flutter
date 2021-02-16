import 'package:flutter/material.dart';
import 'package:travelapp_flutter/components/place_card.dart';
import 'package:travelapp_flutter/components/section_title.dart';
import 'package:travelapp_flutter/models/TravelSpot.dart';
import 'package:travelapp_flutter/models/User.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class PopularPlaces extends StatelessWidget {
  const PopularPlaces({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "Right Now At Spark",
          press: () {},
        ),
        VerticalSpacing(
          of: 20,
        ),
        SingleChildScrollView(
          clipBehavior: Clip.none,
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                  travelSpots.length,
                  (index) => Padding(
                        padding:
                            EdgeInsets.all(getProportionateScreenWidth(20)),
                        child: PlaceCard(
                          travelspot: travelSpots[index],
                          press: () {},
                        ),
                      ))
            ],
          ),
        )
      ],
    );
  }
}
