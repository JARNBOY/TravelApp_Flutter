import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:travelapp_flutter/models/TravelSpot.dart';
import 'package:travelapp_flutter/models/User.dart';

import '../constants.dart';
import '../size_config.dart';

class PlaceCard extends StatelessWidget {
  const PlaceCard({
    Key key,
    @required this.travelspot,
    @required this.press,
    TravelSpot travelSport,
    this.isFullCard = false,
  }) : super(key: key);

  final TravelSpot travelspot;
  final bool isFullCard;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(isFullCard ? 158 : 137),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: isFullCard ? 1.09 : 1.29,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                image: DecorationImage(
                    image: AssetImage(travelspot.image), fit: BoxFit.cover),
              ),
            ),
          ),
          Container(
            width: getProportionateScreenWidth(isFullCard ? 158 : 137),
            padding:
                EdgeInsets.all(getProportionateScreenWidth(kDefaultPadding)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                color: Colors.white,
                boxShadow: [kDefualtShadow]),
            child: Column(
              children: [
                Text(
                  travelspot.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: isFullCard ? 17 : 12,
                      fontWeight: FontWeight.w600),
                ),
                if (isFullCard)
                  Text(
                    travelspot.date.day.toString(),
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                if (isFullCard)
                  Text(
                    DateFormat.MMMM().format(travelspot.date) +
                        " " +
                        travelspot.date.year.toString(),
                  ),
                VerticalSpacing(
                  of: 10,
                ),
                Travellers(
                  users: travelspot.users,
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
    @required this.users,
  }) : super(key: key);

  final List<User> users;

  @override
  Widget build(BuildContext context) {
    int totalUser = 0;
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenWidth(30),
      child: Stack(
        children: [
          ...List.generate(users.length, (index) {
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
        users[index].image,
        height: getProportionateScreenWidth(28),
        width: getProportionateScreenWidth(28),
        fit: BoxFit.cover,
      ),
    );
  }
}
