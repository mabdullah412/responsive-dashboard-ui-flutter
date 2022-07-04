import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  // ! constructor
  const Responsive({
    Key? key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  }) : super(key: key);

  // ! check if screen is mobile or not
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 576;

  // ! check if screen is tablet or not
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 576 &&
      MediaQuery.of(context).size.width <= 992;

  // ! check if screen is desktop or not
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width > 992;

  @override
  Widget build(BuildContext context) {
    // * get size of current screen
    final size = MediaQuery.of(context).size;

    if (size.width > 992) {
      return desktop;
    } else if (size.width >= 576) {
      return tablet;
    } else {
      return mobile;
    }
  }
}
