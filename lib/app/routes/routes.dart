import 'package:efinances/app/modules/home/home_module.dart';
import 'package:efinances/app/routes/routes_name.dart';
import 'package:flutter/material.dart';

class Routes {
  static Map<String, WidgetBuilder> all(BuildContext context) {
    return {
      HOME: (context) => HomeModule(),
    };
  }
}