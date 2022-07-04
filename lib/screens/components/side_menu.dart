import 'package:flutter/material.dart';
import 'package:responsive_dashboard_ui/constants.dart';

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
            Column(
              children: [
                const Divider(color: Colors.white12),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white24,
                  child: Icon(
                    Icons.person_outline,
                    color: iconColor,
                  ),
                ),
                const SizedBox(height: defaultPadding),
                const Text(
                  'Muhammad Abdullah',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white54),
                ),
                const Divider(color: Colors.white12),
              ],
            ),

            // ! navigation buttons
            Column(
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
                  leading:
                      Icon(Icons.calendar_month_outlined, color: iconColor),
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
            ),

            // ! progress
            Column(
              children: [
                const Divider(color: Colors.white12),
                const ListTile(
                  title: Text(
                    'Progress',
                    style: TextStyle(color: Colors.white54),
                  ),
                  contentPadding: EdgeInsets.zero,
                ),
                ListTile(
                  title: Text(
                    'JavaScript   40 %',
                    style: courseStyle,
                  ),
                  subtitle: LinearProgressIndicator(
                    backgroundColor: Colors.grey[850],
                    color: Colors.white54,
                    value: 0.4,
                  ),
                  contentPadding: EdgeInsets.zero,
                ),
                ListTile(
                  title: Text(
                    'Flutter   70 %',
                    style: courseStyle,
                  ),
                  subtitle: LinearProgressIndicator(
                    backgroundColor: Colors.grey[850],
                    color: Colors.white54,
                    value: 0.7,
                  ),
                  contentPadding: EdgeInsets.zero,
                ),
                const Divider(color: Colors.white12),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
