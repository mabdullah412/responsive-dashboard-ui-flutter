import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controllers/menu_controller.dart';
import '../responsive.dart';
import 'components/side_menu.dart';
import 'dashboard_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ! key to controll the scaffold
      key: Provider.of<MenuController>(context).scaffoldKey,

      // ! drawer
      drawer: const SideMenu(),
      drawerEnableOpenDragGesture: Responsive.isMobile(context) ? true : false,

      // ! body
      body: SafeArea(
        child: Row(
          children: [
            // * side menu for desktop
            if (Responsive.isDesktop(context))
              const Expanded(
                // flex: 1, (default)
                child: SideMenu(),
              ),

            // * dashboard screen
            const Expanded(
              flex: 5,
              child: DashboardScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
