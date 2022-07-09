import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_dashboard_ui/constants.dart';
import 'package:responsive_dashboard_ui/controllers/menu_controller.dart';
import 'package:responsive_dashboard_ui/responsive.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            if (!Responsive.isDesktop(context))
              IconButton(
                onPressed: context.read<MenuController>().controlMenu,
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              ),
            if (!Responsive.isMobile(context))
              Text(
                'Dashboard',
                style: Theme.of(context).textTheme.headline6,
              ),
          ],
        ),

        // ! user card
        if (!Responsive.isMobile(context))
          // * user
          Container(
            padding: const EdgeInsets.all(12),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(3)),
              color: Colors.white12,
            ),
            child: Row(
              children: const [
                CircleAvatar(
                  radius: 15,
                  child: Icon(
                    Icons.person_outline,
                    size: 15,
                  ),
                ),
                SizedBox(width: defaultPadding),
                Text('Student name'),
                SizedBox(width: defaultPadding),
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                ),
              ],
            ),
          ),
      ],
    );
  }
}
