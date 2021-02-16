import 'package:flutter/material.dart';
import 'package:travelapp_flutter/constants.dart';
import 'package:travelapp_flutter/models/TravelSpot.dart';
import 'package:travelapp_flutter/screens/home/components/search_field.dart';
import 'package:travelapp_flutter/screens/home/components/section_title.dart';
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
          SectionTitle(
            title: "Right Now At Spark",
            press: () {},
          ),
          SizedBox(
            width: getProportionateScreenWidth(137),
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 1.29,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      image: DecorationImage(
                          image: AssetImage(travelSpots[0].image),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Container(
                  width: getProportionateScreenWidth(137),
                  padding: EdgeInsets.all(
                      getProportionateScreenWidth(kDefaultPadding)),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      color: Colors.white,
                      boxShadow: [kDefualtShadow]),
                  child: Column(
                    children: [
                      Text(
                        travelSpots[0].name,
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w600),
                      ),
                      VerticalSpacing(
                        of: 10,
                      ),
                      Travellers()
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Travellers extends StatelessWidget {
  const Travellers({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int totalUser = 0;
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenWidth(30),
      child: Stack(
        children: [
          ...List.generate(travelSpots[0].users.length, (index) {
            totalUser++;
            return Positioned(
                left: (22 * index).toDouble(),
                child: buildTravellerFace(index));
          }),
          Positioned(
            left: (totalUser * 22).toDouble(),
            child: SizedBox(
              height: getProportionateScreenWidth(28),
              width: getProportionateScreenWidth(28),
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                padding: EdgeInsets.zero,
                color: kPrimaryColor,
                onPressed: () {},
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  ClipOval buildTravellerFace(int index) {
    return ClipOval(
      child: Image.asset(
        travelSpots[0].users[index].image,
        height: getProportionateScreenWidth(28),
        width: getProportionateScreenWidth(28),
        fit: BoxFit.cover,
      ),
    );
  }
}
