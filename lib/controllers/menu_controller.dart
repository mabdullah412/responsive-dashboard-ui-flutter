import 'package:flutter/material.dart';

class MenuController extends ChangeNotifier {
  final GlobalKey<ScaffoldState> _scaffolKey = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get scaffoldKey => _scaffolKey;

  void controlMenu() {
    if (!_scaffolKey.currentState!.isDrawerOpen) {
      _scaffolKey.currentState!.openDrawer();
    }
  }
}
