import 'dart:js';

import 'package:flutter/widgets.dart';
import 'package:travelapp_flutter/screens/events/events_screen.dart';
import 'package:travelapp_flutter/screens/home/home_screen.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => HomeScreen(),
  EventsScreen.routeName: (context) => EventsScreen(),
};
