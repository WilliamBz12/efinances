import 'package:efinances/app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:efinances/app/modules/home/home_module.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'e-Finances',
      theme: ThemeData(
        primarySwatch: AppColors.primaryColor,
        accentColor: AppColors.acenntColor,
      ),
      home: HomeModule(),
    );
  }
}
