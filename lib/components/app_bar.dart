import 'package:flutter/material.dart';

import '../constants.dart';

AppBar buildAppBar({bool isTranparent = false, String title}) {
  return AppBar(
    backgroundColor: isTranparent ? Colors.transparent : Colors.white,
    elevation: 0,
    title: Text(
      isTranparent ? "" : title,
      style: TextStyle(color: kTextColor, fontWeight: FontWeight.bold),
    ),
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
