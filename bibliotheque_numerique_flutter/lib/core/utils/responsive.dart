import 'package:flutter/material.dart';

class Responsive {
  static const double breakpointTablette = 700;
  static const double breakpointDesktop = 1100;

  static bool estMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < breakpointTablette;

  static bool estTablette(BuildContext context) {
    final largeur = MediaQuery.of(context).size.width;
    return largeur >= breakpointTablette && largeur < breakpointDesktop;
  }


  static bool estDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= breakpointDesktop;
}