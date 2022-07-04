import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_dashboard_ui/controllers/menu_controller.dart';
import 'package:responsive_dashboard_ui/screens/dashboard_screen.dart';

import '../responsive.dart';
import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ! key to controll the scaffold
      key: Provider.of<MenuController>(context).scaffoldKey,

      // ! drawer
      drawer: const SideMenu(),

      // ! body
      body: Row(
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
    );
  }
}
