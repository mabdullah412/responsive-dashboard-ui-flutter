import 'package:flutter/material.dart';

import '../../constants.dart';

class SideMenuUserCard extends StatelessWidget {
  const SideMenuUserCard({
    Key? key,
  }) : super(key: key);

  final iconColor = Colors.white38;

  @override
  Widget build(BuildContext context) {
    return Column(
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
          'Student Name',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white54),
        ),
        const Divider(color: Colors.white12),
      ],
    );
  }
}
