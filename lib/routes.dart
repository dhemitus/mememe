import 'package:flutter/material.dart';
import 'package:mememe/modules/modules.dart';

class Routes {
  static final Map<String, WidgetBuilder> screens = {
    FlipRoute.path: (BuildContext context) => const FlipScreen(),
    MemeRoute.path: (BuildContext context) => const MemeScreen(),
  };
}
