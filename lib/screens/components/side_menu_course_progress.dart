import 'package:flutter/material.dart';

class SideMenuCourseProgress extends StatelessWidget {
  const SideMenuCourseProgress({
    Key? key,
  }) : super(key: key);

  final TextStyle courseStyle = const TextStyle(
    color: Colors.white30,
    fontSize: 14,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
