import 'package:flutter/material.dart';
import 'package:responsive_dashboard_ui/constants.dart';

class SideMenuNavigationButtons extends StatelessWidget {
  const SideMenuNavigationButtons({
    Key? key,
  }) : super(key: key);

  final buttonStyle = const TextStyle(
    color: Colors.white30,
    fontSize: 14,
  );

  final iconColor = Colors.white38;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Divider(color: Colors.white12),
        ListTile(
          leading: Icon(Icons.dashboard_outlined, color: iconColor),
          title: Text('Dashboard', style: buttonStyle),
          contentPadding: EdgeInsets.zero,
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.explore_outlined, color: iconColor),
          title: Text('Explore', style: buttonStyle),
          contentPadding: EdgeInsets.zero,
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.calendar_month_outlined, color: iconColor),
          title: Text('Course Calender', style: buttonStyle),
          contentPadding: EdgeInsets.zero,
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.message_outlined, color: iconColor),
          title: Text('Messages', style: buttonStyle),
          contentPadding: EdgeInsets.zero,
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.settings_outlined, color: iconColor),
          title: Text('Settings', style: buttonStyle),
          contentPadding: EdgeInsets.zero,
          onTap: () {},
        ),
        const Divider(color: Colors.white12),
      ],
    );
  }
}
