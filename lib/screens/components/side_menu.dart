import 'package:flutter/material.dart';

import '../../constants.dart';
import 'side_menu_course_progress.dart';
import 'side_menu_navigation_buttons.dart';
import 'side_menu_user_card.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  final buttonStyle = const TextStyle(
    color: Colors.white30,
    fontSize: 14,
  );

  final iconColor = Colors.white38;

  final courseStyle = const TextStyle(
    color: Colors.white30,
    fontSize: 14,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: secondaryColor,
      width: 260,

      // ! child
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // ! site name
            Text(
              'Learn.io',
              style: Theme.of(context).textTheme.headline6,
            ),

            // ! sideMenu userCard
            const SideMenuUserCard(),

            // ! navigation buttons
            const SideMenuNavigationButtons(),

            // ! progress
            const SideMenuCourseProgress(),
          ],
        ),
      ),
    );
  }
}
